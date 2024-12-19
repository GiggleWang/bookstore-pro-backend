package com.example.bookstore.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.example.bookstore.dao.BookDao;
import com.example.bookstore.entity.*;
import com.example.bookstore.repository.BookTagRepository;
import com.example.bookstore.repository.CommentRepository;
import com.example.bookstore.repository.UserRepository;
import com.example.bookstore.service.BookService;
import com.example.bookstore.service.BookTagService;
import com.example.bookstore.service.TagService;
import com.example.bookstore.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;
    @Autowired
    private CommentRepository commentRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private BookTagRepository bookTagRepository;
    @Autowired
    private TagService tagService;

    @Override
    public JSONObject searchBooks(String keyword, int pageIndex, int pageSize, String tag) {
        JSONObject res = new JSONObject();

        // Step 1: 初始化相关标签 ID 列表
        List<Long> relatedTagIds = new ArrayList<>();

        if (tag != null && !tag.isEmpty()) {
            // 如果 tag 不为空，尝试获取主标签 ID
            Optional<Long> tagIdOpt = bookTagRepository.findTagIdByName(tag);
            if (tagIdOpt.isEmpty()) {
                // 如果没有对应标签，返回空结果
                res.put("totalNumber", 0);
                res.put("totalPage", 0);
                res.put("items", new JSONArray());
                return res;
            }

            Long tagId = tagIdOpt.get();
            // 获取相关标签 ID 列表
            relatedTagIds = tagService.getRelatedTagIds(tagId);
        }

        // Step 2: 根据关键字和分页条件查询书籍
        Page<Book> bookPage = bookDao.findByKeyword(keyword, PageRequest.of(pageIndex, pageSize));
        res.put("totalNumber", bookPage.getTotalElements());
        res.put("totalPage", bookPage.getTotalPages());

        // Step 3: 构造返回的 JSON 数据
        JSONArray items = new JSONArray();
        for (Book book : bookPage) {
            List<Long> bookTagIds = bookTagRepository.findTagIdByBookId(book.getBookId());

            // 检查书籍的标签是否匹配（如果没有标签限制，直接通过）
            boolean matches = relatedTagIds.isEmpty() || bookTagIds.stream().anyMatch(relatedTagIds::contains);
            if (matches) {
                // 获取书籍的标签名称
                List<String> tagNames = bookTagIds.stream()
                        .map(tagIdValue -> bookTagRepository.findTagNameByTagId(tagIdValue)) // 根据 ID 查询名称
                        .filter(Optional::isPresent)                                        // 过滤不存在的标签
                        .map(Optional::get)                                                // 提取标签名称
                        .collect(Collectors.toList());
                // 构造书籍的 JSON 对象
                JSONObject bookJson = book.toJson();
                bookJson.put("tags", tagNames); // 添加标签名称列表到 JSON
                items.add(bookJson);
            }
        }

        res.put("items", items);
        return res;
    }

    @Override
    public JSONObject getBookInfo(long bookId) {
        Book book = bookDao.findById(bookId);
        if (book == null) {
            return null;
        }
        JSONObject bookJson = book.toJson();
        List<String> tagNames = bookTagRepository.findTagNamesByBookId(bookId);
        bookJson.put("tags", tagNames);
        return bookJson;
    }

    @Override
    public JSONObject getBookComments(
            long bookId, int pageIndex, int pageSize, String sort, long userId) {
        JSONObject res = new JSONObject();
        Page<Comment> commentPage =
                commentRepository.findByBook_BookIdOrderByCreatedAtDesc(
                        bookId, PageRequest.of(pageIndex, pageSize));
        res.put("totalNumber", commentPage.getTotalElements());
        res.put("totalPage", commentPage.getTotalPages());
        JSONArray items = new JSONArray();
        for (Comment comment : commentPage)
            items.add(comment.toJson(userRepository.findById(userId).get()));
        res.put("items", items);
        return res;
    }

    @Override
    public JSONObject postComment(long bookId, long userId, String content) {
        Book book = bookDao.findById(bookId);
        User user = userRepository.findById(userId).orElse(null);
        if (book == null) return Util.errorResponseJson("书籍不存在");
        if (user == null) return Util.errorResponseJson("用户不存在");
        book.getComments().add(new Comment(user, book, content));
        bookDao.save(book);
        return Util.successResponseJson("评论成功");
    }

    @Override
    public JSONObject setBookInfo(
            long bookId,
            String title,
            String author,
            String isbn,
            String cover,
            String description,
            int price,
            int sales,
            int repertory) {
        Book book = bookDao.findById(bookId);
        if (book == null) return Util.errorResponseJson("书籍不存在");
        book.setTitle(title);
        book.setAuthor(author);
        book.setIsbn(isbn);
        book.setCover(cover);
        book.setDescription(description);
        book.setPrice(price);
        book.setSales(sales);
        book.setRepertory(repertory);
        bookDao.save(book);
        return Util.successResponseJson("修改成功");
    }

    @Override
    public JSONObject addBook(
            String title,
            String author,
            String isbn,
            String cover,
            String description,
            int price,
            int sales,
            int repertory) {
        bookDao.save(new Book(title, author, isbn, cover, description, price, sales, repertory));
        return Util.successResponseJson("添加成功");
    }

    @Override
    public JSONObject deleteBook(long bookId) {
        Book book = bookDao.findById(bookId);
        if (book == null) return Util.errorResponseJson("书籍不存在");
        bookDao.delete(book);
        return Util.successResponseJson("删除成功");
    }

    @Override
    public BookSearchResult searchGraph(String title, int pageIndex, int pageSize, String tag) {
        JSONObject searchRes = this.searchBooks(title, pageIndex, pageSize, tag);

        // 获取分页信息和items数组
        Integer totalNumber = searchRes.getInteger("totalNumber");
        Integer totalPage = searchRes.getInteger("totalPage");
        JSONArray items = searchRes.getJSONArray("items");

        // 将 JSONArray 转换为 List<GraphBook>
        List<GraphBook> bookList = items.stream()
                .map(item -> {
                    JSONObject bookJson = (JSONObject) item;
                    return GraphBook.builder()
                            .bookId(bookJson.getInteger("id"))
                            .title(bookJson.getString("title"))
                            .author(bookJson.getString("author"))
                            .isbn(bookJson.getString("isbn"))
                            .cover(bookJson.getString("cover"))
                            .description(bookJson.getString("description"))
                            .price(bookJson.getInteger("price"))
                            .sales(bookJson.getInteger("sales"))
                            .repertory(bookJson.getInteger("repertory"))
                            .tags(bookJson.getJSONArray("tags").toJavaList(String.class))
                            .build();
                })
                .collect(Collectors.toList());

        // 构建并返回最终结果
        return BookSearchResult.builder()
                .totalNumber(totalNumber)
                .totalPage(totalPage)
                .items(bookList)
                .build();
    }
}

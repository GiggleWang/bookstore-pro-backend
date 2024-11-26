package org.backend.bookauthor.service.Impl;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import org.backend.bookauthor.entity.Book;
import org.backend.bookauthor.repository.BookRepository;
import org.backend.bookauthor.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookRepository bookRepository;

    public String getAuthorByTitle(String title) {
        Book book = bookRepository.findByTitle(title);
        System.out.println("get author by title "+title);
        return book != null ? book.getAuthor() : null; // 返回 null 如果书籍未找到
    }
}

package com.example.bookstore.dao.impl;

import com.alibaba.fastjson2.JSONObject;
import com.example.bookstore.dao.BookDao;
import com.example.bookstore.entity.Book;
import com.example.bookstore.entity.BookImage;
import com.example.bookstore.repository.BookImageRepository;
import com.example.bookstore.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class BookDaoImpl implements BookDao {
  private static boolean USE_REDIS = true;
  @Autowired private BookRepository bookRepository;
  @Autowired private RedisTemplate redisTemplate;
  @Autowired private BookImageRepository bookImageRepository;
  @Override
  public Book save(Book book) {
    Book savedBook = bookRepository.save(book);
    Optional<BookImage> existingBookImage = bookImageRepository.findByBookId(String.valueOf(book.getBookId()));
    if (existingBookImage.isPresent()) {
      bookImageRepository.deleteByBookId(String.valueOf(book.getBookId()));
    }
    BookImage bookImage = new BookImage();
    bookImage.setBookId(String.valueOf(book.getBookId()));
    bookImage.setImage_url(book.getCover());
    bookImageRepository.save(bookImage);

    if (USE_REDIS) {
      try {
        redisTemplate.opsForValue().set("book" + savedBook.getBookId(), JSONObject.toJSONString(savedBook));
        System.out.println("[BookDao::save] Book: " + savedBook.getBookId() + " is saved in Redis and Mysql");
      } catch (Exception e) {
        USE_REDIS = false;
        System.out.println("[BookDao::save] Redis is not active");
      }
    }
    return savedBook;
  }

  @Override
  public Book findById(long id) {
    Book book = null;
    String b = null;
    if (USE_REDIS) {
      try {
        b = (String) redisTemplate.opsForValue().get("book" + id);
      } catch (Exception e) {
        USE_REDIS = false;
        System.out.println("[BookDao::findById] Redis is not active");
      }
    }
    if (b == null) {
      book = bookRepository.findById(id).orElse(null);
      Optional<BookImage> bookImage = bookImageRepository.findByBookId(String.valueOf(id));
        if (book != null) {
          if(bookImage.isPresent()) {
            book.setCover(bookImage.get().getImage_url());
          }else{
            System.out.println("[BookDaoImpl-findById] mongodb error");
          }
        }
        if (USE_REDIS) {
        try {
          redisTemplate.opsForValue().set("book" + id, JSONObject.toJSONString(book));
        } catch (Exception e) {
          USE_REDIS = false;
          System.out.println("[BookDao::findById] Redis is not active");
        }
      }
      System.out.println("[BookDao::findById] Book: " + id + " is in MySQL");
    } else {
      book = JSONObject.parseObject(b, Book.class);
      System.out.println("[BookDao::findById] Book: " + id + " is in Redis");
    }
    return book;
  }

  @Override
  public void deleteById(long id) {
    bookRepository.deleteById(id);
    bookImageRepository.deleteByBookId(String.valueOf(id));
    if (USE_REDIS) {
      try {
        if (redisTemplate.delete("book" + id))
          System.out.println("[BookDao::deleteById] Book: " + id + " is deleted from Redis and Mysql");
        else System.out.println("[BookDao::deleteById] Book: " + id + " is not in Redis");
      } catch (Exception e) {
        USE_REDIS = false;
        System.out.println("[BookDao::deleteById] Redis is not active");
      }
    }
  }

  @Override
  public void delete(Book book) {
    deleteById(book.getBookId());
  }
  @Override
  public Page<Book> findByKeyword(String keyword, Pageable pageable) {
    Page<Book> books = bookRepository.findByTitleContainsOrAuthorContainsOrDescriptionContainsOrIsbnContains(
            keyword, keyword, keyword, keyword, pageable);
    books.forEach(book -> {
      Optional<BookImage> bookImage = bookImageRepository.findByBookId(String.valueOf(book.getBookId()));
      bookImage.ifPresent(image -> book.setCover(image.getImage_url()));
    });

    return books;
  }
}

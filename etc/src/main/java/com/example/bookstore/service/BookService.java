package com.example.bookstore.service;

import com.alibaba.fastjson2.JSONObject;
import com.example.bookstore.entity.BookPage;
import com.example.bookstore.entity.BookSearchResult;
import com.example.bookstore.entity.GraphBook;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface BookService {
  JSONObject searchBooks(String keyword, int pageIndex, int pageSize,String tag);

  JSONObject getBookInfo(long bookId);

  JSONObject getBookComments(long bookId, int pageIndex, int pageSize, String sort, long userId);

  JSONObject postComment(long bookId, long userId, String content);

  JSONObject setBookInfo(
      long bookId,
      String title,
      String author,
      String isbn,
      String cover,
      String description,
      int price,
      int sales,
      int repertory);

  JSONObject addBook(
      String title,
      String author,
      String isbn,
      String cover,
      String description,
      int price,
      int sales,
      int repertory);

  JSONObject deleteBook(long bookId);

  BookSearchResult searchGraph(String title, int pageIndex, int pageSize, String tag);
}

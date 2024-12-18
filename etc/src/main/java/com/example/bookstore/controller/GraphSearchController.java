package com.example.bookstore.controller;

import com.example.bookstore.entity.Book;
import com.example.bookstore.entity.BookSearchResult;
import com.example.bookstore.entity.GraphBook;
import com.example.bookstore.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.stereotype.Controller;
import org.springframework.graphql.data.method.annotation.SchemaMapping;

import java.util.List;

@Controller
public class GraphSearchController {
    @Autowired
    private BookService bookService;

    @SchemaMapping(typeName = "Query", field = "searchBookByTitle")
    public BookSearchResult searchBookByTitle(@Argument String keyword, @Argument int pageIndex, @Argument int pageSize, @Argument String tag) {
        System.out.println("Received GraphQL query with keyword: " + keyword);
        return bookService.searchGraph(keyword, pageIndex, pageSize, tag);
    }
}

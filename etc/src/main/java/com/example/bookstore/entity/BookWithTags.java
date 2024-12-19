package com.example.bookstore.entity;

import java.util.List;

public class BookWithTags {
    private Book book;
    private List<String> tags;
    
    public BookWithTags(Book book, List<String> tags) {
        this.book = book;
        this.tags = tags;
    }
    
    public Book getBook() {
        return book;
    }
    
    public List<String> getTags() {
        return tags;
    }
}
package com.example.bookstore.service;

import com.example.bookstore.repository.BookTagRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookTagService {

    private final BookTagRepository bookTagRepository;

    @Autowired
    public BookTagService(BookTagRepository bookTagRepository) {
        this.bookTagRepository = bookTagRepository;
    }

    public List<String> getTagsByBookId(Long bookId) {
        return bookTagRepository.findTagNamesByBookId(bookId);
    }
}

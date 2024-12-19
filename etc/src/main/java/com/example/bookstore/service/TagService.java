package com.example.bookstore.service;

import com.example.bookstore.repository.Neo4jTagRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagService {

    private final Neo4jTagRepository tagRepository;

    public TagService(Neo4jTagRepository tagRepository) {
        this.tagRepository = tagRepository;
    }

    public List<Long> getRelatedTagIds(Long tagId) {
        return tagRepository.findRelatedTagIds(tagId);
    }
}
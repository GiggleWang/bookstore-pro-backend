package com.example.bookstore.controller;

import com.example.bookstore.service.BookTagService;
import com.example.bookstore.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/books")
public class BookTagController {

    private final BookTagService bookTagService;
    private final TagService tagService;

    @Autowired
    public BookTagController(BookTagService bookTagService, TagService tagService) {
        this.bookTagService = bookTagService;
        this.tagService = tagService;
    }

    @GetMapping("/tags/{bookId}")
    public ResponseEntity<List<String>> getTagsByBookId(@PathVariable Long bookId) {
        List<String> tags = bookTagService.getTagsByBookId(bookId);
        if (tags.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(tags);
    }

    // 查询相关标签
    @GetMapping("/related-tags/{tagId}")
    public ResponseEntity<List<Long>> getRelatedTags(@PathVariable Long tagId) {
        List<Long> relatedTags = tagService.getRelatedTagIds(tagId);
        if (relatedTags.isEmpty()) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.ok(relatedTags);
    }

}

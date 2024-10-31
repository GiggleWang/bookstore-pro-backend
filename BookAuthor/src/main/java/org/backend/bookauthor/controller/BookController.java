package org.backend.bookauthor.controller;

import com.alibaba.fastjson2.JSONObject;
import org.backend.bookauthor.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/author")
//@CrossOrigin
public class BookController {
    @Autowired
    private BookService bookService;

    @GetMapping("/book")
    public String getAuthor(@RequestParam String title) {
        return bookService.getAuthorByTitle(title);
    }
}


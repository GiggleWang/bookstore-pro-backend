package org.backend.bookauthor.service;

import com.alibaba.fastjson2.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface BookService {
    public String getAuthorByTitle(String title);
}

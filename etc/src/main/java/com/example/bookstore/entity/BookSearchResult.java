package com.example.bookstore.entity;

import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class BookSearchResult {
    private Integer totalNumber;
    private Integer totalPage;
    private List<GraphBook> items;
}
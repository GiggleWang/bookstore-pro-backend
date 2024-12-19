package com.example.bookstore.entity;

import com.example.bookstore.entity.BookWithTags;

import java.util.List;

// 修改 BookPage 类
public class BookPage {
    private int totalNumber;
    private int totalPage;
    private List<BookWithTags> list;  // 改用 BookWithTags

    // getters and setters
    public int getTotalNumber() {
        return totalNumber;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public List<BookWithTags> getList() {
        return list;
    }

    public void setTotalNumber(int totalNumber) {
        this.totalNumber = totalNumber;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public void setList(List<BookWithTags> list) {
        this.list = list;
    }
}
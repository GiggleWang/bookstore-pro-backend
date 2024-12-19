package com.example.bookstore.entity;
public class SearchBooksInput {
    private String keyword;
    private int pageIndex;
    private int pageSize;
    private String tag;
    
    // Getters
    public String getKeyword() {
        return keyword;
    }
    
    public int getPageIndex() {
        return pageIndex;
    }
    
    public int getPageSize() {
        return pageSize;
    }
    
    public String getTag() {
        return tag;
    }
    
    // Setters
    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
    
    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }
    
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    
    public void setTag(String tag) {
        this.tag = tag;
    }
}
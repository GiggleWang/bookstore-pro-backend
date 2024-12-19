package com.example.bookstore.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Book_Tag")
public class BookTag {

    @EmbeddedId
    private BookTagId id;

    @ManyToOne
    @JoinColumn(name = "book_id", insertable = false, updatable = false)
    private Book book;

    @ManyToOne
    @JoinColumn(name = "tag_id", insertable = false, updatable = false)
    private Tag tag;

    // Default constructor
    public BookTag() {}

    // Getters and Setters
    public BookTagId getId() {
        return id;
    }

    public void setId(BookTagId id) {
        this.id = id;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Tag getTag() {
        return tag;
    }

    public void setTag(Tag tag) {
        this.tag = tag;
    }
}

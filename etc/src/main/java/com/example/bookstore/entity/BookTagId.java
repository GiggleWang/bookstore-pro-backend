package com.example.bookstore.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class BookTagId implements Serializable {

    @Column(name = "book_id")
    private Long bookId;

    @Column(name = "tag_id")
    private Long tagId;

    // Default constructor
    public BookTagId() {}

    // Parameterized constructor
    public BookTagId(Long bookId, Long tagId) {
        this.bookId = bookId;
        this.tagId = tagId;
    }

    // Getters and Setters
    public Long getBookId() {
        return bookId;
    }

    public void setBookId(Long bookId) {
        this.bookId = bookId;
    }

    public Long getTagId() {
        return tagId;
    }

    public void setTagId(Long tagId) {
        this.tagId = tagId;
    }

    // Equals and HashCode (important for composite key)
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        BookTagId that = (BookTagId) o;
        return Objects.equals(bookId, that.bookId) && Objects.equals(tagId, that.tagId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookId, tagId);
    }
}

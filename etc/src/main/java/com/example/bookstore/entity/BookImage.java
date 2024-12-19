package com.example.bookstore.entity;

import lombok.Getter;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Getter
@Setter
@Document(collection = "book")
public class BookImage {

    @Id
    private String _id;

    private String bookId;
    private String image_url;

}
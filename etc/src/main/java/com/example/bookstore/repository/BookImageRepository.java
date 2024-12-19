package com.example.bookstore.repository;

import com.example.bookstore.entity.BookImage;
import org.jetbrains.annotations.NotNull;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import java.util.Optional;

public interface BookImageRepository extends MongoRepository<BookImage, String> {

    // 根据书籍 ID 查询对应的图片信息
    @NotNull
    Optional<BookImage> findById(String id);

    // 查询方式改为基于 bookId
    @Query("{ 'bookId': ?0 }")
    Optional<BookImage> findByBookId(String bookId);

    void deleteByBookId(String bookId);

}
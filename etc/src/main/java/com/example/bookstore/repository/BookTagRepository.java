package com.example.bookstore.repository;

import com.example.bookstore.entity.BookTag;
import io.lettuce.core.dynamic.annotation.Param;

import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
@Primary
public interface BookTagRepository extends JpaRepository<BookTag, Long> {

    @Query(value = "SELECT t.name " +
                   "FROM Tag t " +
                   "JOIN Book_Tag bt ON t.tag_id = bt.tag_id " +
                   "WHERE bt.book_id = :bookId", nativeQuery = true)
    List<String> findTagNamesByBookId(@Param("bookId") Long bookId);

    @Query(value = "SELECT t.tag_id " +
            "FROM Tag t " +
            "JOIN Book_Tag bt ON t.tag_id = bt.tag_id " +
            "WHERE bt.book_id = :bookId", nativeQuery = true)
    List<Long> findTagIdByBookId(@Param("bookId") Long bookId);

    @Query(value = "SELECT t.name FROM Tag t WHERE t.tag_id = :tagId", nativeQuery = true)
    Optional<String> findTagNameByTagId(@Param("tagId") Long tagId);

    @Query(value = "SELECT t.tag_id FROM Tag t WHERE t.name = :tagName", nativeQuery = true)
    Optional<Long> findTagIdByName(@Param("tagName") String tagName);
}

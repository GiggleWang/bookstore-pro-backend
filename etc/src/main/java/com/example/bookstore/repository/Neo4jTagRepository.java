package com.example.bookstore.repository;

import com.example.bookstore.entity.Neo4jTag;
import com.example.bookstore.entity.Tag;
import io.lettuce.core.dynamic.annotation.Param;

import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.data.neo4j.repository.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface Neo4jTagRepository extends Neo4jRepository<Neo4jTag, Long> {

    @Query("MATCH (start:TAG {tag_id: $tagId})-[:SAME_CATEGORY|BELONGS_TO|RELATED_TO*1..2]-(related:TAG) " +
           "RETURN DISTINCT related.tag_id AS tagId")
    List<Long> findRelatedTagIds(@Param("tagId") Long tagId);

}
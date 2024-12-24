package com.example.bookstore;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

@SpringBootTest
@TestPropertySource(properties = "spring.websocket.enabled=false")
class BookStoreServerApplicationTests {

    @Test
    void contextLoads() {
    }

}

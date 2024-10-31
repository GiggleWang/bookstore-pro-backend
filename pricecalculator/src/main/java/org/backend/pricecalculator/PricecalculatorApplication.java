package org.backend.pricecalculator;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.function.BiFunction;

@SpringBootApplication
public class PricecalculatorApplication {

    public static void main(String[] args) {
        SpringApplication.run(PricecalculatorApplication.class, args);
    }
}

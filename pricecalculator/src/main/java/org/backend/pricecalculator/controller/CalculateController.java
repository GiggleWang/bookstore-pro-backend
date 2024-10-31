package org.backend.pricecalculator.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/calculate")
@CrossOrigin(origins = "http://localhost:3000")
public class CalculateController {
    @GetMapping("/order")
    public double calculate(
            @RequestParam double price,
            @RequestParam int quantity
    ) {
        System.out.println("Price: " + price);
        System.out.println("Quantity: " + quantity);
        return price * quantity;
    }
}
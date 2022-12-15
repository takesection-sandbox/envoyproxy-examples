package com.pigumer.demo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Root {

    @Value("${demo.message}")
    private String message;

    @GetMapping("/")
    public String handle() {
        return message;
    }
}

package com.doo.app.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin("http://localhost:4200")
@RestController
@RequestMapping("/api")
public class InitTest {

    @GetMapping("/test")
    public String testMethod() {
        return "DO. application is alive.";
    }
}

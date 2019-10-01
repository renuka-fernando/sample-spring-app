package com.mitrai.sample.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

    @RequestMapping("/{name}")
    public String hello(@PathVariable String name) {
        return String.format("Hello %s!", name);
    }
}

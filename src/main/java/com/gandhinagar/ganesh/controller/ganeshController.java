package com.gandhinagar.ganesh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ganeshController {

	@GetMapping("/")
    public String home() {
        return "home";
    }

}

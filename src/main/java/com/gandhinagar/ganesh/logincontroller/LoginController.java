package com.gandhinagar.ganesh.logincontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gandhinagar.ganesh.model.UserModel;
import com.gandhinagar.ganesh.userService.UserModelService;

@Controller
public class LoginController {

	@Autowired
    private UserModelService userService;

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        UserModel user = userService.login(username, password);
        if (user != null) {
            
            model.addAttribute("user", user);
            return "welcome"; 
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login"; 
        }
    }

}

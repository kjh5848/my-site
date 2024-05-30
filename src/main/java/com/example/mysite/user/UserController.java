package com.example.mysite.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/")
    public String index() {
        return "index"; // /WEB-INF/views/index.jsp 를 반환
    }
}

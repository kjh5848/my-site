package com.example.mysite.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/")
    public String index() {
        return "index"; // /WEB-INF/views/index.jsp 를 반환
    }

    @GetMapping("/write-form")
    public String writeForm() {
        return "write-form"; // "WEB-INF/views/write-form.jsp"로 포워딩
    }

    @GetMapping("/frofile-form")
    public String frofileForm() {
        return "frofile-form"; // "WEB-INF/views/write-form.jsp"로 포워딩
    }
}

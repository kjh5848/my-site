package com.example.mysite._core.handler;

import com.example.mysite._core.errors.exception.*;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@Slf4j
@ControllerAdvice // 비정상적일때 처리하는 응답 에러 컨트롤러 -> view(파일)를 리턴 -> @ResponseBody붙이면 됨
// @RestControllerAdvice : 응답을 직접 반환
// @Controller -> @ResponseBody붙이면 됨
public class MyExceptionHandler {

    @ExceptionHandler(Exception400.class)
    public String handleException400(Exception400 e, HttpServletRequest request){
        log.warn("400 Error - {} | URL: {} | IP: {} | User-Agent: {}",
                e.getMessage(), request.getRequestURL(), request.getRemoteAddr(), request.getHeader("User-Agent"));
        request.setAttribute("msg", e.getMessage());
        return "err/400";
    }

    @ExceptionHandler(Exception401.class)
    public String handleException401(Exception401 e, HttpServletRequest request){
        log.warn("401 Error - {} | URL: {} | IP: {} | User-Agent: {}",
                e.getMessage(), request.getRequestURL(), request.getRemoteAddr(), request.getHeader("User-Agent"));
        request.setAttribute("msg", e.getMessage());
        return "err/401";
    }

    @ExceptionHandler(Exception403.class)
    public String handleException403(RuntimeException e, HttpServletRequest request){
        log.warn("403 Error - {} | URL: {} | IP: {} | User-Agent: {}",
                e.getMessage(), request.getRequestURL(), request.getRemoteAddr(), request.getHeader("User-Agent"));
        request.setAttribute("msg", e.getMessage());
        return "err/403";
    }

    @ExceptionHandler(Exception404.class)
    public String handleException404(RuntimeException e, HttpServletRequest request){
        log.info("404 Error - {} | URL: {} | IP: {} | User-Agent: {}",
                e.getMessage(), request.getRequestURL(), request.getRemoteAddr(), request.getHeader("User-Agent"));
        request.setAttribute("msg", e.getMessage());
        return "err/404";
    }

    @ExceptionHandler(Exception500.class)
    public String handleException500(RuntimeException e, HttpServletRequest request){
        log.error("500 Error - {} | URL: {} | IP: {} | User-Agent: {}",
                e.getMessage(), request.getRequestURL(), request.getRemoteAddr(), request.getHeader("User-Agent"));
        log.error("Stack Trace: ", e); // 스택 트레이스를 로그에 추가
        request.setAttribute("msg", e.getMessage());
        return "err/500";
    }

    // 모든 예외에 대한 핸들러 추가 (Optional)
    @ExceptionHandler(Exception.class)
    public String handleGeneralException(Exception e, HttpServletRequest request) {
        log.error("General Error - {} | URL: {} | IP: {} | User-Agent: {}",
                e.getMessage(), request.getRequestURL(), request.getRemoteAddr(), request.getHeader("User-Agent"));
        log.error("Stack Trace: ", e); // 스택 트레이스를 로그에 추가
        request.setAttribute("msg", e.getMessage());
        return "err/general";
    }
}

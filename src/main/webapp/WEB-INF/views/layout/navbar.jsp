<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="/images/my_site.gif" alt="Avatar Logo" style="width:80px;" class="rounded-pill">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"><span
                class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#loginModal">로그인</a>
                    <!-- 로그인 모달 트리거 -->
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-bs-toggle="modal" data-bs-target="#signupModal">회원가입</a>
                    <!-- 회원가입 모달 트리거 -->
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/frofile-form">프로필</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/write-form">글쓰기</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
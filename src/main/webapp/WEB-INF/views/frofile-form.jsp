<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--헤더--%>
<%@ include file="layout/header.jsp" %>
<body>
<div class="grid-wrapper">
    <%--배너--%>
    <%@ include file="layout/banner.jsp" %>

    <%--네브 바--%>
    <%@ include file="layout/navbar.jsp" %>

    <%--로그인 모달--%>
    <%@ include file="components/oauth/login-modal.jsp" %>

    <%--회원가입 모달--%>
    <%@ include file="components/oauth/signup-modal.jsp" %>

    <div class="main-content container mt-5">
        <h2 class="mb-4">프로필</h2>
        <form>

            <!-- 프로필 사진 -->
            <div class="mb-3 text-center">
                <img src="/images/avatar1.png" alt="프로필 사진" class="img-thumbnail rounded-circle"
                     style="width: 150px; height: 150px;">
                <div class="mt-2">
                    <input class="form-control form-control-sm" type="file" id="profilePicture" aria-label="프로필 사진 업로드">
                </div>
            </div>

            <!-- 이름 -->
            <div class="mb-3">
                <label for="name" class="form-label">이름</label>
                <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요" value="김주혁">
            </div>

            <!-- 이메일 -->
            <div class="mb-3">
                <label for="email" class="form-label">이메일</label>
                <input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요" value="kim@example.com">
            </div>

            <!-- 비밀번호 -->
            <div class="mb-3">
                <label for="password" class="form-label">비밀번호</label>
                <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요">
            </div>

            <!-- 비밀번호 확인 -->
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">비밀번호 확인</label>
                <input type="password" class="form-control" id="confirmPassword" placeholder="비밀번호를 다시 입력하세요">
            </div>

            <!-- 버튼 -->
            <div class="btn-container d-flex justify-content-center">
                <button type="submit" class="btn btn-primary">저장</button>
                <button type="reset" class="btn btn-secondary ms-2">취소</button>
            </div>
        </form>
    </div>
    <%@ include file="layout/footer.jsp" %>
</div>


<%--푸터--%>
<script src="/dist/bundle.js"></script>
</body>

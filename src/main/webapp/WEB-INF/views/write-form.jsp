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
        <h2 class="mb-4">글쓰기</h2>
        <form>

            <!-- 제목 -->
            <div class="mb-3">
                <label for="title" class="form-label">제목</label>
                <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
            </div>

            <!-- 카테고리 -->
            <div class="mb-3">
                <label for="category" class="form-label">카테고리</label>
                <select class="form-select" id="category">
                    <option selected>카테고리를 선택하세요</option>
                    <option value="1">기술</option>
                    <option value="2">여행</option>
                    <option value="3">음식</option>
                    <option value="4">기타</option>
                </select>
            </div>

            <!-- 내용 -->
            <div class="mb-3">
                <label for="content" class="form-label">내용</label>
                <textarea class="form-control" id="content" rows="6" placeholder="내용을 입력하세요"></textarea>
            </div>

            <!-- 파일 업로드 -->
            <div class="mb-3">
                <label for="fileUpload" class="form-label">파일 업로드</label>
                <input class="form-control" type="file" id="fileUpload">
            </div>

            <!-- 버튼 -->
            <div class="btn-container d-flex justify-content-center">
                <button type="submit" class="btn btn-primary">저장</button>
                <button type="reset" class="btn btn-secondary ms-2">취소</button>
            </div>
        </form>
    </div>

    <%--푸터--%>
    <%@ include file="layout/footer.jsp" %>
</div>

<script src="/dist/bundle.js"></script>
</body>

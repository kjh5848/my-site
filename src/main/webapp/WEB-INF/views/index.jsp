<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%--헤더--%>
<%@ include file="layout/Header.jsp" %>

<body>

<div class="grid-wrapper">
    <div class="banner" style="background-image: url('./images/baner.jpg');">
        <h1>My Site!!</h1>
    </div>

<%--네브 바--%>
    <%@ include file="layout/NavBar.jsp" %>

<%--로그인 모달--%>
    <%@ include file="components/oauth/login-modal.jsp" %>

<%--회원가입 모달--%>
    <%@ include file="components/oauth/signup-modal.jsp" %>

<%--메인 카드박스--%>
    <%@ include file="components/card/main-card.jsp" %>

<%--푸터--%>
    <%@ include file="layout/footer.jsp" %>

</div>
<script  src="/dist/bundle.js"></script>
</body>

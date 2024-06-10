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
    <div class="mt-5">
        <%--메인 카드박스--%>
        <%@ include file="components/card/main-card.jsp" %>
        <%@ include file="components/card/main-card.jsp" %>
        <%@ include file="components/card/main-card.jsp" %>
        
    </div>


    <%--푸터--%>
    <%@ include file="layout/footer.jsp" %>

</div>
<script src="/dist/bundle.js"></script>
</body>

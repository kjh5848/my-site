<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="signupModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="signupModalLabel">회원가입</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="signupUsername" class="form-label">아이디</label>
                        <input type="text" class="form-control" id="signupUsername" placeholder="아이디를 입력하세요">
                    </div>
                    <div class="mb-3">
                        <label for="signupEmail" class="form-label">이메일 주소</label>
                        <input type="email" class="form-control" id="signupEmail" placeholder="이메일을 입력하세요">
                    </div>
                    <div class="mb-3">
                        <label for="signupPassword" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="signupPassword" placeholder="비밀번호를 입력하세요">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary ">회원가입</button>

                    </div>
                </form>
                <hr>
                <div class="d-flex justify-content-center">
                    <p>이미 계정이 있으신가요? <a href="#" id="showLoginModal">로그인</a></p> <!-- 로그인으로 전환 링크 -->
                </div>
            </div>
        </div>
    </div>
</div>
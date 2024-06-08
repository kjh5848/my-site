<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginModalLabel">로그인</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="email" class="form-label">이메일 주소</label>
                        <input type="email" class="form-control" id="email" placeholder="이메일을 입력하세요">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">비밀번호</label>
                        <input type="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요">
                    </div>
                    <div class="d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary ">로그인</button>
                    </div>
                </form>
                <hr>
                <div class="d-flex justify-content-center">
                    <p>계정이 없으신가요? <a href="#" id="showSignupModal">회원가입</a></p> <!-- 회원가입으로 전환 링크 -->
                </div>
            </div>
        </div>
    </div>
</div>
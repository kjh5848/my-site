
// 로그인 모달에서 회원가입 모달로 전환
document.getElementById('showSignupModal').addEventListener('click', function(event) {
    event.preventDefault();
    var loginModalElement = document.getElementById('loginModal');
    var signupModal = new bootstrap.Modal(document.getElementById('signupModal'));

    loginModalElement.addEventListener('hidden.bs.modal', function () {
        signupModal.show();
    }, { once: true });

    var loginModal = bootstrap.Modal.getInstance(loginModalElement);
    loginModal.hide();
});

// 회원가입 모달에서 로그인 모달로 전환
document.getElementById('showLoginModal').addEventListener('click', function(event) {
    event.preventDefault();
    var signupModalElement = document.getElementById('signupModal');
    var loginModal = new bootstrap.Modal(document.getElementById('loginModal'));

    signupModalElement.addEventListener('hidden.bs.modal', function () {
        loginModal.show();
    }, { once: true });

    var signupModal = bootstrap.Modal.getInstance(signupModalElement);
    signupModal.hide();
});
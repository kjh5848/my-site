(() => {
    var e = {
        394: (e, t, n) => {
            var o = n(647);
            o.keys().forEach(o)
        }, 559: () => {
            document.getElementById("showSignupModal").addEventListener("click", (function (e) {
                e.preventDefault();
                var t = document.getElementById("loginModal"),
                    n = new bootstrap.Modal(document.getElementById("signupModal"));
                t.addEventListener("hidden.bs.modal", (function () {
                    n.show()
                }), {once: !0}), bootstrap.Modal.getInstance(t).hide()
            })), document.getElementById("showLoginModal").addEventListener("click", (function (e) {
                e.preventDefault();
                var t = document.getElementById("signupModal"),
                    n = new bootstrap.Modal(document.getElementById("loginModal"));
                t.addEventListener("hidden.bs.modal", (function () {
                    n.show()
                }), {once: !0}), bootstrap.Modal.getInstance(t).hide()
            }))
        }, 647: (e, t, n) => {
            var o = {"./main.js": 394, "./modalHandlers.js": 559};

            function d(e) {
                var t = r(e);
                return n(t)
            }

            function r(e) {
                if (!n.o(o, e)) {
                    var t = new Error("Cannot find module '" + e + "'");
                    throw t.code = "MODULE_NOT_FOUND", t
                }
                return o[e]
            }

            d.keys = function () {
                return Object.keys(o)
            }, d.resolve = r, e.exports = d, d.id = 647
        }
    }, t = {};

    function n(o) {
        var d = t[o];
        if (void 0 !== d) return d.exports;
        var r = t[o] = {exports: {}};
        return e[o](r, r.exports, n), r.exports
    }

    n.o = (e, t) => Object.prototype.hasOwnProperty.call(e, t), n(394)
})();
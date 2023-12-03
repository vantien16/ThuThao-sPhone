<%-- 
    Document   : login
    Created on : Jun 28, 2023, 6:00:28 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <title>Login Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css_login/style.css">

    </head>
    <body class="img js-fullheight" style="background-image: url(images/bg.jpg);">
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6 text-center mb-5">
                        <h2 class="heading-section">Welcome</h2>
                    </div>
                </div>

                <div class="row justify-content-center">
                    <div class="col-md-6 col-lg-4">
                        <div class="login-wrap p-0">
                            <h3 class="mb-4 text-center">Have an account?</h3>
                            <form action="MainControl" method="post" class="signin-form">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="userID" placeholder="Username" required>
                                </div>
                                <div class="form-group">
                                    <input id="password-field" type="password" class="form-control" name="password" placeholder="Password" required>
                                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                </div>
                                <div id="error-message" style="color: white; text-align: center; margin-top: -5px; margin-bottom: 10px; <% if (request.getAttribute("errorMessage") != null) { %> display: block; <% } else { %> display: none; <% } %>">
                                    <% if (request.getAttribute("errorMessage") != null) {%>
                                    <%= request.getAttribute("errorMessage")%>
                                    <% }%>
                                </div>
                                <div class="form-group">
                                    <button style="opacity: 80%;" type="submit" name="action" value="Sign In" " class="form-control btn btn-primary submit px-3">Sign In</button>
                                </div>
                                <div class="form-group">
                                    <button style="background-color: white; opacity: 50%;" type="submit"  class="form-control btn btn-primary submit px-3" onclick="redirectToSignup()">Sign Up</button>
                                </div>

                                

                        </div>
                        </form>
                        <%-- Cookie[] cookies = request.getCookies();
                            if (cookies != null) {
                                for (Cookie cookie : cookies) {
                                    if (cookie.getName().equals("login")) {
                                        String username = cookie.getValue();
                                        if (username != null && !username.isEmpty()) {
                                            // Đã tồn tại cookie đăng nhập, chuyển hướng đến trang chính
                                            response.sendRedirect("home.jsp");
                                        }
                                        break;
                                    }
                                }
                            }
                        --%>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="js_login/jquery.min.js"></script>
    <script src="js_login/popper.js"></script>
    <script src="js_login/bootstrap.min.js"></script>
    <script src="js_login/main.js"></script>
    <script>
        function redirectToSignup() {
            window.location.href = 'signup.jsp';
        }
    </script>

</body>
</html>



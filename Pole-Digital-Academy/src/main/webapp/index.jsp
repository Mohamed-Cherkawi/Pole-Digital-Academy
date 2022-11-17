<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/svg.css" />
    <title>Login Page</title>
</head>

<body id="login-body" class="d-flex">
    <input type="hidden" id="error" value="<%= request.getAttribute("error") %>">
<div
        id="left-side-main-container"
        class="w-50 d-flex flex-column justify-content-evenly align-items-center"
>
    <h2 class="fw-bolder fs-1">Welcome Back!</h2>
    <form action="LoginServlet" method="post" id="form-container">
        <label for="username" class="__form_labels">Username</label>
        <input type="text" name="username" id="username" class="__inputs" />
        <label for="password" class="__form_labels mt-4">Password</label>
        <input type="password" name="password" id="password" class="__inputs" />
        <div id="help-container" class="mt-4 py-2">
            <input type="checkbox" name="keepLoged" id="checkbox" />
            <label for="checkbox" class="me-3">Keep me logged in</label>
            <a href="" class="text-white">Forgot Password?</a>
        </div>
        <div class="mt-5 text-center">
            <button type="submit">Login</button>
        </div>
    </form>
    <span class="mt-3" id="error-mess"></span>
</div>
<div
        id="right-side-main-container"
        class="w-50 p-5 text-center d-flex justify-content-around align-items-center"
>
<img src="assets/svg/svg.svg">
</div>
<script src="assets/js/login.js"></script>
</body>
</html>
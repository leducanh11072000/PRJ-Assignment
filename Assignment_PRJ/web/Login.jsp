<%-- 
    Document   : Login
    Created on : Nov 4, 2021, 1:14:24 AM
    Author     : 84984
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="Login/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="Login/assets/css/Google-Style-Login.css">
        <link rel="stylesheet" href="Login/assets/css/styles.css">
    </head>
    <body>
        <div class="login-card"><img class="profile-img-card" src="Login/assets/img/aldain-austria-316143-unsplash.jpgs">
            <p class="profile-name-card"> </p>
            <form  action="login" method="POST" class="form-signin" >
                <span class="reauth-email"> </span>
                <input name="user" class="form-control" type="text"  required="" placeholder="Email address" autofocus="">
                <input name="pass" class="form-control" type="password"  required="" placeholder="Password">
                <div
                    class="checkbox">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="formCheck-1">
                        <label class="form-check-label" for="formCheck-1">Remember me</label>
                    </div>
                </div>
                <button class="btn btn-primary btn-block btn-lg btn-signin" type="submit">Sign in</button>
            </form>
            <a class="forgot-password" href="#">Forgot your password?</a>
        </div>
        <script src="Login/assets/js/jquery.min.js"></script>
        <script src="Login/assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
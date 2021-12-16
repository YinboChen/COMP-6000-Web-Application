<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        Homework
    </title>
    <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="login.css">
</head>
<body>
<div class="page-wrap gradient-primary" style="background-image: linear-gradient(to bottom,#f5a700, #f5a700); background-color: #f5a700;">
    <div class="container" >
        <h1 class="logo"  style="margin-bottom:1px">
            <img src="ef.png" style="width:100px;height:100px;">
        </h1>
        <h1  style="color:#ffffff"> WebGame V1.0 </h1>
        <div class="content">
            <div class="panel" id="login">
                <h2 class="h3">
                    Sign In
                </h2>
                <form action="/" method="get" role="form">

                    <div class="form-group">
                        <label for="email">Email address</label>
                        <div class="input-icon icon-username"></div>
                        <input style="padding-left:8px" autofocus="true" class="form-control" id="email" name="email" placeholder="Email address" type="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <div class="input-icon icon-password"></div>
                        <input style="padding-left:8px" autocomplete="off" class="form-control password" id="password" name="password" placeholder="Password" type="password">
                    </div>
                    <button formaction="Servlet_Login" class="btn btn-primary btn-lg btn-block" href="/">Log In</button>
                </form>
                <a class="panel-footer" href="/signup/">New member? &nbsp;<span>Sign Up</span></a>
            </div>
            <!--<a href="https://www.google.com/login">Log in via google</a>
            <a style="margin-left: 25px">Forgot your password?</a>-->
        </div>
    </div>
</div>
</body>
</html>
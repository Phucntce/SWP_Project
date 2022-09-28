<%-- 
    Document   : SignUpUser
    Created on : Jul 4, 2022, 10:51:05 PM
    Author     : Vo Viet Nhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>User Sign Up</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script
        type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <link rel="icon" href="image/logo.png">
        <link href="css/style_signupUser.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <!-- //web font -->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="javascript.js"></script>    </head>
    <body>
        <!-- n -->
        <div class="main-w3layouts wrapper">
            <a href="firstpage.jsp"><img src="image/back_..png" alt="button back" style="position: relative; width: 50px; left: 1%;"></a>
            <h1><u>User Sign Up</u></h1>
            <div class="main-agileinfo">
                <p>${mess} ${mess1} ${mess2}</p>
                <div class="agileits-top">
                    <form action="userSignUpControl" method="post" name="myform" onsubmit="return Openform()">
                        <input class="text" type="text" name="fullName" placeholder="Name" required="">
                        <input class="text email" type="text" name="phone" placeholder="Number phone" required="" >
                        <input class="text email" type="text" name="citizen_identity_card" placeholder="Citizen identity card" required="">
                        <input class="text email" type="text" name="address" placeholder="Address" required="">
                        <input class="text email" type="text" name="mail" placeholder="Mail" required="">
                        <input class="text email" type="text" name="account" placeholder="Account" required="">
                        <input class="text w3lpass" type="password" name="password" placeholder="Password" required="">
                        <div class="wthree-text">
                            <label class="anim">
                                <input type="checkbox" class="checkbox" required="">
                                <span>I Agree To The Terms & Conditions</span>
                            </label>
                            <div class="clear"> </div>
                        </div>
                        <input type="submit" value="SIGNUP">
                    </form>
                    <p>You already have an Account? <a href="loginUser.jsp"> Login Now!</a></p>
                </div>
            </div>
            <!-- copyright -->
            <div class="colorlibcopy-agile">
                <p>© 2018 Libary Signup Form. </p>
            </div>
            <!-- //copyright -->
            <ul class="colorlib-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </body>
</html>
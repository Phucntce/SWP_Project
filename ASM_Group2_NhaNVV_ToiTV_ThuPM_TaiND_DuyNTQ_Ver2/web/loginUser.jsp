<%-- 
    Document   : loginUser
    Created on : Jul 4, 2022, 10:49:27 PM
    Author     : Vo Viet Nhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Login</title>
        <link rel="icon" href="image/logo.png">


        <link href="css/styleLoginUser.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="javascript.js"></script>

    </head>
    <body>
    <body id="particles-js"></body>
    <div class="animated bounceInDown">
        <a href="firstpage.jsp"><img src="image/back_..png" alt="button back" style="position: relative; width: 50px; left: 1%;"></a>
        <div class="container">
            <span class="error animated tada" id="msg"></span>
            <form name="form1" class="box" onsubmit="return checkStuff()" action="userLoginControl" method="get">
                <h4>User<span> Login</span></h4>

                <h5>Please enter your account.</h5>
                <div>
                    <p class="text-danger alert-danger" style="color:red;">${mess}</p>
                    <div/>
                    <input type="text" name="email" placeholder="Account" autocomplete="off">
                    <i class="typcn typcn-eye" id="eye"></i>
                    <input type="password" name="password" placeholder="Passsword" id="pwd" autocomplete="off">

                    <input type="submit" value="Sign in" class="btn1">
                    </form>
                    <a href="SignUpUser.jsp" class="dnthave">Don’t have an account? Sign up</a>
                </div>
                <div class="footer">
                    <span>Made with <i class="fa fa-heart pulse"></i> <a style="color: #dfdeee;"
                                                                         href="about.jsp">By Group 2</a></span>
                </div>

        </div>

    </body>

</html>

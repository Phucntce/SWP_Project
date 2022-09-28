<%-- 
    Document   : insertBook
    Created on : Jul 9, 2022, 3:50:59 PM
    Author     : Viet Nhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Update USER</title>
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
    <script src="javascript.js"> </script>    </head>
    <body>
    <!-- n -->
    <div class="main-w3layouts wrapper">
         <a href="UserDetail"><img src="image/back_..png" alt="button back" style="position: relative; width: 50px; left: 1%;"></a>
        <h1><u>Update User</u></h1>
        <div class="main-agileinfo">            
        <div class="container">
            <div class="agileits-top">
                <form action="UpdateUser" method="POST">
                    <input class="text email" name="id" placeholder="ID" required="" value="${user.id}" hidden="">                    
                    <input class="text email" type="text" name="username" placeholder="USERNAME" required="" value="${user.username}">
                    <input class="text email" type="text" name="password" placeholder="PASSWORD" required="" value="${user.password}">
                    <input class="text email" type="text" name="name" placeholder="FULL NAME" required="" value="${user.fullName}">
                    <input class="text email" type="text" name="phone" placeholder="PHONE" required="" value="${user.phone}">
                    <input class="text email" type="text" name="CMND" placeholder="IDENTITY CARD" required="" value="${user.citizen_identity_card}">
                    <input class="text email" type="text" name="address" placeholder="ADDRESS" required="" value="${user.address}">
                    <input class="text email" type="text" name="mail" placeholder="EMAIL" required="" value="${user.mail}">
                    
                    <input type="submit" value="UPDATE">
                </form>
                <p>View all User!!!<a href="UserDetail"> View</a></p>
            </div>
        <!-- //copyright -->
        <ul class="colorlib-bubbles">
            <li></li>
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
    <!-- //main -->    </body>
</html>

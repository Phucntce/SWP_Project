<%-- 
    Document   : firstPage
    Created on : Jul 4, 2022, 10:32:27 PM
    Author     : Vo Viet Nhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Choose Page</title>
        <link rel="icon" href="image/logo.png">

        <link href="cssbootstrap/bootstrap.min.css" rel="stylesheet">
        <link href="css/stylefirstpage.css" rel="stylesheet" id="bootstrap-css">
        <script src="jsbootstrap/Jquery.js"></script>
        <script src="jsbootstrap/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Arima:wght@200&family=Merriweather:ital,wght@1,300&family=Nunito:wght@300&family=Roboto+Condensed:wght@400;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    </head>
    <body>

        <div class="container">
            <div class="header">
                <header>
                    <a href="firstpage.jsp"><img class="logo" src="image/logo2.png" alt=""></a>
                    <p class="texthead">In books lies the soul of the whole past time</p>
                </header>
                <div class="contact">
                    <img class="contactt" src="image/call.png" alt=""> 
                    <div class="nbpp"><p class="nbp">0939765749</p></div>
                </div>

            </div>     
            <div class="body">
                <div class="login">
                    <div class="caunoi"><p class="caunoii">Login, register to use free services at FPT Library. We are committed to quality service.</p></div>
                    <div class="user">
                        <div class="thanh"></div>
                        <img class="picture" src="image/team.png" alt=""> <p class="usad">User</p>
                        <a href="loginUser.jsp"><div class="loginuser"> <p class="text">Login</p></div></a>
                        <a href="SignUpUser.jsp"><div class="signupuser"><p class="text">Sign Up</p></div></a>
                    </div>
                    <div class="admin">
                        <div class="thanh"></div>
                        <img class="picture" src="image/manager.png" alt=""> <p class="usad a">Admin</p>
                        <a href="LoginAdmin.jsp"><div class="loginadmin"><p class="text">Login</p></div></a>
                    </div>
                </div> 
            </div>    


            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" data-interval="5000">
                        <img src="image/book5.jpg" class="d-block w-100" alt="">
                    </div>
                    <div class="carousel-item" data-interval="3000">
                        <img src="image/book6.jpg" class="d-block w-100" alt="">
                    </div>
                    <div class="carousel-item" data-interval="3000">
                        <img src="image/book3.png" class="d-block w-100" alt="">
                    </div>
                    <div class="carousel-item" data-interval="3000">
                        <img src="image/book4.png" class="d-block w-100" alt="">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>

            </div>

            <div class="footer">
                <footer>
                    <p class="fot">
                        @ made by group 02
                    </p>
                </footer>
            </div>


        </div>


        <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    </body>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>



</html>
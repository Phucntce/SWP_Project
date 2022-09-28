<%-- 
    Document   : about
    Created on : Jul 7, 2022, 2:16:51 PM
    Author     : Vo Viet Nhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Member</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="fontawesome/css/all.min.css">
        <link rel="stylesheet" href="css/styleabout.css">
        <link rel="icon" href="img/logo.png">


    </head>
    <body>
        <!-- Page Loader -->
        <div id="loader-wrapper">
            <div id="loader"></div>

            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>


        
        <a href="#contact"> <img class="contact" src="img/call.png" alt=""></a>
        <a href="#lookingfor" > <img class="lookingfor" src="img/lookingfor.png" alt=""></a>

        <!-- Button Float Right Bottom Side -->

        <a href="cart"><img class="register" src="img/edit.png" alt=""><p class="register-1">  Register to borrow books</p> </a>


        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="home">
                    <img src="img/logo.png" alt="" class="fas fa-film mr-2" style="width: 50px; height:50px; ">
                    FPT Library
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                        <c:if test="${sessionScope.name==null}">
                            <li class="nav-item mx-2">
                                <a class="nav-link nav-link-1 ">Hello: Guest</a>
                            </li>
                        </c:if >
                        <c:if test="${sessionScope.name!=null}">
                            <li class="nav-item mx-2">
                                <a class="nav-link nav-link-1 ">Hello: ${name.fullName}</a>
                            </li>
                        </c:if >
                        <li class="nav-item">
                            <a class="nav-link nav-link-1" aria-current="page" href="home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link-2" href="print">Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link-3 active" href="about.jsp">About</a>
                        </li>
                        <c:if test="${sessionScope.name==null}">
                            <li class="nav-item mx-2">
                                <a href="firstpage.jsp" class="nav-link ps-2 cursor-pointer">
                                    Login
                                </a>
                            </li>
                        </c:if >
                        <c:if test="${sessionScope.name!=null}">
                            <li class="nav-item mx-2">
                                <a href="LogoutControl" class="nav-link ps-2 cursor-pointer">
                                    Logout
                                </a>
                            </li>
                        </c:if >
                    </ul>
                </div>
            </div>
        </nav>

        <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="img/Cover_page.jpg"></div>

        <div class="container-fluid tm-mt-60">
            <div class="row mb-4">
                <h2 class="col-12 tm-text-primary">
                    About FPT Library
                </h2>
            </div>
            <div class="row tm-mb-74 tm-row-1640">            
                <div class="col-lg-5 col-md-6 col-12 mb-3">
                    <img src="img/libraryCT.jpg" alt="Image" class="img-fluid" style="width: 500px; height: 300px;">
                </div>
                <div class="col-lg-7 col-md-6 col-12">
                    <div class="tm-about-img-text">
                        <p class="mb-4">
                            <b>FPT Library website</b> was established when implementing the PRJ291 subject project of <a href="https://cantho.fpt.edu.vn/thay-quach-luyl-da-khi-ta-theo-duoi-dam-me-thanh-cong-tu-khac-se-den"><b>Mr. Quach Luyl Da</b></a>. Project with a combination of three parts: Front-End(WED201), Back-End(PRO192), Database(DBI201). We had to work, create many hours to have a dynamic website like this.</p>
                        <p>
                            This is a brand new, online library website. We bring you a great experience. <b>We help you learn about books before you go to the actual library to borrow them</b>. The website helps you preview books, book appointments, and return books. Helping librarians manage books more easily and conveniently.</p> 
                        <p>
                            You can support our website by making a small donation via <b>Viettel Money</b>. This will be helpful to us. We hope you enjoy your experience using our website. We are upgrading to meet the needs of users.</p>
                    </div>                
                </div>
            </div>

            <!-- Row 1 -->

            <div class="row tm-mb-50">
                <div class="col-md-4 col-12" style="padding: 5px 10px 5px 10x;">
                    <div class="tm-about-3-col" id="founder-4"> 

                        <img src="img/Tai.jpg" id="img-resize">

                        <header>
                            <h3 class="name-founder">Nguyen Duc Tai 
                                <hr>
                                CE160859
                            </h3>
                        </header>

                    </div>       
                </div>
                <div class="col-md-4 col-12" style="padding: 5px 10px 5px 5px;">
                    <div class="tm-about-3-col" id="founder-5">  
                        <img src="img/Metor.jpg" id="img-resize">

                        <header>
                            <h3 class="name-founder">Quach Luyl Da
                                <hr>
                                Mentor
                            </h3>
                        </header>

                    </div>                
                </div>
                <div class="col-md-4 col-12" style="padding: 5px 10px 5px 0">
                    <div class="tm-about-3-col" id="founder-6"> 
                        <img src="img/Thu.jpg" id="img-resize">

                        <header>
                            <h3 class="name-founder">Pham Minh Thu
                                <hr>
                                CE160468
                            </h3>
                        </header>
                    </div>
                </div>

                <!-- Row 2 -->

                <div class="row tm-mb-50">
                    <div class="col-md-4 col-12" style="padding: 5px 10px 5px 10x;">
                        <div class="tm-about-3-col posi" id="founder-1"> 
                            <img src="img/Nhan.jpg" id="img-resize">
                            <header>
                                <h3 class="name-founder">Vo Viet Nhan 
                                    <hr>
                                    CE160937
                                </h3>
                            </header>

                        </div>       
                    </div>
                    <div class="col-md-4 col-12" style="padding: 5px 10px 5px 10x;">
                        <div class="tm-about-3-col" id="founder-2">  
                            <img src="img/ToiTV.jpg" id="img-resize">

                            <header>
                                <h3 class="name-founder">Tran Van Toi 
                                    <hr>
                                    CE160459
                                </h3>
                            </header>

                        </div>                
                    </div>
                    <div class="col-md-4 col-12" style="padding: 5px 10px 5px 10x;">
                        <div class="tm-about-3-col" id="founder-3"> 
                            <img src="img/duy.jpg" id="img-resize">

                            <header>
                                <h3 class="name-founder">Nguyen Thanh Quang Duy
                                    <hr>
                                    CE161080
                                </h3>
                            </header>
                        </div>
                    </div>
                </div>

                <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
                    <div class="container-fluid tm-container-small">
                        <div class="row">
                            <div class="col-lg-6 col-md-12 col-12 px-5 mb-5">
                                <h3 class="tm-text-primary mb-4 tm-footer-title">About FPT Library</h3>
                                <p><a rel="sponsored" href="https://v5.getbootstrap.com/">FPT</a> Officially established on September 8, 2006 under the Prime Minister's Decision, FPT University became the first university in Vietnam established by an enterprise with 100% investment capital from the Corporation.</p>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                                <h3 class="tm-text-primary mb-4 tm-footer-title" id="contact">Contact</h3>
                                <ul class="tm-footer-links pl-0">
                                    <li><a href="cart">Cart</a></li>
                                   
                                    <li><a href="about.jsp">About Us</a></li>
                                    <li><a href="#contact">Contact</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                                <ul class="tm-social-links d-flex justify-content-end pl-0 mb-5">
                                    <li class="mb-2"><a href="https://facebook.com"><i class="fab fa-facebook"></i></a></li>
                                    <li class="mb-2"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                                    <li class="mb-2"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                                    <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li>
                                </ul>
                                <a href="#" class="tm-text-gray text-right d-block mb-2">Terms of Use</a>
                                <a href="#" class="tm-text-gray text-right d-block">Privacy Policy</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8 col-md-7 col-12 px-5 mb-3">
                                Copyright 2022 FPT Company. All rights reserved .
                            </div>
                            <div class="col-lg-4 col-md-5 col-12 px-5 text-right">
                                Designed by <a href="https://templatemo.com" class="tm-text-gray" rel="sponsored" target="_parent">Taind and Group2</a>
                            </div>
                        </div>
                    </div>
                </footer>

                <script src="js/plugins.js"></script>
                <script>
                    $(window).on("load", function () {
                        $('body').addClass('loaded');
                    });
                </script>
                </body>
                </html>
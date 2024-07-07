<%-- 
    Document   : Header_After_Login
    Created on : Mar 13, 2024, 9:57:46 PM
    Author     : Han
--%>

<%@page import="model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Lux Travel Stay</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap"
              rel="stylesheet">
        <link
            href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i&display=swap"
            rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div class="wrap">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col d-flex align-items-center">
                        <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0827516007</a> or <span
                                class="mailus">email us:</span> <a href="#">linhvkde170144@fpt.edu.vn</a></p>
                    </div>
                    <div class="col d-flex justify-content-end">
                        <div class="social-media">
                            <p class="mb-0 d-flex">
                                <a href="#" class="d-flex align-items-center justify-content-center"><span
                                        class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span
                                        class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span
                                        class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span
                                        class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">
                    <img src="./images/z5196392821072_c057dacc5497960daf2fad2b9c1506fa.jpg" alt="">
                    LUX TRAVEL STAY</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fa fa-bars"></span> Menu
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="rooms.jsp" class="nav-link">Khách sạn cho bạn</a></li>
                        <li class="nav-item"><a href="upHotel.jsp" class="nav-link">Đăng ký chỗ nghỉ</a></li>
                            <% if (session != null && session.getAttribute("user") != null) {
                                    Customer user = (Customer) session.getAttribute("user");
                            %>
                        <li class="nav-item"><a href="profile" class="nav-link">Chào, <%= user.getCusName()%></a></li>
                        <li class="nav-item"><a href="logout" class="nav-link">Đăng Xuất</a></li>
                            <% } else { %>
                        <li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Ký/ Đăng ký</a></li>
                            <% }%>                    
                    </ul>
                </div>
            </div>
        </nav>
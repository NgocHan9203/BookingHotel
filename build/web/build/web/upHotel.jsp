<%-- 
    Document   : upHotel
    Created on : Feb 27, 2024, 4:29:53 PM
    Author     : Han
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Vacation Rental - Free Bootstrap 4 Template by Colorlib</title>
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
         <style>
            #container_1 {
                max-width: 800px;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 4px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            .form-group label {
                font-weight: bold;
                margin-bottom: 5px;
            }
            .form-group input, .form-group textarea {
                border-radius: 4px;
                border: 1px solid #ccc;
                padding: 10px;
                width: 100%;
                box-sizing: border-box;
            }
            .form-group textarea {
                resize: vertical;
            }
            .form-group button {
                background-color: #007bff;
                border: none;
                border-radius: 4px;
                color: #fff;
                padding: 10px 20px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            .form-group button:hover {
                background-color: #0069d9;
            }
            .form-group .submitting {
                display: none;
            }
            .form-group.submitting .btn {
                pointer-events: none;
                opacity: 0.5;
            }
            .form-group.submitting .submitting-text {
                display: block;
            }
            .form-group.success .submitting-text {
                color: green;
            }
            .form-group.error .submitting-text {
                color: red;
            }
            .form-group.success .btn {
                background-color: green;
            }
            .form-group.error .btn {
                background-color: red;
            }
            .form-group.success .submitting-text,
            .form-group.error .submitting-text {
                display: none;
            }
            .form-group.success .submitting,
            .form-group.error .submitting {
                display: block;
            }
            #room_fields {
                margin-top: 20px;
            }
            #room_fields table {
                border-collapse: collapse;
                width: 100%;
            }
            #room_fields table td, #room_fields table th {
                border: 1px solid #ddd;
                padding: 8px;
            }
            #room_fields table tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            #room_fields table th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>

    <body>
        <div class="wrap">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col d-flex align-items-center">
                        <p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">+00 1234 567</a> or <span
                                class="mailus">email us:</span> <a href="#">emailsample@email.com</a></p>
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
                        <li class="nav-item"><a href="rooms.jsp" class="nav-link">Apartment Room</a></li>
                        <li class="nav-item"><a href="upHotel.jsp" class="nav-link">Đăng ký chỗ nghỉ</a></li>
                        <li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Ký/Đăng nhập</a></li>
                        <!--					<li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Nhập</a></li>-->
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i
                                        class="fa fa-chevron-right"></i></a></span> <span>Đăng chỗ nghỉ <i
                                    class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Đăng chỗ nghỉ của bạn</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light">
            <div class="container" id="container_1">
                <div class="col-md-12">
                    <div class="wrapper">
                        <div class="row no-gutters">
                            <div class="d-flex align-items-stretch">
                                <div class="contact-wrap w-100 p-md-5 p-4">
                                    <h3 class="mb-4">Thông tin khách sạn</h3>
                                    <div id="form-message-warning" class="mb-4"></div>
                                    <div id="form-message-success" class="mb-4">
                                        Cảm ơn vì đẫ tin tưởng và lựa chọn chúng tôi!
                                    </div>
                                    <form  action="add" method="POST" id="contactForm" name="contactForm" class="contactForm" enctype="multipart/form-data" >
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="label" for="hotel_name">Hotel Name</label>
                                                    <input type="text" class="form-control" name="hotelName" id="hotel_name" placeholder="Hotel name">
                                                </div>
                                                    <div class="form-group">
                                                        <label class="label" for="anh">Image</label><br>
                                                        <input type="file" id="anh" name="anh" accept="image/*"><br><br>
                                                    </div>
                                                <div class="form-group">
                                                    <label class="label" for="hotel_addr">Address</label>
                                                    <input type="text" class="form-control" name="address" id="hotel_addr" placeholder="Hotel address">
                                                </div>
                                                <div class="form-group">
                                                    <label class="label" for="city">City</label>
                                                    <input type="text" class="form-control" name="city" id="city" placeholder="City">
                                                </div>
                                                <div class="form-group">
                                                    <label class="label" for="introduction">Introduction</label>
                                                    <textarea name="introduction" class="form-control" id="introduction" cols="30" rows="4" placeholder="Introduction"></textarea>

                                                    <div class="form-group">
                                                        <input type="submit" value="Send " class="btn btn-primary">
                                                    </div>
                                                </div>
                                            </div>

                                </div>
                                    </form>   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    <%@include file="/include/Footer.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %> 

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i
                                        class="fa fa-chevron-right"></i></a></span> <span>Đăng chỗ nghỉ <i
                                    class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Edit your hotel</h1>
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
                                        Thoải mái đi fen!
                                    </div>
                                    <form  action="edit" method="POST">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="hidden" class="form-control" name="hotelID" id="hotel_name" value="${hotel.getHotelID()}">
                                                </div>
                                                <div class="form-group">
                                                    <label class="label" for="hotel_name">Hotel Name</label>
                                                    <input type="text" class="form-control" name="hotelName" id="hotel_name" value="${hotel.getHotelName()}">
                                                </div>
                                                <div class="form-group">
                                                    <label class="label" for="hotel_addr">Address</label>
                                                    <input type="text" class="form-control" name="address" id="hotel_addr" value="${hotel.getHotelAddress()}">
                                                </div>
                                                <div class="form-group">
                                                    <label class="label" for="city">City</label>
                                                    <input type="text" class="form-control" name="city" id="city" value="${hotell.getHotelCity()}">
                                                </div>
                                                <div class="form-group">
                                                    <label class="label" for="introduction">Introduction</label>
                                                    <textarea name="introduction" class="form-control" id="introduction" cols="30" rows="4" placeholder="Introduction">${hotel.getIntroduction()}</textarea>
                                                </div>
                                                <div class="form-group">
                                                    <input type="submit" value="Send " class="btn btn-primary">
                                                </div>
                                            </div>
                                        </div>
                                                                                </form>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>

        <%@include file="/include/Footer.jsp" %>
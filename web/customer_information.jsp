<%-- 
    Document   : customer_information
    Created on : Feb 27, 2024, 3:26:03 PM
    Author     : Han
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>

        <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');"
             data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">

            </div>
        </div>

        <section class="ftco-section ftco-book ftco-no-pt ftco-no-pb">
            <div class="container">
                <div class="row justify-content-end">
                    <div class="">
                        <form action="#" class="appointment-form">
                            <h3 class="mb-3">Customer Information</h3>
                            <div class="row">

                                <div class="col-md-9">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Fullname"></input>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <select type="text" class="form-control">
                                            <option value="nam">MALE</option>
                                            <option value="nu">FEMALE</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <select type="text" class="form-control">

                                            <option value="">Hà Nội</option>
                                            <option value="">Đà Nẵng</option>
                                            <option value="">Sài Gòn</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="input-wrap">
                                            <div class="icon"><span class="ion-md-calendar"></span></div>
                                            <input type="text" class="form-control appointment_date-check-in"
                                                   placeholder="Gmaill">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="input-wrap">
                                            <div class="icon"><span class="ion-md-calendar"></span></div>
                                            <input type="phone" class="form-control appointment_date-check-out"
                                                   placeholder="phone">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="form-group">

                                        <a href="./booking_information.jsp" class="btn btn-primary py-3 px-4" type="submit">NEXT STEP</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

<%@include file="/include/Footer.jsp" %>
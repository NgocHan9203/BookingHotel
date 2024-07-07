<%-- 
    Document   : booking_information
    Created on : Feb 27, 2024, 3:32:47 PM
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
                            <h3 class="mb-3">BOOKING Information</h3>
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Name of Hotel"></input>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="form-group">Date check-in
                                        <input type="date" class="form-control" placeholder="Date check-in">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">Date check-out
                                        <input type="date" class="form-control" placeholder="Date check-out">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p>Bạn đã họn 2 phòng Suite Room và 2 phòng Deluxe Room. </p>
                                </div>


                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="" id="" class="form-control">
                                                    <option value="">Adults</option>
                                                    <option value="">1</option>
                                                    <option value="">2</option>
                                                    <option value="">3</option>
                                                    <option value="">4</option>
                                                    <option value="">5</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="" id="" class="form-control">
                                                    <option value="">Children</option>
                                                    <option value="">1</option>
                                                    <option value="">2</option>
                                                    <option value="">3</option>
                                                    <option value="">4</option>
                                                    <option value="">5</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-12">
                                    <div class="form-group">

                                        <a href="./booking_service.jsp" class="btn btn-primary py-3 px-4" type="submit">NEXT STEP</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>



<%@include file="/include/Footer.jsp" %>

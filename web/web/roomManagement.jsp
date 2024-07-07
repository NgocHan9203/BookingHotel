<%-- 
    Document   : hotelManagement
    Created on : Mar 9, 2024, 1:08:18 PM
    Author     : Văn Phú
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Rooms <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">List Room</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light ftco-no-pt ftco-no-pb">
            <div class="container-fluid px-md-0 raw">
                <div class="mt-5 col-1 row">


                    <div class="col-12  w-100">
                        <div class="">
                            <div class="form-group">

                                <a href="#" class="btn btn-primary py-3 px-4 mr-2" type="submit">Add Room</a>
                            </div>
                        </div>
                    </div>




                </div>
                <div class="right col-11">
                    <div class="ks1 row">

                        <div class="room-wrap d-md-flex col-11">
                            <img class="card-img-top img" src="./images/about.jpg" alt="Card image cap">
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
                                    <!--                                    <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p>-->
                                    <h3 class="mb-3"><a href="rooms.jsp">?ertcybjkml
                                        </a></h3>
                                    <ul class="list-accomodation">

                                        <li>abc</li>
                                        <li>123</li>
                                        <li>?esrtyui</li>

                                        <!--                                        <li><span>Bed:</span> 1</li>
                                                                                <li><span>Max:</span> 3 Persons</li>-->
                                    </ul>
                                    <p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
                                </div>
                            </div>
                        </div>
                        <div class="col-1 mt-5">
                            <div class="form-group">

                                <a href="./rooms.html" class="btn btn-primary py-3 px-4" type="submit">edit</a>
                            </div>
                            <div class="form-group">

                                <a href="./rooms.html" class="btn btn-primary py-3 px-4" type="submit">delete</a>
                            </div>
                        </div>


                    </div>
                </div>
        </section>


<%@include file="/include/Footer.jsp" %>
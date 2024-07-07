<%-- 
    Document   : rooms
    Created on : Feb 27, 2024, 3:31:40 PM
    Author     : Han
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>

              <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Rooms <i class="fa fa-chevron-right"></i></span></p>
                <h1 class="mb-0 bread"><%= request.getAttribute("selectedCity") %></h1>
            </div>
        </div>
    </div>
</section>

        <section class="ftco-section bg-light ftco-no-pt ftco-no-pb">
            <div class="container-fluid px-md-0 raw">
                              <div class="right col-12">
                    <div class="ks1">
                        <c:forEach items="${dataHotel}" var="c">
                            <div class="room-wrap d-md-flex">
                                <img class="card-img-top img" src="${c.getHotelimg()}" alt="Card image cap">
                                <div class="half left-arrow d-flex align-items-center">
                                    <div class="text p-4 p-xl-5 text-center">
                                        <p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
                                        <!--                                    <p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p>-->
                                        <h3 class="mb-3"><a href="rooms.jsp"> ${c.getHotelName()}
                                            </a></h3>
                                        <ul class="list-accomodation">
<!--                                            <li>${c.getHotelID()}</li>-->
                                            <li>${c.getHotelAddress()}</li>
                                            <li>${c.getCity()}</li>
                                            <li>${c.getIntroduction()}</li>

                                            <!--                                        <li><span>Bed:</span> 1</li>
                                                                                    <li><span>Max:</span> 3 Persons</li>-->
                                        </ul>
                                        <p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
        </section>

<%@include file="/include/Footer.jsp" %>

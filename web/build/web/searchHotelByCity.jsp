<%@page import="model.RoomType"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Rooms <i class="fa fa-chevron-right"></i></span></p>
                <h1 class="mb-0 bread"><%= request.getAttribute("selectedCity")%></h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light ftco-no-pt ftco-no-pb">
    <div class="container-fluid px-md-0 raw">
        <div class="left col-3">

            <div class="price">
                <h5>Thành Phố</h5>
                <ul>

                    <c:forEach items="${dataCity}" var="c">
                        <li class="list-group-item"> 

                            <a href="city" class="item-link btn-custom px-3 py-2" name="${c}">${c}</a>
                        </li>

                    </c:forEach>

                </ul>
            </div>



        </div>
        </section>
              <section class="ftco-section bg-light ftco-no-pt ftco-no-pb">
            <div class="container-fluid px-md-0">
                <div class="row no-gutters">
                    <div class="col-lg-12">
                        <% List<RoomType> rL = (List<RoomType>) request.getAttribute("dataRoomType");
                            if (rL != null && !rL.isEmpty()) {

                        %>
                        <c:forEach items="${dataRoomType}" var="c">
                            <div class="room-wrap d-md-flex">
                                <img class="card-img-top img" src="${c.getRoomTypeImg()}" alt="Card image cap">
                                <div class="half left-arrow d-flex align-items-center">
                                    <div class="text p-4 p-xl-5 text-center">
                                        <p class="mb-0"><span class="price mr-1">$ ${c.getPrice()}</span></p>
                                        <h3 class="mb-3"><a>${c.getRoomTypeName()}</a></h3>
                                        <ul class="list-accomodation">
                                            <li>Max adults: ${c.getAdults()}</li>
                                            <li>Max children: ${c.getChildren()}</li>
                                            <li>Area: ${c.getArea()}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                        <% } else %><h1>null</h1>
                    </div>

                    <div class="booking" style="width: 100%; text-align:center;"><a href="./customer_information.jsp" > Booking</a></div>

                </div>
            </div>
        </section>
<%@include file="/include/Footer.jsp" %>


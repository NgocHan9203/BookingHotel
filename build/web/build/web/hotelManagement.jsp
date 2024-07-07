<%-- 
    Document   : hotelManagement
    Created on : Mar 9, 2024, 1:08:18 PM
    Author     : Văn Phú
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>

<section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Rooms <i class="fa fa-chevron-right"></i></span></p>
                <h1 class="mb-0 bread">Quản Lý Hotel</h1>
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

                        <a href="add" class="btn btn-primary py-3 px-4 mr-2" >Thêm khách sạn</a>
                    </div>
                </div>
            </div>




        </div>
    </div>
    <div class="right col-11">
        <div class="ks1 row" >
            <c:forEach items="${requestScope.listHotel}" var="hotel">
                <div class="room-wrap d-md-flex col-11">
                    <a href="#" class="img" style="background-image: url(${hotel. getHotelimg()});"></a>
                    <div class="text p-4">
                        <h3><a href="hotelmanage">${hotel.getHotelName()}</a></h3>
                        <h4>${hotel.getHotelAddress()}</h4>
                        <p>${hotel.getIntroduction()}</p>
                        <div class="form-group">
                            <button style="border-radius: 5px; border: 1px solid pink "><a href="edit?hotelId=${hotel.getHotelID()}">Edit</a></button>
<!--                            <button style="border-radius: 5px; border: 1px solid pink "><a href="hotelmanage?action=delete">Delete</a></button>-->
                            
                            <form method="post" action="hotelmanage">

                                <button style="border-radius: 5px; border: 1px solid pink " type="submit">Delete</button>
                            </form>

                        </div>

                    </div>
                </div>
                <div class="room-wrap d-md-flex col-11">

                </div>
            </c:forEach>

        </div>

    </div>

</section>

<%@include file="/include/Footer.jsp" %>

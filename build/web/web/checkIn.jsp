<%@page import="dal.RoomDB"%>
<%@page import="model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="model.Room"%>
<%@page import="model.Room"%>
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
        <div class="row justify-content-center">
            <div class="col-md-12">
                <form action="index.jsp" class="appointment-form">
                    <div class="col-md-12"> 
                        <%
                            List<Booking> bookList = (List<Booking>) request.getAttribute("bookingList");
                            if (bookList != null && !bookList.isEmpty()) {
                                Booking firstBooking = bookList.get(0);
                        %>
                        <h1 class="text-center">Thông tin người đặt phòng</h1>
                        <p class="card-text"><strong>Tên khách hàng:</strong> <%= firstBooking.getCustomerID()%></p>
                        <p class="card-text"><strong>Mã Đặt phòng:</strong> <%= firstBooking.getBookingID()%></p>
                        <%
                            for (Booking b : bookList) {
                        %>

                        <div class="col" style="display: flex; justify-content: space-between;">
                            <p class="card-text" style="display: inline-block;"><strong>Loại phòng:</strong> <%= b.getRoomTypeID()%></p>
                            <p class="card-text" style="display: inline-block;"><strong>Số lượng phòng:</strong> <%= b.getNumberOfRoom()%></p>
                            <p class="card-text" style="display: inline-block;"><strong>Ngày đến:</strong> <%= b.getDateIn()%></p>
                            <p class="card-text" style="display: inline-block;"><strong>Ngày đi:</strong> <%= b.getDateOut()%></p>
                        </div>

                        <%
                            } // Kết thúc vòng lặp for
                        %> 
                        <% } else {%>
                        %>
                        <h1>null</h1>
                        <%}%>
                    </div>

                    <div class="row">
                        <%
                            for (Booking b : bookList) {
                                for (int i = 0; i < b.getNumberOfRoom(); i++) {
                        %>
                        <div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
                            <div class="d-block services-wrap text-center">
                                <div class="img" style="background-image: url(images/services-1.jpg);"></div>
                                <div class="media-body py-4 px-3">
                                    <h3 class="heading"><%= b.getRoomTypeID()%></h3>
                                    <p>Date In: <%= b.getDateIn()%><br>
                                        Date Out: <%= b.getDateOut()%></p>
                                    <p><a href="checkIn2?roomTypeID=<%= b.getRoomTypeID()%>&dateIn=<%= b.getDateIn()%>&dateOut=<%= b.getDateOut()%>" class="btn btn-primary">check-In</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <% }
                                    }%>
                    </div>
                    <div>
                        <input type="submit" class="btn btn-primary" value="Submit">
                    </div>
                </form>
            </div>
        </div> 
    </div>



</section>




<%@include file="/include/Footer.jsp" %>
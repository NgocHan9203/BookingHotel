<%-- 
    Document   : booking_service
    Created on : Feb 27, 2024, 3:25:35 PM
    Author     : Han
--%>

<%@page import="model.RoomType"%>
<%@page import="dal.RoomTypeDAO"%>
<%@page import="model.Order"%>
<%@page import="model.Booking"%>
<%@page import="java.util.List"%>
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
                <form id="checkoutForm" action="checkOut" class="appointment-form" method="post">
                    <h1 class="text-center">Thông tin khách hàng</h1>
                    <%
                        Booking bookInfo = (Booking) request.getAttribute("bookInfo");
                        if (bookInfo != null) {

                    %>

                    <p class="card-text text-center"><strong>Tên khách hàng:</strong> <%= bookInfo.getCustomerID()%></p>
                    <p class="card-text text-center"><strong>Mã Đặt phòng:</strong> <%= bookInfo.getBookingID()%></p>
                    <% }%>

                    <table class="table" id="orderTable" class ="appointment-form">
                        <thead>
                            <tr>
                                <th scope="col">Tên khách hàng</th>
                                <th scope="col">Loại phòng</th>
                                <th scope="col">Số phòng</th>
                                <th scope="col">Ngày đến</th>
                                <th scope="col">Ngày đi</th>
                                <th scope="col">Giá </th>
                                <th scope="col">CheckOut</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                List<Order> oList = (List<Order>) request.getAttribute("odList");

                                if (oList != null && !oList.isEmpty()) {

                                    for (Order o : oList) {
                                        RoomTypeDAO rtDB = new RoomTypeDAO();
                                        RoomType r = rtDB.getRoomTypeByRoomID(o.getRoomID());
                            %>
                            <tr>
                                <td><%= o.getUserRoomName()%></td>
                                <td><%= r.getRoomTypeName()%></td>
                                <td><%= o.getRoomID()%></td>
                                <td><%= o.getDateIn()%></td>
                                <td><%= o.getDateOut()%></td>
                                <td><%= r.getPrice()%></td>
                                <td>


                                    <input type="hidden" name="roomID" value="<%= o.getRoomID()%>">
                                    <input type="hidden" name="dateIn" value="<%= o.getDateIn()%>">
                                    <input type="hidden" name="dateOut" value="<%= o.getDateOut()%>">
                                    <input type="hidden" name="price" value="<%= r.getPrice()%>">
                                <button  id="checkoutButton" type="submit" >CheckOut</button>
<!--                                  <input id="checkoutButton" type="button" onclick="hideCheckoutButton(); document.getElementById('checkoutForm').submit();" value="CheckOut">-->

                                </td>
                            </tr>

                            <% }
                                }
                            %>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="6" style="text-align:right;">Tổng bill:</td>
                                <%       Object totalObj = session.getAttribute("total");
                                        if (totalObj != null && totalObj instanceof Float) {
                                        float total = (Float) totalObj;
                                %>
                                <td colspan="1"><%= total%></td>
                                <% } else { %>
                                <td colspan="1">$00.00</td>
                                <% }%>
                            </tr>
                        </tfoot>

                    </table>

                </form>
                <form action="hotelmanage" method="post">
                    
                    <input type="submit" class="btn btn-primary" value="Check-out">
                
                </form>
            </div>
        </div>
    </div>
</section>
<script>
    function hideCheckoutButton() {
        document.getElementById("checkoutButton").style.display = "none";
    }
</script>
<%@include file="/include/Footer.jsp" %>
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
                        <form action="index.jsp" class="appointment-form">
                            <h1 class="text-center">Thông tin khách hàng</h1>
                            <%
                                Booking bookInfo = (Booking) request.getAttribute("bookInfo");
                                if (bookInfo != null) {

                            %>
                            
                            <p class="card-text"><strong>Tên khách hàng:</strong> <%= bookInfo.getCustomerID()%></p>
                            <p class="card-text"><strong>Mã Đặt phòng:</strong> <%= bookInfo.getBookingID()%></p>
                            <% }%>
                            <table class="table" id="orderTable">
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
                                        <td><button onclick="totalBill()">CheckOut</button></td>
                                    </tr>
                                    <% }
                                        }
                                    %>
                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                        <td colspan="6" style="text-align:right;">Tổng bill:</td>
                                                                        <td id="totalBill"></td>
                                                                    </tr>
                                                                </tfoot>
                            </table>
                            <input type="submit" class="btn btn-primary" value="Check-out">
                        </form>
                    </div>
                </div>
            </div>
        </section>








        <script >
            function totalBill() {
                var total = 0;
                var table = document.getElementById("orderTable");
                var rows = table.getElementsByTagName("tr");
                for (var i = 0; i < rows.length; i++) {
                    var cells = rows[i].getElementsByTagName("td");
                    if (cells.length > 0) {
                        var price = parseInt(cells[5].innerText); // Lấy giá tiền từ cột thứ 6
                        var dateIn = new Date(cells[3].innerText); // Lấy ngày đến từ cột thứ 4
                        var dateOut = new Date(cells[4].innerText); // Lấy ngày đi từ cột thứ 5
                        var days = (dateOut - dateIn) / (1000 * 3600 * 24); // Số ngày thuê phòng
                        total += price * days; // Tính tổng giá tiền
                    }
                }
                // Hiển thị kết quả trong một khung
                document.getElementById("totalBill").innerText = "$" + total.toFixed(2);
            }
        </script>
        <%@include file="/include/Footer.jsp" %>
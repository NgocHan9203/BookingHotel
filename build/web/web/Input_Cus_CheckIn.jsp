<%@page import="java.util.List"%>
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
            <div class="col-md-12 ">
                <form action="checkIn2" class="appointment-form" method="post">
                    <h1 style="text-align: center">Nhập thông tin khách hàng</h1>
                    <fieldset>

                        <legend>Thông tin cá nhân</legend>
                        <%
                            List<Room> availableRooms = (List<Room>) request.getAttribute("availableRooms");
                            if (availableRooms != null && !availableRooms.isEmpty()) {
                        %>
                        <select name="roomID">
                            <option value="" disabled selected>Chọn phòng</option>
                            <%
                                for (Room room : availableRooms) {
                            %>
                            <option value="<%= room.getRoomID()%>" ><%= room.getRoomNumber()%></option>
                            <%
                                    }
                                }
                            %>
                        </select>
                        <input type="hidden" name="roomTypeID" value="<%= request.getParameter("roomTypeID")%>">
                        <input type="hidden" name="dateIn" value="<%=request.getParameter("dateIn")%>"> 
                        <input type="hidden" name="dateOut" value="<%=request.getParameter("dateOut")%>"> 
                        <div class="form-group">
                            <label for="name">Tên:</label>
                            <input type="text" id="name" name="name" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="age">Tuổi:</label>
                            <input type="number" id="age" name="age" class="form-control" min="18" max="120" required>
                        </div>
                        <div class="form-group">
                            <label for="id_card">ID card:</label>
                            <input type="text" id="id_card" name="id_card" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone:</label>
                            <input type="text" id="phone" name="phone" class="form-control" required>
                        </div>
                    </fieldset>
                    <div class="form-group">
                        <input class="btn btn-primary py-3 px-4 mt-2" type="submit" value="Submit">
                    </div>
                </form>




            </div>
        </div>
    </div>
</section>




<%@include file="/include/Footer.jsp" %>
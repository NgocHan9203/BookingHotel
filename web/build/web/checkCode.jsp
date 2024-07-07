<%-- 
    Document   : booking_service
    Created on : Feb 27, 2024, 3:25:35 PM
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
            
            <form id="bookingForm" action="checkCode" class="appointment-form" method="post">
                <h1 class="text-center">Nhập mã booking của khách hàng</h1>
                <div class="col-md-12">
                    <div class="form-group ">
                        <input type="text" class="form-control" placeholder="Enter code" name="booking_code">
                    </div>

                    <div class="form-group ">
                        <input id="checkCodeButton" class="btn btn-primary py-3 px-4 mt-2" type="submit" value="checkCode" >
                    </div>
                </div>


                <%
                    Boolean checkExistBooking = (Boolean) request.getAttribute("checkExistBooking");

                    if (checkExistBooking != null && checkExistBooking) {


                %>
                <h1 >Mã booking<%= request.getParameter("booking_code")%> có tồn tại</h1>
                <div id="actionButtons" class="row" >
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="checkIn" class="btn btn-primary py-3 px-4 mt-2">checkIn</a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a href="checkOut" class="btn btn-primary py-3 px-4 mt-2">checkOut</a>
                        </div>
                    </div>
                </div>
                <% } else {%>
                <script>
                    alert("Mã booking không tồn tại");
                </script>
                <%
                    }
                %>
            </form>
            </div>
        </div>
   
</section>

<script>
    function checkCode() {
        var checkExistBooking = <%= request.getAttribute("checkExistBooking")%>;

        if (checkExistBooking) {
            document.getElementById("actionButtons").style.display = "block";
        } else {
            alert("Mã booking không tồn tại");
        }
    }
</script>
<%@include file="/include/Footer.jsp" %>
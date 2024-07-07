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
            <div class="row justify-content-center">
                <div class="col-md-12 ">
                    <form action="#" class="appointment-form">
                        <h3 class="mb-12" style="align-items: center;">Service Booking</h3>
                        <table >
                            <thead>
                                <th> Loại dịch vụ</th>
                                <th>Giá</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                       <ul>
                                        <li> <input type="checkbox"> Đưa Đón sân bay</li>
                                        <li><input type="checkbox">Phòng họp</li>
                                       </ul>
                                    </td>
                                    <td>
                                        <ul>
                                            <li>12$</li>
                                            <li>12$</li>
                                        </ul>
                                    </td>
                                </tr>
                                

                            </tbody>
                            
                        </table>
                        <div class="col-md-12 mt-3">
                            <div class="form-group">

                                <a href="./billBooking.jsp" class="btn btn-primary py-3 px-4" type="submit">NEXT STEP</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>



<%@include file="/include/Footer.jsp" %>

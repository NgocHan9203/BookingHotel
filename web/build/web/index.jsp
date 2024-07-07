<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>

<div class="hero-wrap js-fullheight" style="background-image: url('images/bg_1.jpg');"
     data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
             data-scrollax-parent="true">
            <div class="col-md-7 ftco-animate">
                <h2 class="subheading">Welcome to LUX TRAVEL STAY</h2>
                <h1 class="mb-4">Rent an appartment for your LUX TRAVEL STAY</h1>
                <p><a href="#" class="btn btn-primary">Learn more</a> <a href="#" class="btn btn-white">Contact
                        us</a></p>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section ftco-book ftco-no-pt ftco-no-pb">
    <div class="container">
        <div class="row justify-content-end">
            <div class="col-lg-4">
                <form action="searchControl" class="appointment-form" >
                    <h3 class="mb-3">Book your apartment</h3>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <select type="text" class="form-control" name="city">

                                    <option value="Hà Nội">Hà Nội</option>
                                    <option value="Đà Nẵng">Đà Nẵng</option>
                                    <option value="Sài Gòn">Sài Gòn</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-wrap">
                                    <div class="icon"><span class="ion-md-calendar"></span></div>
                                    <input name="checkIn" type="text" class="form-control appointment_date-check-in"
                                           placeholder="Check-In">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="input-wrap">
                                    <div class="icon"><span class="ion-md-calendar"></span></div>
                                    <input name="checkOut" type="text" class="form-control appointment_date-check-out"
                                           placeholder="Check-Out">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-field">
                                    <div class="select-wrap">
                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                        <select name="adults"  id="" class="form-control">
                                            <option>Adults</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="form-field">
                                    <div class="select-wrap">
                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                        <select name="children" id="" class="form-control">
                                            <option>Children</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input name="phoneNumber" type="text" class="form-control" placeholder="Phone number">
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="form-group">

                                <input class="btn btn-primary py-3 px-4" type="submit">Book
                                Appartment Now
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-services">
    <div class="container">
        <div class="row">
            <div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
                <div class="d-block services-wrap text-center">
                    <div class="img" style="background-image: url(images/services-1.jpg);"></div>
                    <div class="media-body py-4 px-3">
                        <h3 class="heading">Hà Nội</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.</p>
                        <p><a href="./hanoi.jsp" class="btn btn-primary">Read more</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
                <div class="d-block services-wrap text-center">

                    <div class="img" style="background-image: url(images/services-2.jpg);"></div>
                    <div class="media-body py-4 px-3">
                        <h3 class="heading">Đà Nẵng</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.</p>
                        <p><a href="./rooms.jsp" class="btn btn-primary">Read more</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex services align-self-stretch px-4 ftco-animate">
                <div class="d-block services-wrap text-center">
                    <div class="img" style="background-image: url(images/services-3.jpg);"></div>
                    <div class="media-body py-4 px-3">
                        <h3 class="heading">Hồ Chí Minh</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost
                            unorthographic.</p>
                        <p><a href="hochiminh.jsp" class="btn btn-primary">Read more</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="/include/Footer.jsp" %>

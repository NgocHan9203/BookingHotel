<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/include/Header.jsp" %>

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i
                                        class="fa fa-chevron-right"></i></a></span> <span>Đăng chỗ nghỉ <i
                                    class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Đăng chỗ nghỉ của bạn</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light" >
            <div class="container" id="container_1">

                <div class="row no-gutters">
                    <!-- <div class="col-md-8">
                    <div id="map" class="map"></div>
            </div>
            <div class="col-md-4 p-4 p-md-5 bg-white">
                    <h2 class="font-weight-bold mb-4"></h2>
                    <p>Cảm ơn vì đẫ tin tưởng và lựa chọn chúng tôi!</p>
                    <!-- <p><a href="#" class="btn btn-primary">Book Apartment Now</a></p> -->
                </div> 
                <div class="col-md-12" >
                    <div class="wrapper">
                        <div class="row">
                            <div class="col-md-12 ">
                                <div class="contact-wrap w-100 p-md-5 p-4">
                                    <h3 class="mb-4">Thông tin phòng</h3>
                                    <div id="form-message-warning" class="mb-4"></div>
                                    <div id="form-message-success" class="mb-4">
                                        Cảm ơn vì đẫ tin tưởng và lựa chọn chúng tôi!
                                    </div>
                                    <form method="POST" id="contactForm" name="contactForm" class="contactForm">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <h5>Tên Phòng</h5>
                                                    <input type="text" class="form-control" name="name" id="name"
                                                           placeholder="Name">
                                                </div>
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <h5 >Loại phòng</h5>
                                                    <br>
                                                    <form>
                                                        <input name="gender" type="radio" value="Nam" />dululex
                                                        <input name="gender" type="radio" value="Nữ" />viper
                                                        <input name="gender" type="radio" value="Nữ" />siu đẹp


                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <h5 >trạng thái phòng</h5>
                                                    <br>
                                                    <form>
                                                        <input name="gender" type="radio" value="Trống" />TRỐNG
                                                        <input name="gender" type="radio" value="Đã Tồn Tại" />ĐÃ TỒN TẠI

                                                    </form>
                                                </div>
                                            </div>
                                        </div>   

                                    </form>

                                    <div class="col-md-12 ">
                                        <div class="form-group ">
                                            <label class="label" for="image">Hình ảnh:</label><br>
                                            <input type="file" id="image" name="image" accept="image/*"><br><br>


                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input type="submit" value="Send " class="btn btn-primary">
                                            <div class="submitting"></div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                      
        </div>
    </div>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
    <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
    <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
            stroke="#F96D00" />
    </svg></div>

<script>
    function addRoomField() {
        var roomFields = document.getElementById("room_fields");
        var newRoomField = document.createElement("div");

// Tạo một bảng
        var table = document.createElement("table");
        table.style.display = "inline-block"; // Thiết lập kiểu hiển thị thành inline-block để bảng hiển thị theo hàng ngang
        table.style.border = "1px solid #ccc";
// Tạo hàng cho loại phòng
        var typeRow = document.createElement("tr");
        typeRow.innerHTML = '<td><label class="label" for="room_type">Loại phòng</label></td><td><input type="text" class="form-control" name="room_type[]" placeholder="Room type"></td>';

// Tạo hàng cho số phòng
        var numberRow = document.createElement("tr");
        numberRow.innerHTML = '<td><label class="label" for="room_num">Số phòng</label></td><td><input type="number" class="form-control" name="room_num[]" placeholder="Room number"></td>';

// Tạo hàng cho giá phòng
        var priceRow = document.createElement("tr");
        priceRow.innerHTML = '<td><label class="label" for="room_price">Giá phòng</label></td><td><input type="number" class="form-control" name="room_price[]" placeholder="Room price"></td>';

// Thêm các hàng vào bảng
        table.appendChild(typeRow);
        table.appendChild(numberRow);
        table.appendChild(priceRow);

// Thêm bảng vào div mới
        newRoomField.appendChild(table);

// Thêm div mới vào phần tử chứa các trường loại phòng
        roomFields.appendChild(newRoomField);
    }

    <%@include file="/include/Footer.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="/include/Header.jsp" %>
<div class="card-body">
    <div class="card-title mb-4">
        <div class="d-flex justify-content-start">
            <div class="image-container">
                <img src="http://placehold.it/150x150" id="imgProfile" style="width: 150px; height: 150px" class="img-thumbnail" />
                <div class="middle">
<!--                    <input type="file" id="image" name="image" value="upload" accept="image/*"><br><br>-->

                    <input type="file" style="display: none;" id="profilePicture" name="file" />
                </div>
            </div>
            <div class="userData ml-3">
                <h2 class="d-block" style="font-size: 1.5rem; font-weight: bold"><a href="javascript:void(0);">Some Name</a></h2>
                <h6 class="d-block"><a href="javascript:void(0)">1,500</a> Video Uploads</h6>
                <h6 class="d-block"><a href="javascript:void(0)">300</a> Blog Posts</h6>
            </div>
            <div class="ml-auto">
                <input type="button" class="btn btn-primary d-none" id="btnDiscard" value="Discard Changes" />
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-12" style="align-items: center;">

            <div class="tab-content ml-1" id="myTabContent">
                <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab" style="">


                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Full Name</label>
                        </div>
                        <div class="col-md-8 col-6">
                            <label style="font-weight:bold;">Something</label>
                        </div>
                    </div>
                    <hr />

                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Birth Date</label>
                        </div>
                        <div class="col-md-8 col-6">
                            March 22, 1994.
                        </div>
                    </div>
                    <hr />


                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Something</label>
                        </div>
                        <div class="col-md-8 col-6">
                            Something
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Something</label>
                        </div>
                        <div class="col-md-8 col-6">
                            Something
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-sm-3 col-md-2 col-5">
                            <label style="font-weight:bold;">Something</label>
                        </div>
                        <div class="col-md-8 col-6">
                            Something
                        </div>
                    </div>
                    <hr>
                    <form action="checkowner" method="post">
                        <div class="row">
                            <div class="col-sm-3 col-md-2 col-5">
                                <label style="font-weight:bold;">Quyền truy cập owner</label>
                            </div>
                            <div class="col-md-8 col-6">
                                <input name="owner" type="text" placeholder="OWNER ID">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-12">
                                <button class="btn btn-primary py-3 px-4" type="submit">Submit</button>
                            </div>
                        </div>
                    </form>

                    <hr>
                    <%
                        String message = (String) request.getAttribute("mess");
                        if (message != null) {
                    %>
                    <script>
                        alert('<%= message%>');
                    </script>
                    <%
                        }
                    %>


                    <form action="confirm_owner.jsp" method="GET" id="ownerForm">
                        <input type="hidden" name="cars" value="owner">
                    </form>
                    <hr />

                </div>

            </div>
        </div>


    </div>


</div>


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
</script> 
<%@include file="/include/Footer.jsp" %>
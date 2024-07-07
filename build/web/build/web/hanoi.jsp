<%-- 
    Document   : hanoi
    Created on : Feb 27, 2024, 3:26:16 PM
    Author     : Han
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Vacation Rental - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
	<div class="wrap">
		<div class="container">
			<div class="row justify-content-between">
					<div class="col d-flex align-items-center">
						<p class="mb-0 phone"><span class="mailus">Phone no:</span> <a href="#">0827516007</a> or <span class="mailus">email us:</span> <a href="#">linhvkde170144@fpt.edu.vn</a></p>
					</div>
					<div class="col d-flex justify-content-end">
						<div class="social-media">
						<p class="mb-0 d-flex">
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
							<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
						</p>
				</div>
					</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.jsp">
				<img src="./images/z5196392821072_c057dacc5497960daf2fad2b9c1506fa.jpg" alt="">
				LUX TRAVEL STAY</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
				aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
					<li class="nav-item"><a href="rooms.jsp" class="nav-link">Apartment Room</a></li>
					<li class="nav-item"><a href="blog.jsp" class="nav-link">Đăng ký chỗ nghỉ</a></li>
					<li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Ký</a></li>
					<li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Nhập</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->

    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span>Rooms <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">Hà Nội</h1>
          </div>
        </div>
      </div>
    </section>
   
    <section class="ftco-section bg-light ftco-no-pt ftco-no-pb">
			<div class="container-fluid px-md-0">
				<div class="left">
					<div class="rating">
						<h5>Xếp Hạng Chỗ Nghỉ</h5>
						<input type="checkbox" style="color: #fff;">6 sao <br>
						<input type="checkbox" style="color: #fff;">5 sao <br>
						<input type="checkbox" style="color: #fff;">4 sao <br>
						<input type="checkbox" style="color: #fff;">3 sao <br>
						<input type="checkbox" style="color: #fff;">2 sao <br>
						<input type="checkbox" style="color: #fff;">1 sao <br>

					</div>
					<div class="rating">
						<h5>Giá cả</h5>
						<input type="checkbox" style="color: #fff;">Dưới 200.000VND <br>
						<input type="checkbox" style="color: #fff;">200.000 đến 500.000 <br>
						<input type="checkbox" style="color: #fff;">500.000 đến 1.000.000 <br>
						<input type="checkbox" style="color: #fff;">1.000.000 đến 2.000.000 <br>
						<input type="checkbox" style="color: #fff;">2.000.000 đến 3.000.000 <br>
						<input type="checkbox" style="color: #fff;">trên 3.000.000 <br>

					</div>
					

				</div>
				<div class="right">
    			<div class="">
    				<div class="room-wrap d-md-flex">
    					<a href="#" class="img" style="background-image: url(images/room-1.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 p-xl-5 text-center">
    							<p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.jsp">Hadana Boutique Hotel
								</a></h3>
	    						<ul class="list-accomodation">
	    							<li>Phòng Superior Có Giường Cỡ King</li>
	    							<li>bao bữa Sáng</li>
	    							<li>Miễn phí hủy</li>
	    							<li><span>Bed:</span> 1</li>
									<li><span>Max:</span> 3 Persons</li>
	    						</ul>
	    						<p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="">
    				<div class="room-wrap d-md-flex">
    					<a href="#" class="img" style="background-image: url(images/room-2.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 p-xl-5 text-center">
    							<p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.jsp">Merry Land Hotel Da Nang

								</a></h3>
	    						<ul class="list-accomodation">
	    							<li>Phòng Superior Có Giường Cỡ King</li>
	    							<li>bao bữa Sáng</li>
	    							<li>Miễn phí hủy</li>
	    							<li><span>Bed:</span> 1</li>
									<li><span>Max:</span> 3 Persons</li>
	    						</ul>
	    						<p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>

    			<div class="">
    				<div class="room-wrap d-md-flex">
    					<a href="#" class="img order-md-last" style="background-image: url(images/room-3.jpg);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 p-xl-5 text-center">
    							<p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.jsp">Diamond Hotel & Apartment

								</a></h3>
	    						<ul class="list-accomodation">
	    							<li>Phòng Superior Có Giường Cỡ King</li>
	    							<li>bao bữa Sáng</li>
	    							<li>Miễn phí hủy</li>
	    							<li><span>Bed:</span> 1</li>
									<li><span>Max:</span> 3 Persons</li>
	    						</ul>
	    						<p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="">
    				<div class="room-wrap d-md-flex">
    					<a href="#" class="img order-md-last" style="background-image: url(images/room-4.jpg);"></a>
    					<div class="half right-arrow d-flex align-items-center">
    						<div class="text p-4 p-xl-5 text-center">
    							<p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
    							<p class="mb-0"><span class="price mr-1">$120.00</span> <span class="per">per night</span></p>
	    						<h3 class="mb-3"><a href="rooms.jsp">Sanayen Villa & Residences

								</a></h3>
	    						<ul class="list-accomodation">
	    							<li>Phòng Superior Có Giường Cỡ King</li>
	    							<li>bao bữa Sáng</li>
	    							<li>Miễn phí hủy</li>
	    							<li><span>Bed:</span> 1</li>
									<li><span>Max:</span> 3 Persons</li>
	    						</ul>
	    						<p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>

    			<div class="">
    				<div class="room-wrap d-md-flex">
    					<a href="#" class="img" style="background-image: url(images/room-5.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 p-xl-5 text-center">
    							<p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
	    						<h3 class="mb-3"><a href="rooms.jsp">Dana House ELC

								</a></h3>
	    						<ul class="list-accomodation">
	    							<li>Phòng Superior Có Giường Cỡ King</li>
	    							<li>bao bữa Sáng</li>
	    							<li>Miễn phí hủy</li>
	    							<li><span>Bed:</span> 1</li>
									<li><span>Max:</span> 3 Persons</li>
	    						</ul>
	    						<p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    			<div class="">
    				<div class="room-wrap d-md-flex">
    					<a href="#" class="img" style="background-image: url(images/room-6.jpg);"></a>
    					<div class="half left-arrow d-flex align-items-center">
    						<div class="text p-4 p-xl-5 text-center">
    							<p class="star mb-0"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></p>
	    						<h3 class="mb-3"><a href="rooms.jsp">Yuni Hotel And Apartment

								</a></h3>
	    						<ul class="list-accomodation">
	    							<li>Phòng Superior Có Giường Cỡ King</li>
	    							<li>bao bữa Sáng</li>
	    							<li>Miễn phí hủy</li>
	    							<li><span>Bed:</span> 1</li>
									<li><span>Max:</span> 3 Persons</li>
	    						</ul>
	    						<p class="pt-1"><a href="room-single.jsp" class="btn-custom px-3 py-2">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    						</div>
    					</div>
    				</div>
    			</div>
    		</div>
			</div>
		</section>
		
		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
						<h2 class="footer-heading"><a href="#" class="logo">Lux Travel Stay</a></h2>
						<p>Nhóm 5.</p>
					</div>
					<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
						<h2 class="footer-heading">Services</h2>
						<ul class="list-unstyled">
							<li>Vũ Kiều Linh</li>
							<li>Huỳnh Thị Ngọc Hân</li>
							<li>Bùi Văn Phú</li>
						</ul>
					</div>
					
					<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
						<h2 class="footer-heading">Subcribe</h2>
						<form action="#" class="subscribe-form">
							<div class="form-group d-flex">
								<input type="text" class="form-control rounded-left" placeholder="Enter email address">
								<button type="submit" class="form-control submit rounded-right"><span
										class="sr-only">Submit</span><i class="fa fa-paper-plane"></i></button>
							</div>
						</form>
					</div>
					<div class="col-md-6 col-lg-3 mb-md-0 mb-4">
						<h2 class="footer-heading ">Follow us</h2>
						<ul class="ftco-footer-social p-0">
							<li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top"
									title="Twitter"><span class="fa fa-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top"
									title="Facebook"><span class="fa fa-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#" data-toggle="tooltip" data-placement="top"
									title="Instagram"><span class="fa fa-instagram"></span></a></li>
						</ul>
					</div>
						
					</div>
				</div>
			</div>
			<div class="w-100 mt-5 border-top py-5">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-lg-8">
	
							<p class="copyright mb-0">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>document.write(new Date().getFullYear());</script> All rights reserved | This
								template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib.com</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="col-md-6 col-lg-4 text-md-right">
							<p class="mb-0 list-unstyled">
								<a class="mr-md-3" href="#">Terms</a>
								<a class="mr-md-3" href="#">Privacy</a>
								<a class="mr-md-3" href="#">Compliances</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</footer>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>


    
  </body>
</html>

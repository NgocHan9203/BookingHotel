<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="images/logotabbar.png"/>
        <title>LuxTravelStay</title>
        <link rel="stylesheet" href="style.css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <section class="h-100 gradient-form" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-xl-10">
                        <div class="card rounded-3 text-black">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="card-body p-md-5 mx-md-4" id="login-form">
                                        <div class="text-center">
                                            <img src="images/LuxTravelStay.png" style="width: 185px;" alt="logo">
                                            <h4 class="mt-1 mb-5 pb-1">LuxTravelStay</h4>
                                        </div>
                                        <!--                                        Login form-->
                                        <form action="login" method="post">
                                            <p>Please login to your account</p>
                                            </br>
                                            <% String mess = (String) request.getAttribute("mess"); %>
                                            <% if (mess != null && !mess.isEmpty()) {%>
                                            <div class="alert alert-danger" role="alert">
                                                <%= mess%>
                                            </div>
                                            <% }%>
                                            <div class="form-outline mb-4">
                                                <input type="text" id="form2Example11" class="form-control"
                                                       placeholder="Username" name="username" />
                                                <label class="form-label" for="form2Example11">Username</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="form2Example22" class="form-control" name="password" />
                                                <label class="form-label" for="form2Example22">Password</label>
                                            </div>

                                            <div class="text-center pt-1 mb-5 pb-1">
                                                <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Log in</button>
                                                <a class="text-muted" href="#!">Forgot password?</a>
                                            </div>

                                            <div class="d-flex align-items-center justify-content-center pb-4">
                                                <p class="mb-0 me-2">Don't have an account?</p>
                                                <button type="button" class="btn btn-outline-danger" onclick="toggleForms()">Create new</button>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="card-body p-md-5 mx-md-4" id="signup-form" style="display:none;">
                                        <div class="text-center">
                                            <img src="images/LuxTravelStay.png" style="width: 185px;" alt="logo">
                                            <h4 class="mt-1 mb-5 pb-1">Create an Account</h4>
                                        </div>
                                        <!--                                        Sign up-->
                                        <form action="signup" method="post" onsubmit="return checkPasswords()">
                                            <p>Please sign up to create your account</p>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="signupUsername" class="form-control" placeholder="Username" name="username" required />
                                                <label class="form-label" for="signupUsername">Username</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="signupFullName" class="form-control" placeholder="Full Name" name="fullname" required />
                                                <label class="form-label" for="signupFullName">Full Name</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="text" id="signupFullName" class="form-control" placeholder="id-card" name="idCard" required />
                                                <label class="form-label" for="signupIdCard">Id-card</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="signupPassword" class="form-control" placeholder="Password" name="password" required />
                                                <label class="form-label" for="signupPassword">Password</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" id="signupPasswordRepeat" class="form-control" placeholder="Repeat Password" name="repassword" required />
                                                <label class="form-label" for="signupPasswordRepeat">Repeat Password</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="tel" id="signupPhone" class="form-control" placeholder="Phone number" name="phone" required />
                                                <label class="form-label" for="signupPhone">Phone Number</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="date" id="signupDOB" class="form-control" placeholder="Date of Birth" name="dob" required />
                                                <label class="form-label" for="signupDOB">Date of Birth</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <select id="signupGender" class="form-control" name="gender" required>
                                                    <option value="">Select Gender</option>
                                                    <option value="Female">Female</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Others">Others</option>
                                                </select>
                                                <label class="form-label" for="signupGender">Gender</label>
                                            </div>



                                            <div class="form-outline mb-4">
                                                <input type="email" id="signupEmail" class="form-control" placeholder="Email" name="email" required />
                                                <label class="form-label" for="signupEmail">Email</label>
                                            </div>


                                            <div class="text-center pt-1 mb-5 pb-1">
                                                <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit" onclick="toggleForms()">Sign up</button>
                                            </div>

                                            <div class="d-flex align-items-center justify-content-center pb-4">
                                                <p class="mb-0 me-2">Already have an account?</p>
                                                <button type="button" class="btn btn-outline-danger" onclick="toggleForms()">Log in</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                                    <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                                        <h4 class="mb-4">We are more than just a company</br>We are family</h4>
                                        <p class="small mb-0">You see us as a service, we see you as family. Let us treat you like one of our own. I want to do everything to ensure you have the best experience here. Our hotel booking service.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script>
            function toggleForms() {
                var loginForm = document.getElementById('login-form');
                var signupForm = document.getElementById('signup-form');

                if (loginForm.style.display === 'block' || loginForm.style.display === '') {
                    loginForm.style.display = 'none';
                    signupForm.style.display = 'block';
                } else {
                    loginForm.style.display = 'block';
                    signupForm.style.display = 'none';
                }
            }
            function checkPasswords() {
                var password = document.getElementById('signupPassword').value;
                var confirmPassword = document.getElementById('signupPasswordRepeat').value;

                if (password !== confirmPassword) {
                    alert('The passwords do not match. Please try again.');
                    return false;
                }
                return true;
            }
        </script>
    </body>
</html>


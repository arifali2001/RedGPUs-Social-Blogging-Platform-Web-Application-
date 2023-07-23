
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/cssfile1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <style>
        body{
                background:url(https://i.pinimg.com/originals/84/d8/7e/84d87eb7e536135161c55887d878d44b.gif);
                background-size: cover;
                background-attachment: scroll;
            }
            .fbody{
                height: 50px;
            }
            #footer_text{
                font-family: 'Cutive Mono';
            }
    </style>
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
    <link href='https://fonts.googleapis.com/css?family=Cutive Mono' rel='stylesheet'>
    <body>
        <%@include file="normalnav.jsp" %>
        <main class=" p-3" style="font-family: Cutive Mono;">
            <div class="container" >
                <div class="col-md-6 offset-md-3">
                    <div class="card" >
                        <div class="card-header text-center secondary-bg" id="logincard" >
                            <br>
                            <span class="fa fa-user-plus fa-3x fa-bounce" style=""></span>
                            <p class="lineup divine" ><strong>Register here</strong></p>

                        </div>
                        <div class="card-body">
                            <form action="RegisterServlet" id="reg_form" method="POST">
                                <div class="mb-3">
                                    <label for="user_name" class="form-label">User Name</label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter Name">

                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1">
                                </div>
                                <div class="mb-3">
                                    <label for="gender" class="form-label">Gender</label>
                                    <br>
                                    <input type="radio"  id="gender" name="gender" value="Male">Male
                                    <br>
                                    <input type="radio"  id="gender" name="gender" value="Female">Female
                                </div>
                                <div class="form-group">
                                    <textarea name="about" class="form-control" id=""  rows="5" placeholder="Tell us something about yourself.."></textarea>

                                </div>
                                <div class="mb-3 form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1">Agree Terms & Conditions</label>
                                </div>
                                <br>
                                <div class="container text-center" id="loader" style="display: none">
                                    <span class="fa fa-circle-o-notch fa-spin fa-2x"></span>
                                    <h6>Signing Up...</h6>
                                </div>
                                
                                <button id="submitbtn" type="submit" class="btn btn-primary btn-outline-dark primary-bg animate-charcter3">SignUp</button>
                                <br>
                                <div id="help" class="form-text">Already a user? <a><a href="loginpage.jsp" style="color:red">Login</a></div>
                            </form>

                        </div>
                        <div class="card-footer">

                        </div>

                    </div>

                </div>
            </div>
        </main>

        <!--        javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.7.0.min.js"
            integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="javascript/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("Ready...");

                $('#reg_form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $("submitbtn").hide();
                    $("#loader").show();
                    //Sending data to RegisterServlet
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                            $("submitbtn").show();
                            $("#loader").hide();
                            if(data.trim()==='Registered Successfully')
                            {
                            swal("Registered Successfully!")
                                    .then((value) => {
                                        window.location = "loginpage.jsp"
                                    });
                                }else
                                {
                                    swal(data);
                                }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
      
                            $("submitbtn").show();
                            $("#loader").hide();
                            swal("Error! Please Try Again");
                        },
                        processData: false,
                        contentType: false
                    });

                });
            });
        </script>
        <div class="fbody">

            <footer class="text-center text-white" style="background-color: #cc0033;">
                <!-- Grid container -->
                <div class="container pt-1" style="opacity: 80%;">
                    <!-- Section: Social media -->
                    <section class="mb-2">
                        <!-- Hacker Rank -->
                        <a
                            class="btn btn-link btn-floating btn-lg text-dark m-1"
                            href="https://www.hackerrank.com/arifalinewcoc?hr_r=1"
                            role="button"
                            data-mdb-ripple-color="dark"
                            ><i class="fab fa-hackerrank"></i
                            ></a>

                        <!-- Twitter -->
                        <a
                            class="btn btn-link btn-floating btn-lg text-dark m-1"
                            href="#!"
                            role="button"
                            data-mdb-ripple-color="dark"
                            ><i class="fab fa-twitter"></i
                            ></a>

                        <!-- Google -->
                        <a
                            class="btn btn-link btn-floating btn-lg text-dark m-1"
                            href="https://accounts.google.com/v3/signin/identifier?dsh=S1761703121%3A1690026249757360&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ifkv=AeDOFXhfuJcN2uzCHt62DLF55fqfbZfmOWW8r5jOWXCDqiwKD9-SuIuxS_DrJMONwyK3RvYqTEArhA&rip=1&sacu=1&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
                            role="button"
                            data-mdb-ripple-color="dark"
                            ><i class="fab fa-google"></i
                            ></a>

                        <!-- Instagram -->
                        <a
                            class="btn btn-link btn-floating btn-lg text-dark m-1"
                            href="https://www.instagram.com/arif_x64/?igshid=NGExMmI2YTkyZg%3D%3D"
                            role="button"
                            data-mdb-ripple-color="dark"
                            ><i class="fab fa-instagram"></i
                            ></a>

                        <!-- Linkedin -->
                        <a
                            class="btn btn-link btn-floating btn-lg text-dark m-1"
                            href="https://www.linkedin.com/in/arifali630"
                            role="button"
                            data-mdb-ripple-color="dark"
                            ><i class="fab fa-linkedin"></i
                            ></a>
                        <!-- Github -->
                        <a
                            class="btn btn-link btn-floating btn-lg text-dark m-1"
                            href="https://github.com/arifali2001"
                            role="button"
                            data-mdb-ripple-color="dark"
                            ><i class="fab fa-github"></i
                            ></a>
                    </section>
                    <!-- Section: Social media -->
                    <!--    details of developer-->
                    <div class="container text-center" >
                        <p style="color: #333333; font-family: Cutive Mono; font-size: 12px; margin-bottom: -1%; margin-top: -1%;" ><strong>Query? Any Suggestion?        </strong><spam style='font-family: sans-serif;' class=' lineup'>  <strong>arifali630120@gmail.com</strong></spam><p>
                                            <p style="color: #000000; font-family: Cutive Mono; font-size: 11px; margin: 0.1%; margin-bottom: 0.01%;" ><strong>(Beta Release v1.02)</p>
                        

                    </div>
                </div>
                <!-- Grid container -->

                <!-- Copyright -->
                <div class="text-light p-1" id="footer_text"  style="background-color: #333333;">
                    © 2023 Copyright:
                    <a class="text-light" style='text-decoration: none;' href="http://localhost:9494/Blogech/index.jsp"><span style="color: red;"><strong>Red</strong></span>GPUs</a>
  
                    <p style="font-family: Cutive Mono; font-size: 14px; margin-bottom: .5%;">Developed By:  <strong><a class='animate-charcter' style="color: #cc0033; text-decoration: none; " href='https://www.linkedin.com/in/arifali630'>Arif Ali</a></strong></p>
      
  
                </div>
                <!-- Copyright -->
            </footer>

        </div>
    </body>
</html>


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
    <body>
        <%@include file="normalnav.jsp" %>
        <main class="primary-bg p-5 banner-background">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center secondary-bg">
                            <br>
                            <span class="fa fa-user-plus fa-3x" style=""></span>
                            <p>Register here</p>

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
                                
                                <button id="submitbtn" type="submit" class="btn btn-primary btn-outline-dark primary-bg">Submit</button>
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
    </body>
</html>

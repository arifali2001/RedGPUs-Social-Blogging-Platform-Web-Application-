<%-- 
    Document   : index
    Created on : Jun 1, 2023, 10:15:47 PM
    Author     : Arif
--%>

<%@page import="com.blogech.helpers.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/cssfile1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <!-- Footer CSS -->
        <style>

        </style>
        <!--        footer links-->

        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
        <!-- Google Fonts -->
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <style>
            .fbody{
                height: 50px;
            }
            #footer_text{
                font-family: 'Cutive Mono';
            }
            body{
                background:url(https://images.saymedia-content.com/.image/t_share/MTkzOTUzODU0MDkyODc5MzY1/particlesjs-examples.gif);
                background-size: cover;
                background-attachment: scroll;
            }
        </style>
        <link href='https://fonts.googleapis.com/css?family=Cutive Mono' rel='stylesheet'>




        <!--        /footer links-->
        <!-- /Footer CSS -->

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="normalnav.jsp" %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-bg text-center banner-background">
                <div class="container">
                    <h3 class="display-3 lineup" style='font-family: consolas'>Welcome To <span   style="color: red;"><strong>Red</strong></span>GPUs</h3>
                    <p style="color: #333333; font-family:Cutive Mono ">A graphics processing unit (GPU) is a specialized electronic circuit designed to manipulate and alter memory to accelerate the creation of images in a frame buffer intended for output to a display device. GPUs are used in embedded systems, mobile phones, personal computers, workstations, and game consoles.
                        <a href="https://en.wikipedia.org/wiki/Graphics_processing_unit" style="color: darkgrey">Know more...</a></p>
                    <p style="color: #333333; font-family: Cutive Mono;"><strong>Well! What you looking at? just explore the wide variety of GPUs. <span style="color: red">GPUs</span> provided by top leading companies around the world</strong></p>
                    <button class="btn btn-outline-dark"><span class="fa fa-bolt"></span> Lets Go!</button>
                    <a href="loginpage.jsp" class="btn btn-outline-dark"><span class="fa fa-user-circle-o"></span> Login</a>
                    <br>
                    <br>

                </div>
            </div>
        </div>
        <br>

        <div class="container">
            <h3><strong>Recents Posts</strong></h3>
        </div>

        <div class="container overflow-y-auto" id="post_container" style="height: 500px; alignment-adjust: auto;">


        </div>
        <!--        javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.7.0.min.js"
            integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="javascript/myjs.js" type="text/javascript"></script>
        <script>
            function getPosts(catid, cbtm) {



                $.ajax({
                    url: "load_postforhome.jsp",
                    data: {cid: catid},
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);

                        $("#post_container").show();
                        $('#post_container').html(data);

                    }
                })
            }

//            Main content Loading (posts)
            $(document).ready(function (e) {
                let allpostsbtn = $('.c-link')[0]
                getPosts(0, allpostsbtn)
            })
        </script>

        <!-- Footer Body-->
        <br><!-- space between postcard and footer -->
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





        <!-- /Footer Body-->
    </body>
</html>

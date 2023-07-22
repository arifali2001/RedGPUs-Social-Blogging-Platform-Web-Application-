<%@page isErrorPage="true"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry!</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/cssfile1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
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
    </head>
    <body>
        <div class="container text-center">
            <img src="img/3828537.jpg" class="img-fluid" width="40%" height="40%">
            <h3 class="display-3"><span style="color: red">Fu*k!</span> Something went wrong..</h3>
            <%= exception %>
            <br>
            <a  href="index.jsp" class="btn btn-outline-dark primary-bg mt-3" action="index.jsp">Home</a>
        </div>
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
  
                    <p style="font-family: Cutive Mono; font-size: 14px; margin-bottom: 2%;">Developed By:  <strong><a class='animate-charcter' style="color: #cc0033; text-decoration: none; " href='https://www.linkedin.com/in/arifali630'>Arif Ali</a></strong></p>
      
  
                </div>
                <!-- Copyright -->
            </footer>

        </div>
    </body>
</html>

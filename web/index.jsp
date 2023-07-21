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
        <style>
            
        </style>
    </head>
    <body>
        <%@include file="normalnav.jsp" %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-bg text-center banner-background">
                <div class="container">
                    <h3 class="display-3">Welcome To <span style="color: red;"><strong>Red</strong></span>GPUs</h3>
                    <p style="color: grey;">A graphics processing unit (GPU) is a specialized electronic circuit designed to manipulate and alter memory to accelerate the creation of images in a frame buffer intended for output to a display device. GPUs are used in embedded systems, mobile phones, personal computers, workstations, and game consoles.
                        <a href="https://en.wikipedia.org/wiki/Graphics_processing_unit" style="color: darkgrey">Know more...</a></p>
                <p style="color: grey">Well! What you looking at? just explore the wide variety of GPUs. <span style="color: red">GPUs</span> provided by top leading companies around the world</p>
                <button class="btn btn-outline-dark"><span class="fa fa-bolt"></span> Lets Go!</button>
                <a href="loginpage.jsp" class="btn btn-outline-dark"><span class="fa fa-user-circle-o"></span> Login</a>
                <br>
                <br>
     
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row mb-2">
                <div class="col md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Nvidia RTX 4090</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary btn-outline-dark primary-bg">Explore</a>
                        </div>
                    </div>
                    
                </div>
                <div class="col md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Nvidia RTX 4090</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary btn-outline-dark primary-bg">Explore</a>
                        </div>
                    </div>
                    
                </div>
                <div class="col md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Nvidia RTX 4090</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary btn-outline-dark primary-bg">Explore</a>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            <div class="row">
                <div class="col md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Nvidia RTX 4090</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary btn-outline-dark primary-bg">Explore</a>
                        </div>
                    </div>
                    
                </div>
                <div class="col md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Nvidia RTX 4090</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary btn-outline-dark primary-bg">Explore</a>
                        </div>
                    </div>
                    
                </div>
                <div class="col md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Nvidia RTX 4090</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary btn-outline-dark primary-bg">Explore</a>
                        </div>
                    </div>
                    
                </div>
                
            </div>
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
        </script>
    </body>
</html>

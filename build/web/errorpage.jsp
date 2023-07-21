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
    </head>
    <body>
        <div class="container text-center">
            <img src="img/3828537.jpg" class="img-fluid" width="40%" height="40%">
            <h3 class="display-3"><span style="color: red">Fu*k!</span> Something went wrong..</h3>
            <%= exception %>
            <br>
            <a  href="index.jsp" class="btn btn-outline-dark primary-bg mt-3" action="index.jsp">Home</a>
        </div>
    </body>
</html>

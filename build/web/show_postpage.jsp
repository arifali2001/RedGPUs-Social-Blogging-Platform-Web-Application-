<%@page import="java.text.DateFormat"%>
<%@page import="com.blogech.dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.blogech.entities.Category"%>
<%@page import="com.blogech.entities.Category"%>
<%@page import="com.blogech.entities.Post"%>
<%@page import="com.blogech.helpers.ConnectionProvider"%>
<%@page import="com.blogech.dao.PostDao"%>
<%@page import="com.blogech.entities.User"%>
<%@page errorPage="errorpage.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("loginpage.jsp");
    }


%>
<%    int postid = Integer.parseInt(request.getParameter("post_id"));
PostDao d=new PostDao(ConnectionProvider.getConnection());
Post p=d.getPostByPostID(postid);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= p.getPtitle() %> | RedGPUs</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/cssfile1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                background:url(img/blur.jpg);
                background-size: cover;
                background-attachment: scroll;
            }
            .post-tittle{
                font-weight: 80;
                font-size: 28px;
                
            }
            .post-cont{
                font-weight: 80;
                font-family: Arial;
                font-size: 20px;
            }
            .post-date{
                font-weight: 100;
            }
            .post-user{
                font-family: inter;
                
            }
            .row-user{
                border: 1px solid #666666
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp"><span class="fa fa-microchip"></span> <span style="color: red;font-family: arial; font-size: 18px">Red</span>GPUs</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">

                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <span class="fa fa-check-square-o"></span> Categories
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Intel</a></li>
                                <li><a class="dropdown-item" href="#">Nvidia</a></li>
                                <li><a class="dropdown-item" href="#">AMD</a></li>
                                <li><hr class="dropdown-divider"></li>
                                <li><a class="dropdown-item" href="#">More..</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><span class="fa fa-phone" style="color: grey"></span> Contact</a>

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="modal" data-target = "#add-post-modal"><span class="fa fa-picture-o" style="color: grey"></span> Post</a>

                        </li>


                    </ul>
                    <ul class="navbar-nav mr-right">
                        <li>
                            <a class="nav-link" href="#!" data-bs-toggle="modal" data-bs-target="#profile_Modal"><span><img src="pic/<%= user.getProfile()%>" style="border-radius: 50%;" width="29" height="29" ></span> <%= user.getName()%></a>
                        </li>
                        <li>
                            <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-times" style="color: grey"></span> Logout</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
<!--        main content of the post-->

<div class="container">
    <div class="row my-4">
        <div class="col-md-8 offset-md-2    ">
            <div class="card">
                <div class="card-header primary-bg">
                    <h4 class="post-title"><%= p.getPtitle() %></h4>
                    <p class="post-date"><%= DateFormat.getDateInstance().format(p.getPdate()) %></p>
                    
                </div>
                    <div class="card-body">
                        <img class="card-img-top" src="user_pmedia/<%= p.getPpic()%>" alt="Card image cap">
                        <div class="row my-2 row-user ">
                            <div class="col-md-8">
                                <% UserDao ud= new UserDao(ConnectionProvider.getConnection()); %>
                                <b><p class="post-user">Posted by <a href="#"><%= ud.getUserByUserId(p.getUserID()).getName() %></a></p></b>
                                
                            </div>
                            <div class="col-md-4">
                                
                            </div>
                            
                        </div>
                        <p class="post-cont"><%= p.getPcontent() %></p>
                        <br><!-- comment -->
                        <div class="post-link">
                           <pre><%= p.getPlink() %></pre> 
                        </div>
                        
                        
                    </div>
                        <div class="card-footer tertiary-bg text-center">

                
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-up"></i><spam>11.4k</spam></a>
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i><spam>112</spam></a>

            </div>
                
            </div>
            
        </div>
        
        
    </div>
    
</div>


<!--        end of main content of the post-->

        
        
        
         <!-- Modal -->
        <div class="modal fade" id="profile_Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary-bg">
                        <h4>Profile</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pic/<%= user.getProfile()%>" style="border-radius: 50%;" width="30%" height="30%" ><!-- comment -->

                            <h5 class="modal-title mt-3" style="color: grey" id="exampleModalLabel"><strong><%= user.getName()%></strong></h5>
                            <!--                            infos-->
                            <div id="profile-details">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID: </th>
                                            <td><%=user.getId()%></td>


                                        </tr>
                                        <tr>
                                            <th scope="row">Gender: </th>
                                            <td><%= user.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email: </th>
                                            <td><%= user.getEmail()%></td>


                                        </tr>
                                        <tr>
                                            <th scope="row">About: </th>
                                            <td><%= user.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registration Date: </th>
                                            <td><%= user.getDateTime()%></td>

                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                            <!--                                        Detail Editing-->


                            <div id="profile-edit" style="display: none">
                                <h5 style="color: red" >Note: Please Check Twice Before Saving</h5>
                                <form action="EditServlet" method="POST" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID: </td>
                                            <td><%= user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Name: </td>
                                            <td><input type="text" name="user_name" class="form-control" value="<%= user.getName()%>"> </td>
                                        </tr>
                                        <tr>
                                            <td>Email: </td>
                                            <td><input type="email" name="user_email" class="form-control" value="<%= user.getEmail()%>"> </td>
                                        </tr>
                                        <tr>
                                            <td>Password: </td>
                                            <td><input type="password" name="user_password" class="form-control" value="<%= user.getPassword()%>"> </td>
                                        </tr>
                                        <tr>
                                            <td>Gender: </td>
                                            <td><%= user.getGender()%> </td>
                                        </tr>
                                        <tr>
                                            <td>About: </td>
                                            <td>
                                                <textarea rows="3" class="form-control" name="user_about"><%= user.getAbout()%>
                                                </textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Update Pic: </td>
                                            <td>
                                                <input type="file" class="form-control" name="image">
                                            </td>
                                        </tr>


                                    </table>
                                    <div class="container">
                                        <button type="submit" class="btn btn-outline-primary">Save</button>
                                    </div>

                                </form>


                            </div>




                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" id="edit-profile-btn">Edit</button>
                    </div>
                </div>
            </div>
        </div>


        <!--modalend-profile-->







        <!--                        displaying content-->



       




        <!--                        /displaying content-->



        <!--       postmal-->
        <!-- Button trigger modal -->


        <!-- Post Modal -->
        <div id="fullpostmodal">
            <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header" id="headerofform">
                            <h5 class="modal-title" id="exampleModalLabel">About Post</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">    
                            <form id="post_form" action="PostServlettwo" method="POST">
                                <div class="form-group">
                                    <select class="form-control" name="cid">
                                        <option selected disabled >--Choose Category--</option>
                                        <%                                            PostDao postd = new PostDao(ConnectionProvider.getConnection());

                                            //                                        PostDao postd=new PostDao(ConnectionProvider.getConnection());
                                            ArrayList<Category> list = postd.getAllCategories();
                                            for (Category c : list) {
                                        %>
                                        <option value="<%= c.getCid()%>"><%= c.getName()%></option>

                                        <%
                                            }
                                        %>
                                    </select>

                                </div>
                                <br>
                                <div class="form-group">
                                    <input type="text" name="ptitle" placeholder="Caption" class="form-control">

                                </div>

                                <div class="form-group">
                                    <textarea class="form-control" name="pcontent" placeholder="Content" style="height: 140px"></textarea>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="plink" placeholder="Links"></textarea>
                                </div>
                                <div class="form-group">
                                    <label class="
                                           fa fa-camera-retro" > Select Media</label>
                                    <br>
                                    <input name="ppic" type="file">
                                </div>
                                <div class="container text-center" >
                                    <button type="submit" class="btn btn-outline-primary">Post</button>

                                </div>



                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--       postmalend-->
        
        
        
        
        
        
        
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <!--    javascript-->
        <script
            src="https://code.jquery.com/jquery-3.7.0.min.js"
            integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="javascript/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                let editstatus = false;
                $('#edit-profile-btn').click(function () {
                    if (editstatus == false)
                    {
                        $('#profile-details').hide()
                        $('#profile-edit').show();
                        editstatus = true;
                        $(this).text("Back")
                    } else
                    {
                        $('#profile-details').show()
                        $('#profile-edit').hide();
                        editstatus = false;
                        $(this).text("Edit")
                    }
                })
            });
        </script>



        <script>


            $(document).ready(function () {
                console.log("Running Alternate (Arif_predefined)");

                $('#post_form').on('submit', function (event) {
                    event.preventDefault();
                    console.log("Clicked Submitted");
                    let form = new FormData(this);

                    //Sending data to RegisterServlet
                    $.ajax({
                        url: "PostServlettwo",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            if (data.trim() === "Done") {
                                swal({
                                    title: "Done!",
                                    text: "Your Post is now Public!",
                                    icon: "success",
                                });
//                                $("#post_form").hide();
                                $("#headerofform").hide();
                            } else {
                                swal({
                                    title: "Oh Fuck!",
                                    text: "Something went wrong!",
                                    icon: "error",

                                });
//                                 $("#post_form").show();
                                $("#fullpostmodal").show();
                            }

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("error..");
                            swal({
                                title: "Oh Fuck!",
                                text: "Something went wrong!(Database Problem)",
                                icon: "error",
                            });


                        },
                        processData: false,
                        contentType: false
                    });

                });
            });
        </script>
        <!--        js for posting-->
        <!--        <script>
                    $(document).ready(function(){
                        $('#post_form').on('submit',function(event){
                            event.preventDefault();
                            console.log("You Submitted");
        //                    fetching form data
                            let form = new FormData(this);
                            
        //                    requsting to server
                            $.ajax({
                                ulr: "PostServlettwo",
                                type: 'POST',
                                data: form ,
                                success: function (data, textStatus, jqXHR) {
                                    console.log(data);
                                   
                                
                            },
                            error: function (jqXHR, textStatus, errorThrown) {
                                console.log("Error...");
                                
                            },
                            processData: false,
                            contentType: false
                                    
                                
                            })
                            
                        })
                    })
        
                </script>-->

        <script>
            
            
            function getPosts(catid, cbtm){
                $("#loader").show();
                $("#post_container").hide();
                $(".c-link").removeClass('active')
                
                $.ajax({
                url: "load_posts.jsp",
                data: {cid:catid},
                success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#loader").hide();
                        $("#post_container").show();
                        $('#post_container').html(data);
                        $(cbtm).addClass('active')
                    }
            })
            }
            
//            Main content Loading (posts)
        $(document).ready(function(e){
            let allpostsbtn=$('.c-link')[0]
            getPosts(0,allpostsbtn)
        })
        </script>
    </body>
</html>
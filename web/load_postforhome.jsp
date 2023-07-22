
<%@page import="com.blogech.entities.User"%>
<%@page import="com.blogech.dao.LikeDao"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.blogech.entities.Post"%>
<%@page import="com.blogech.helpers.ConnectionProvider"%>
<%@page import="com.blogech.dao.PostDao"%>
<div class="row mb-1">
    <%

        PostDao d = new PostDao(ConnectionProvider.getConnection());

        int cid = Integer.parseInt(request.getParameter("cid"));
        List<Post> posts = null;
        if (cid == 0) {

            posts = d.getAllposts();
        } else {
            posts = d.getPostByCatId(cid);
        }
        if (posts.size() == 0) {
            out.println("<h4>No Post <spam style='color: red;'>Available</spam></h4>");
            return;
        }
        for (Post p : posts) {
    %>


    <div class="col-md-3">
    <div class="card mb-3" style="width: 18rem;">
        <img class="card-img-top" src="user_pmedia/<%= p.getPpic()%>" alt="Card image cap">
        <div class="card-body forth-bg">
            <h5 class="card-title" style="color: red;"><strong><%= p.getPtitle()%></strong></h5>
            <p class="card-text" style="color: white;"><%= p.getPcontent()%></p>
            <a href="show_postpage.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light btn-sm" >View</a>
        </div>
    </div>
    </div>


    <!--                        Post Modal
    
    
    -->  

    <!--
           
            Post Modal End-->


    <%
        }
    %>
</div>


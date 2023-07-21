
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.blogech.entities.Post"%>
<%@page import="com.blogech.helpers.ConnectionProvider"%>
<%@page import="com.blogech.dao.PostDao"%>
<div class="row">
    <%
        Thread.sleep(200);

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

    <div class="col-md-6">
        <div class="card"> 
            <img class="card-img-top" src="user_pmedia/<%= p.getPpic()%>" alt="Card image cap">
            <div class="card-body forth-bg">
                <b><%= p.getPtitle()%></b>
                <p><%= p.getPcontent()%></p>
    <!--            <pre><%= p.getPlink()%></pre>-->

            </div>
            <div class="card-footer tertiary-bg text-center">

                <a href="show_postpage.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light btn-sm">View</a>
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-thumbs-up"></i><spam>11.4k</spam></a>
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o"></i><spam>112</spam></a>

            </div>

        </div> <br>
    </div>


    <!--                        Post Modal
    
    
-->    <!--
        Post Modal End-->


    <%
        }
    %>
</div>


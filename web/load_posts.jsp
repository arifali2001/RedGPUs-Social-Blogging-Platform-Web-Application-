
<%@page import="com.blogech.entities.User"%>
<%@page import="com.blogech.dao.LikeDao"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@page import="com.blogech.entities.Post"%>
<%@page import="com.blogech.helpers.ConnectionProvider"%>
<%@page import="com.blogech.dao.PostDao"%>
<div class="row">
    <%
        User us=(User)session.getAttribute("currentUser");
        
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

    <div class="col-md-4 " style="border-radius: 5%; margin-top: 5%;">
        <div class="card mb-3" style="border-radius: 5%; margin-top: -5%; box-shadow: 10px 10px 5px #666666;"> 
            
                <img class="" style="border-top-left-radius: 5%; border-top-right-radius: 5%;" src="user_pmedia/<%= p.getPpic()%>" alt="Card image cap">
            
            
            <div class="card-body forth-bg" style="border-radius: 5%; margin-top: -5%;">
                <b style="color: #cc0033;"><%= p.getPtitle()%></b>
                <p style="color: white; font-family: roboto;"><%= p.getPcontent()%></p>
    <!--            <pre><%= p.getPlink()%></pre>-->

            <a href="show_postpage.jsp?post_id=<%= p.getPid()%>" class="btn btn-outline-light btn-sm" style='font-family: Cutive Mono;' >View</a>
                <% 
                LikeDao l=new LikeDao(ConnectionProvider.getConnection());
                
                %>
                <a href="#!" onclick="doLike(<%= p.getPid() %> ,<%= us.getId() %> )" class="btn btn-outline-light btn-sm" style='font-family: Cutive Mono;'><i class="fa fa-thumbs-up"></i><spam ><%= l.countLikeofPost(p.getPid()) %></spam></a>
                <a href="#!" class="btn btn-outline-light btn-sm"><i class="fa fa-commenting-o" ></i><spam>112</spam></a>
            </div>
            

        </div> <br>
    </div>


    <!--                        Post Modal
    
    
-->  

<!--
       
        Post Modal End-->


    <%
        }
    %>
</div>


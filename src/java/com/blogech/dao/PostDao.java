/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blogech.dao;

import com.blogech.entities.Category;
import com.mysql.cj.xdevapi.Result;
import com.mysql.cj.xdevapi.Statement;
import javax.servlet.*;
import java.util.ArrayList;
import java.sql.*;
//import com.mysql.jdbc.Connection;

import com.blogech.dao.UserDao;
import com.blogech.entities.Message;
import com.blogech.entities.Post;
import com.blogech.entities.User;
import com.blogech.helpers.ConnectionProvider;
import com.blogech.helpers.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.concurrent.ExecutionException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


/**
 *
 * @author Arif
 */
public class PostDao {
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    public ArrayList<Category> getAllCategories(){
        ArrayList<Category> list=new ArrayList<>();
        
        try {
//            //            String q = "select * form categories";
////            Statement stmt=(Statement) this.con.createStatement();
////            ResultSet set=stmt.executeQuery(q);
//            
            String q="select * from categories";
            PreparedStatement ps=this.con.prepareStatement(q);
            ResultSet set=ps.executeQuery();
            while(set.next())
            {
                int cid=set.getInt("cid");
                String name=set.getString("name");
                String description=set.getString("description");
                Category c=new Category(cid, name, description);
                list.add(c);
            }

           
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
    }
    
//    saving To DB
    public boolean savePost(Post p){
        boolean t=false;
        try {
            
            
            String q= "insert into posts(ptitle,pcontent,plink,ppic,catid,userId) values (?,?,?,?,?,?)";
            PreparedStatement pstm=con.prepareStatement(q);
            pstm.setString(1,p.getPtitle());
            pstm.setString(2,p.getPcontent());
            pstm.setString(3,p.getPlink());
            pstm.setString(4,p.getPpic());
            pstm.setInt(5,p.getCatid());
            pstm.setInt(6,p.getUserID());
            pstm.executeUpdate();
            t= true;
            
            
            
            
        } catch (Exception e) {
            e.printStackTrace();
        } return t;
    }
    
    
//    extracting all the post detailssqs
    public List<Post> getAllposts(){
        
        List<Post> list=new ArrayList<>();
        
        try {
            PreparedStatement p=con.prepareStatement("select * from posts order by pid desc");
            ResultSet set=p.executeQuery();
            
            while(set.next()){
                
                int pid=set.getInt("pid");
                int catId=set.getInt("catid");
                int userId=set.getInt("userID");
                String ptitle=set.getString("ptitle");
                String pcontent=set.getString("pcontent");
                String plink=set.getString("plink");
                String ppic=set.getString("ppic");
                Timestamp pdate=set.getTimestamp("pdate");
               Post ppost = new Post(pid, ptitle, pcontent, plink, ppic, pdate, catId, userId);
              list.add(ppost);
               
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return list;
        
    }
    public List<Post> getPostByCatId(int catId){
     
        
        List<Post> list=new ArrayList<>();
        try {
            PreparedStatement p=con.prepareStatement("select * from posts where catid=?");
            p.setInt(1, catId);
            ResultSet set=p.executeQuery();
            
            while(set.next()){
                
                int pid=set.getInt("pid");
                
                int userId=set.getInt("userID");
                String ptitle=set.getString("ptitle");
                String pcontent=set.getString("pcontent");
                String plink=set.getString("plink");
                String ppic=set.getString("ppic");
                Timestamp pdate=set.getTimestamp("pdate");
               Post ppost = new Post(pid, ptitle, pcontent, plink, ppic, pdate, catId, userId);
              list.add(ppost);
               
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return list;
    }
    public Post getPostByPostID(int postid) throws SQLException
    {
        Post post=null;
        String q="select * from posts where pid=?";
        try{
        PreparedStatement p=this.con.prepareStatement(q);
        p.setInt(1, postid);
        ResultSet set=p.executeQuery();
            
            while(set.next()){
                
                int pid=set.getInt("pid");
                int catId=set.getInt("catid");
                int userId=set.getInt("userID");
                String ptitle=set.getString("ptitle");
                String pcontent=set.getString("pcontent");
                String plink=set.getString("plink");
                String ppic=set.getString("ppic");
                Timestamp pdate=set.getTimestamp("pdate");
                post = new Post(pid, ptitle, pcontent, plink, ppic, pdate, catId, userId);
            }
        
        }catch(Exception e){
            e.printStackTrace();
        }
        return post;
    }
    
}

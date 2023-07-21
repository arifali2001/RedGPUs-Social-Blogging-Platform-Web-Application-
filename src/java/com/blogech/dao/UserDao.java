package com.blogech.dao;

import com.blogech.entities.User;
import java.sql.*;

public class UserDao {

    private Connection con;
    
    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean t = false;
        try {
//            user info saving to DB
            String query = "insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.executeUpdate();
            t = true;
            
        } catch (Exception e) {
            
            e.printStackTrace();
            
        }
        return t;
        
    }
//    getting user info for login page

    public User getUserbyEmailPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where email=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set = pstmt.executeQuery();
            if (set.next()) {
                user = new User();
                //extractiong data and inserting them into user object
                user.setName(set.getString("name"));
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
    }

    //updating the new edited infos
    public boolean updateUser(User user)
    

    { boolean t=false;
        try {
            String query = "update user set name=?, email=?, password=?, gender=?, about=?, profile=? where id=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            pstmt.setString(6, user.getProfile());
            pstmt.setInt(7, user.getId());
            pstmt.executeUpdate();
            t=true;
           
            
        } catch (Exception e) {
            e.printStackTrace();
        }    return t;    
    }
    public User getUserByUserId(int userId) throws SQLException{
        User user=null;
        try{
        String q="select *from user where id=? ";
        PreparedStatement p=this.con.prepareStatement(q);
        p.setInt(1, userId);
        ResultSet set=p.executeQuery();
        if(set.next()){
             user = new User();
                //extractiong data and inserting them into user object
                user.setName(set.getString("name"));
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                user.setDateTime(set.getTimestamp("rdate"));
                user.setProfile(set.getString("profile"));
        }
        }catch(Exception e){
            e.printStackTrace();
            
        }
        
        return user;
    }
   
    
}

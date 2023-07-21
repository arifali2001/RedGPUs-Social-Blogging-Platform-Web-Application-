/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blogech.dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;


/**
 *
 * @author Arif
 */
public class LikeDao {
    Connection con;
    public LikeDao(Connection con){
        this.con=con;
    }
    public boolean dolike(int pid, int uid){
        boolean f=false;
        try{
            String q="insert into like(pid,uid)values(?,?)";
            PreparedStatement p = (PreparedStatement) this.con.prepareStatement(q);
            p.setInt(1,pid);
            p.setInt(2,uid);
            p.executeUpdate();
            f=true;
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    public int countLikeofPost(int pid){
        
        int count=0;
        String  q="select count(*) from like where pid=?";
        try {
           PreparedStatement p=(PreparedStatement) this.con.prepareStatement(q);
           p.setInt(1,pid);
           ResultSet set=(ResultSet) p.executeQuery();
           if(set.next()){
               count=set.getInt("count(*)");
           }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
        
    }
    
}

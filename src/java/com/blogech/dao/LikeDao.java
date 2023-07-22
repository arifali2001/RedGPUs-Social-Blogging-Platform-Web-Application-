/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blogech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 *
 * @author Arif
 */
public class LikeDao {
    Connection con;
    public LikeDao(Connection con){
        this.con=con;
    }
    public boolean doLike(int pid, int uid){
        boolean f=false;
        try{
            String q="insert into liked(pid,uid)values(?,?)";
            PreparedStatement p = this.con.prepareStatement(q);
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
        String  q="select count(*) from liked where pid=?";
        try {
           PreparedStatement p=this.con.prepareStatement(q);
           p.setInt(1,pid);
           ResultSet set=p.executeQuery();
           if(set.next()){
               count=set.getInt("count(*)");
           }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
        
    }
    public boolean isLikedByUser(int pid, int uid){
        boolean f=false;
        try {
            String q="select * from liked where pid=? and uid=?";
            PreparedStatement pt=this.con.prepareStatement(q);
            pt.setInt(1,pid);
            pt.setInt(2,uid);
            ResultSet set= pt.executeQuery();
            if(set.next()){
                f=true;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }
    public boolean removeLike(int pid, int uid){
        boolean f=false;
        try {
            PreparedStatement pt= this.con.prepareStatement("delete from liked where pid=? and uid=?");
            pt.setInt(1, pid);
            pt.setInt(2 , uid);
            pt.executeUpdate();
            f=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return f;
        
    }
    
}

package com.blogech.helpers;
import java.sql.*;
public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection(){
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogech", "root", "root");

        } catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }
        
    
}

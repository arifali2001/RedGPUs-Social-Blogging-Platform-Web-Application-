/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blogech.helpers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

/**
 *
 * @author Arif
 */
public class Helper {
    public static boolean deleteFile(String path)
    {
        boolean t=false;
        
        try {
            File file=new File(path);
            t=file.delete();
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
        return t;
        
    }
    public static boolean saveFile(InputStream is, String path)
    {
        boolean t=false;
         try {
             
             byte b[]= new byte[is.available()];
             is.read(b);
             
             FileOutputStream fos=new FileOutputStream(path);
             fos.write(b);
             fos.flush();
             fos.close();
             t=true;
             
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
        
        return t;
    }
    
}

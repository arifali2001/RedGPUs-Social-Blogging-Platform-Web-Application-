/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blogech.entities;

import java.sql.Timestamp;
import java.sql.*;

public class Post {
    private int pid;
    private String ptitle;
    private String pcontent;
    private String plink;
    private String ppic;
    private Timestamp pdate;
    private int catid;
    private int userID;

    public Post() {
    }

    public Post(int pid, String ptitle, String pcontent, String plink, String ppic, Timestamp pdate, int catid,int userID) {
        this.pid = pid;
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.plink = plink;
        this.ppic = ppic;
        this.pdate = pdate;
        this.catid = catid;
        this.userID=userID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public Post(String ptitle, String pcontent, String plink, String ppic, Timestamp pdate, int catid, int userId) {
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.plink = plink;
        this.ppic = ppic;
        this.pdate = pdate;
        this.catid = catid;
        this.userID=userId;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public String getPlink() {
        return plink;
    }

    public void setPlink(String plink) {
        this.plink = plink;
    }

    public String getPpic() {
        return ppic;
    }

    public void setPpic(String ppic) {
        this.ppic = ppic;
    }

    public Timestamp getPdate() {
        return pdate;
    }

    public void setPdate(Timestamp pdate) {
        this.pdate = pdate;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }
    
    
    
}

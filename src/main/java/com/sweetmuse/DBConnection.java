package com.sweetmuse;
import java.sql.*;

public class DBConnection {
    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // දත්ත බැංකුවේ නම සහ Username/Password හරියටම චෙක් කරන්න
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/sweet_muse_db", "root", "");
        } catch (Exception e) {
            System.out.println("Connection Error: " + e.getMessage());
            return null;
        }
    }
}
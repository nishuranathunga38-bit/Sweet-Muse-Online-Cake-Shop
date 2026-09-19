package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*; // මෙය අනිවාර්යයි


public class AdminServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String action = request.getParameter("action");
        
        try {
            Connection con = DBConnection.getConnection();
            
            if ("addGallery".equals(action)) {
                String url = request.getParameter("url");
                PreparedStatement ps = con.prepareStatement("INSERT INTO gallery(image_url) VALUES(?)");
                ps.setString(1, url);
                ps.executeUpdate();
                
            } else if ("addMenu".equals(action)) {
                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                String url = request.getParameter("url");
                
                PreparedStatement ps = con.prepareStatement("INSERT INTO menu(name, price, image_url) VALUES(?,?,?)");
                ps.setString(1, name);
                ps.setDouble(2, price);
                ps.setString(3, url);
                ps.executeUpdate();
            }
            con.close(); // connection එක close කරන්න
        } catch (Exception e) {
            e.printStackTrace(); 
        }
        response.sendRedirect("admin.jsp");
    }
}
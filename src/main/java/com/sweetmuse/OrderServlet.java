package com.sweetmuse;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class OrderServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("customer_name");
        String type = request.getParameter("food_name");
        String note = request.getParameter("notes");

        try {
            Connection con = DBConnection.getConnection();
            
            // Database එකේ columns වලට සමානව මෙතැන name, type, note කියලා වෙනස් කර ඇත
            String query = "INSERT INTO orders (name, type, note, status) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            
            ps.setString(1, name);
            ps.setString(2, type);
            ps.setString(3, note);
            ps.setString(4, "Success"); // ඩේටාබේස් එකේ 'Success' කියලා වැටෙන නිසා මෙතැනත් එහෙමම දාමු
            
            ps.executeUpdate();
            con.close();
            
            // සාර්ථක නම් success එක යවයි
            response.sendRedirect("order.jsp?status=success");
            
        } catch (Exception e) {
            e.printStackTrace(); 
            response.sendRedirect("order.jsp?status=error");
        }
    }
}
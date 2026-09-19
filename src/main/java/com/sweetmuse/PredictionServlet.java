package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;


public class PredictionServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            Connection con = DBConnection.getConnection();
            
            // Database එකේ 'name' සහ 'amount' තියෙන නිසා Query එක මෙහෙමයි:
            String sql = "SELECT name, SUM(amount) as total FROM orders GROUP BY name ORDER BY total DESC LIMIT 3";
            ResultSet rs = con.createStatement().executeQuery(sql);
            
            List<String> bestSellers = new ArrayList<>();
            while(rs.next()) {
                // name සහ total amount එක දත්ත ලැයිස්තුවට එකතු කරනවා
                bestSellers.add(rs.getString("name") + " - Value: " + rs.getString("total"));
            }
            con.close();

            // Discount Logic
            int hour = java.time.LocalTime.now().getHour();
            String discount = (hour >= 14 && hour <= 16) ? "20% OFF Coffee / BOGO Cake" : "No active offers currently.";

            request.getSession().setAttribute("bestSellers", bestSellers);
            request.getSession().setAttribute("discountRec", discount);
            
            response.sendRedirect("ai-prediction.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;


public class ReportServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            Connection con = DBConnection.getConnection();
            
            // Total Revenue
            String sqlRevenue = "SELECT SUM(amount) as total_rev FROM orders";
            ResultSet rs1 = con.createStatement().executeQuery(sqlRevenue);
            double totalRev = rs1.next() ? rs1.getDouble("total_rev") : 0;
            
            // Item Wise Sales
            String sqlItems = "SELECT name, SUM(amount) as sales FROM orders GROUP BY name";
            ResultSet rs2 = con.createStatement().executeQuery(sqlItems);
            Map<String, Double> salesMap = new LinkedHashMap<>();
            while(rs2.next()) {
                salesMap.put(rs2.getString("name"), rs2.getDouble("sales"));
            }
            
            request.getSession().setAttribute("totalRevenue", totalRev);
            request.getSession().setAttribute("salesMap", salesMap);
            
            con.close();
            response.sendRedirect("view-reports.jsp");
        } catch (Exception e) { e.printStackTrace(); }
    }
}
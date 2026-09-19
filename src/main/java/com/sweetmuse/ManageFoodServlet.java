package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;


public class ManageFoodServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("foodName");
        String price = request.getParameter("price");
        String image = request.getParameter("image");

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO foods(name, price, image) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setString(3, image);
            ps.executeUpdate();
            con.close();
            response.sendRedirect("manage-foods.jsp?success=1");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("manage-foods.jsp?error=1");
        }
    }
}
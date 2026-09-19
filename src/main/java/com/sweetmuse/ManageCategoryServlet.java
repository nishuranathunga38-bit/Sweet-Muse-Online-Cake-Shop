package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;


public class ManageCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String catName = request.getParameter("categoryName");

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO categories(category_name) VALUES(?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, catName);
            ps.executeUpdate();
            con.close();
            response.sendRedirect("manage-categories.jsp?success=1");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("manage-categories.jsp?error=1");
        }
    }
}
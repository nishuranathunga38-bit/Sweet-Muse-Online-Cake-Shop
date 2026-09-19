package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class ManageStaffServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("staffName");
        String role = request.getParameter("role");
        String email = request.getParameter("email");

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO staff(name, role, email) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, role);
            ps.setString(3, email);
            ps.executeUpdate();
            con.close();
            response.sendRedirect("manage-staff.jsp?success=1");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("manage-staff.jsp?error=1");
        }
    }
}
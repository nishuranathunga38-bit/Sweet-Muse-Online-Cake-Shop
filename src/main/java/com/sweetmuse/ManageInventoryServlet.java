package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/ManageInventoryServlet")
public class ManageInventoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("itemName");
        int qty = Integer.parseInt(request.getParameter("quantity"));
        int threshold = Integer.parseInt(request.getParameter("threshold"));

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO inventory(item_name, quantity, threshold, status) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, qty);
            ps.setInt(3, threshold);
            ps.setString(4, (qty < threshold) ? "Low Stock" : "In Stock");
            ps.executeUpdate();
            con.close();
            response.sendRedirect("manage-inventory.jsp?success=1");
        } catch (Exception e) { e.printStackTrace(); response.sendRedirect("manage-inventory.jsp?error=1"); }
    }
}
package com.sweetmuse;

import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;

public class OrderProcessServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String amount = request.getParameter("amount");
        String method = request.getParameter("payment");

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO orders(amount, method, status) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, amount);
            ps.setString(2, method);
            ps.setString(3, "Success");
            ps.executeUpdate();
            con.close();
            
            // Redirect එක හරියටම මෙතන
            response.sendRedirect("order-success.jsp");
            
        } catch (Exception e) {
            e.printStackTrace();
            // Error එකක් ආවොත් පමණක් මෙතනට යන්න
            response.sendRedirect("cart.jsp?error=1");
        }
    }
}
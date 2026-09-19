package com.sweetmuse;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String itemName = request.getParameter("name");
        String itemPrice = request.getParameter("price");
        
        HttpSession session = request.getSession();
        List<String[]> cart = (List<String[]>) session.getAttribute("cart");
        
        if (cart == null) {
            cart = new ArrayList<>();
        }
        
        if (itemName != null && itemPrice != null) {
            cart.add(new String[]{itemName, itemPrice});
        }
        
        session.setAttribute("cart", cart);
        response.sendRedirect("cart.jsp");
    }
}
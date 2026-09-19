package com.sweetmuse;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;


public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String u = request.getParameter("user");
        String p = request.getParameter("pass");

        // මෙතන අකුරු වැරදි නම් ලොග් වෙන්න බැහැ
        if("admin".equals(u) && "sweet123".equals(p)) {
            request.getSession(true).setAttribute("admin", "true");
            response.sendRedirect("admin.jsp");
        } else {
            response.sendRedirect("login.jsp?error=1");
        }
    }
}
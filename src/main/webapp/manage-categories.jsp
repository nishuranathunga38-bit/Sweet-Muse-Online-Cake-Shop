<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, com.sweetmuse.DBConnection"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f8f9fa;">
    <div style="margin-left: 250px; padding: 30px;">
        <h2>Manage Categories</h2>
        
        <div class="card p-4 shadow-sm mb-4">
            <form action="ManageCategoryServlet" method="POST" class="row g-3">
                <div class="col-md-9"><input type="text" name="categoryName" class="form-control" placeholder="Category Name" required></div>
                <div class="col-md-3"><button type="submit" class="btn btn-primary w-100">Add Category</button></div>
            </form>
        </div>

        <table class="table table-hover shadow-sm bg-white">
            <thead class="table-dark">
                <tr><th>ID</th><th>Category Name</th><th>Action</th></tr>
            </thead>
            <tbody>
                <%
                    Connection con = DBConnection.getConnection();
                    if (con != null) {
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("SELECT * FROM categories");
                        while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("category_name") %></td>
                    <td><a href="DeleteCategoryServlet?id=<%= rs.getInt("id") %>" class="btn btn-sm btn-danger">Delete</a></td>
                </tr>
                <% 
                        } 
                        con.close(); 
                    } else {
                        out.println("<tr><td colspan='3' class='text-danger'>Database Connection Failed!</td></tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
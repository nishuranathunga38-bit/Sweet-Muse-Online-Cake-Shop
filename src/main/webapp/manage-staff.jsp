<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, com.sweetmuse.DBConnection"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Staff | SweetMuse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f8f9fa;">
    <div style="margin-left: 250px; padding: 30px;">
        <h2 class="mb-4">Manage Staff</h2>
        
        <div class="card p-4 shadow-sm mb-4">
            <form action="ManageStaffServlet" method="POST" class="row g-3">
                <div class="col-md-4"><input type="text" name="staffName" class="form-control" placeholder="Staff Name" required></div>
                <div class="col-md-3"><input type="text" name="role" class="form-control" placeholder="Role (e.g. Chef, Waiter)" required></div>
                <div class="col-md-3"><input type="email" name="email" class="form-control" placeholder="Email" required></div>
                <div class="col-md-2"><button type="submit" class="btn btn-success w-100">Add Staff</button></div>
            </form>
        </div>

        <table class="table table-hover shadow-sm bg-white">
            <thead class="table-dark">
                <tr><th>ID</th><th>Name</th><th>Role</th><th>Email</th><th>Action</th></tr>
            </thead>
            <tbody>
                <%
                    Connection con = DBConnection.getConnection();
                    if(con != null) {
                        ResultSet rs = con.createStatement().executeQuery("SELECT * FROM staff");
                        while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("role") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><button class="btn btn-sm btn-outline-danger">Delete</button></td>
                </tr>
                <% 
                        } con.close();
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
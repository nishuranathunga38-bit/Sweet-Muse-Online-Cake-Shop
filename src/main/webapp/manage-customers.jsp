<%@page import="java.sql.*, com.sweetmuse.DBConnection"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        body { background-color: #f8f9fa; }
        .card { border: none; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        .table thead { background-color: #343a40; color: white; }
    </style>
</head>
<body>
<div style="margin-left: 270px; padding: 40px;">
    <h2 class="mb-4 fw-bold text-primary"><i class="bi bi-people-fill"></i> Manage Customers</h2>
    
    <div class="card p-4 mb-5">
        <h5 class="mb-3 text-secondary">Add New Customer</h5>
        <form action="CustomerServlet" method="POST" class="row g-3">
            <div class="col-md-3">
                <input type="text" name="name" class="form-control" placeholder="Customer Name" required>
            </div>
            <div class="col-md-3">
                <input type="email" name="email" class="form-control" placeholder="Email Address">
            </div>
            <div class="col-md-3">
                <input type="text" name="phone" class="form-control" placeholder="Phone Number">
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-primary w-100"><i class="bi bi-plus-circle"></i> Add Customer</button>
            </div>
        </form>
    </div>

    <div class="card p-4">
        <h5 class="mb-3 text-secondary">Registered Customers</h5>
        <table class="table table-hover align-middle">
            <thead class="table-dark">
                <tr><th>ID</th><th>Name</th><th>Email</th><th>Phone</th></tr>
            </thead>
            <tbody>
                <% 
                    Connection con = null;
                    try {
                        con = DBConnection.getConnection();
                        ResultSet rs = con.createStatement().executeQuery("SELECT * FROM customers");
                        while(rs.next()) { 
                %>
                <tr>
                    <td><span class="badge bg-secondary"><%= rs.getInt("id") %></span></td>
                    <td class="fw-bold"><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("phone") %></td>
                </tr>
                <% } } catch(Exception e) { e.printStackTrace(); } finally { if(con!=null) con.close(); } %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
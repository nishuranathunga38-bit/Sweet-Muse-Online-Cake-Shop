<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*, com.sweetmuse.DBConnection"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Inventory | SweetMuse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f8f9fa;">
    <div style="margin-left: 250px; padding: 30px;">
        <h2 class="mb-4">Manage Inventory</h2>
        
        <div class="card p-4 shadow-sm mb-4">
            <h5>Add New Inventory Item</h5>
            <form action="ManageInventoryServlet" method="POST" class="row g-3">
                <div class="col-md-4"><input type="text" name="itemName" class="form-control" placeholder="Item Name" required></div>
                <div class="col-md-2"><input type="number" name="quantity" class="form-control" placeholder="Qty" required></div>
                <div class="col-md-2"><input type="number" name="threshold" class="form-control" placeholder="Alert Level" required></div>
                <div class="col-md-2"><button type="submit" class="btn btn-primary w-100">Add Item</button></div>
            </form>
        </div>

        <table class="table table-hover shadow-sm bg-white">
            <thead class="table-dark">
                <tr><th>ID</th><th>Item Name</th><th>Quantity</th><th>Status</th><th>Action</th></tr>
            </thead>
            <tbody>
                <%
                    Connection con = DBConnection.getConnection();
                    if(con != null) {
                        ResultSet rs = con.createStatement().executeQuery("SELECT * FROM inventory");
                        while(rs.next()){
                            String statusClass = rs.getString("status").equals("Low Stock") ? "text-danger fw-bold" : "text-success";
                %>
                <tr>
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getString("item_name") %></td>
                    <td><%= rs.getInt("quantity") %></td>
                    <td class="<%= statusClass %>"><%= rs.getString("status") %></td>
                    <td><button class="btn btn-sm btn-outline-warning">Edit</button></td>
                </tr>
                <% } con.close(); } %>
            </tbody>
        </table>
    </div>
</body>
</html>
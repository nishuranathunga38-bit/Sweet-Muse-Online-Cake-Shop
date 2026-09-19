<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        .report-container { margin-left: 270px; padding: 40px; background-color: #f4f7f6; min-height: 100vh; }
        .stats-card { border-radius: 20px; border: none; transition: 0.3s; box-shadow: 0 10px 20px rgba(0,0,0,0.05); }
        .stats-card:hover { transform: translateY(-5px); }
        .table-card { border-radius: 20px; border: none; box-shadow: 0 10px 20px rgba(0,0,0,0.05); }
    </style>
</head>
<body>
<div class="report-container">
    <h2 class="mb-4 fw-bold text-dark"><i class="bi bi-graph-up-arrow text-primary"></i> Business Performance</h2>
    
    <div class="row">
        <div class="col-md-4">
            <div class="card p-4 stats-card bg-primary text-white">
                <h6>Total Revenue</h6>
                <h2 class="fw-bold">Rs. <%= session.getAttribute("totalRevenue") != null ? session.getAttribute("totalRevenue") : "0.00" %></h2>
            </div>
        </div>
    </div>

    <div class="card mt-4 p-4 table-card">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="fw-bold">Item-wise Sales Breakdown</h5>
            <a href="ReportServlet" class="btn btn-outline-primary btn-sm"><i class="bi bi-arrow-clockwise"></i> Refresh</a>
        </div>
        <table class="table table-hover align-middle">
            <thead class="table-light">
                <tr><th>Food Name</th><th class="text-end">Total Sales (Rs.)</th></tr>
            </thead>
            <tbody>
                <% Map<String, Double> map = (Map<String, Double>)session.getAttribute("salesMap");
                   if(map != null && !map.isEmpty()) { 
                       for(Map.Entry<String, Double> entry : map.entrySet()) { %>
                    <tr>
                        <td class="fw-semibold"><%= entry.getKey() %></td>
                        <td class="text-end text-primary fw-bold">Rs. <%= String.format("%.2f", entry.getValue()) %></td>
                    </tr>
                <% }} else { %>
                    <tr><td colspan="2" class="text-center text-muted">No sales data found.</td></tr>
                <% } %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
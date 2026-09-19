<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.List"%>
<%@include file="sidebar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f4f7f6;">
    <div style="margin-left: 270px; padding: 40px;">
        <h2 class="text-dark mb-4">SweetMuse AI Business Intelligence</h2>
        
        <div class="row g-4">
            <div class="col-md-6">
                <div class="card p-4 border-0 shadow-sm">
                    <h5>🏆 Top Selling Items</h5>
                    <ul class="list-group mt-3">
                        <% 
                            List<String> best = (List<String>)session.getAttribute("bestSellers");
                            if(best != null && !best.isEmpty()) { 
                                for(String s : best) { %>
                                    <li class="list-group-item text-success"><%= s %></li>
                        <% }} else { %>
                            <li class="list-group-item">No data available. Click 'Run' to analyze.</li>
                        <% } %>
                    </ul>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card p-4 border-0 shadow-sm bg-dark text-white">
                    <h5>⚡ Smart Discount Advisor</h5>
                    <p class="fs-4 mt-3"><%= session.getAttribute("discountRec") != null ? session.getAttribute("discountRec") : "Click 'Run' to analyze" %></p>
                </div>
            </div>
        </div>

        <div class="mt-4">
            <a href="${pageContext.request.contextPath}/PredictionServlet" class="btn btn-primary btn-lg">Run AI Analysis</a>
        </div>
    </div>
</body>
</html>
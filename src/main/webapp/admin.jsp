<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>SweetMuse Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Sidebar එකේ පෙනුම */
        .sidebar { min-height: 100vh; background: #2c3e50; color: white; }
        .nav-link { color: #bdc3c7; transition: 0.3s; }
        .nav-link:hover { color: white; background: #34495e; }
        
        /* මුළු පිටුවේම පසුබිම - Professional look සඳහා */
        body { background-color: #f4f7f6; } 

        /* කාඩ් එකේ පෙනුම */
        .card-stats { border-left: 5px solid #27ae60; background-color: #ffffff; }
    </style>
</head>
<body>

<div class="d-flex">
    <div class="sidebar p-3" style="width: 250px;">
        <h4 class="text-center text-success">SweetMuse</h4>
        <hr>
        <ul class="nav flex-column">
            <li class="nav-item"><a class="nav-link" href="manage-foods.jsp">Manage Foods</a></li>
            <li class="nav-item"><a class="nav-link" href="manage-categories.jsp">Manage Categories</a></li>
            <li class="nav-item"><a class="nav-link" href="manage-staff.jsp">Manage Staff</a></li>
            <li class="nav-item"><a class="nav-link" href="manage-inventory.jsp">Manage Inventory</a></li>
            <li class="nav-item"><a class="nav-link" href="manage-orders.jsp">Manage Orders</a></li>
            <li class="nav-item"><a class="nav-link" href="ai-predictions.jsp">AI Predictions</a></li>
            <li class="nav-item"><a class="nav-link" href="view-reports.jsp">View Reports</a></li>
            <li class="nav-item"><a class="nav-link" href="manage-customers.jsp">Manage Customers</a></li>
            <li class="nav-item"><a class="nav-link" href="view-feedback.jsp">View Feedback</a></li>
        </ul>
    </div>

    <div class="container-fluid p-4">
        <h2 class="mb-4">Admin Dashboard Overview</h2>
        
        <div class="row">
            <div class="col-md-3">
                <div class="card p-3 card-stats shadow">
                    <h5>Total Orders</h5>
                    <h3>125</h3>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card p-3 card-stats shadow" style="border-left-color: #3498db;">
                    <h5>Revenue</h5>
                    <h3>Rs. 45,000</h3>
                </div>
            </div>
        </div>

        <div class="mt-4 p-4 bg-white shadow rounded">
            <h4>Quick Manage: Foods</h4>
            <form action="ManageFoodServlet" method="POST" class="row g-3">
                <div class="col-md-4">
                    <input type="text" name="foodName" class="form-control" placeholder="Item Name">
                </div>
                <div class="col-md-3">
                    <input type="number" name="price" class="form-control" placeholder="Price">
                </div>
                <div class="col-md-3">
                    <input type="text" name="image" class="form-control" placeholder="Image URL">
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-success w-100">Add Food</button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
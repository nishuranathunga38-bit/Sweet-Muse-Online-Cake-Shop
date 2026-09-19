<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Foods | SweetMuse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f8f9fa;">

    <div class="d-flex">
        <%@include file="sidebar.jsp" %>
        
        <div style="margin-left: 270px; width: 100%; padding: 30px;">
            <h2 class="mb-4">Manage Foods</h2>
            
            <div class="card p-4 shadow-sm mb-4">
                <h5 class="mb-3">Add New Food Item</h5>
                <form action="ManageFoodServlet" method="POST" class="row g-3">
                    <div class="col-md-3"><input type="text" name="foodName" class="form-control" placeholder="Food Name" required></div>
                    <div class="col-md-2"><input type="number" name="price" class="form-control" placeholder="Price" required></div>
                    <div class="col-md-4"><input type="text" name="image" class="form-control" placeholder="Image URL"></div>
                    <div class="col-md-2"><button type="submit" class="btn btn-success w-100">Add Food</button></div>
                </form>
            </div>

            <div class="card p-4 shadow-sm">
                <table class="table table-hover align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Chocolate Fudge</td>
                            <td>Rs. 2500</td>
                            <td>
                                <button class="btn btn-sm btn-outline-warning">Edit</button>
                                <button class="btn btn-sm btn-outline-danger">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
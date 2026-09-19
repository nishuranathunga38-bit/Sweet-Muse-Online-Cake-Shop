<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart - SweetMuse</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
    </style>
</head>
<body>

    <div class="container my-5">
        <h2 class="mb-4 fw-bold">Shopping Cart</h2>

        <div class="row g-4">
            <!-- Left Side: Cart Items Table -->
            <div class="col-lg-8">
                <div class="table-responsive bg-white rounded shadow-sm p-3">
                    <table class="table table-hover align-middle mb-0">
                        <thead class="table-dark">
                            <tr>
                                <th>Item</th>
                                <th>Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Cart Items Loop -->
                            <tr>
                                <td>Red Velvet</td>
                                <td>Rs. 2800</td>
                            </tr>
                            <tr>
                                <td>Red Velvet</td>
                                <td>Rs. 2800</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Right Side: Order Summary -->
            <div class="col-lg-4">
                <div class="bg-white p-4 rounded shadow-sm">
                    <h4 class="fw-bold mb-3">Order Summary</h4>
                    <hr>
                    <div class="d-flex justify-content-between align-items-center my-3">
                        <span class="fs-5 fw-semibold">Total:</span>
                        <span class="fs-5 fw-bold text-primary">Rs. 5600.0</span>
                    </div>

                    <!-- Single Checkout Button -->
                    <a href="checkout.jsp" class="btn btn-success w-100 py-2 fw-bold mt-2">
                        Checkout
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
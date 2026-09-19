<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Checkout - SweetMuse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light container mt-5">
    <div class="card p-4 shadow mx-auto" style="max-width: 500px;">
        <h2>Checkout</h2>
        <hr>
        <p>Total Amount: <strong class="text-primary">Rs. <%= request.getParameter("total") %></strong></p>
        
        <form action="OrderProcessServlet" method="POST">
            <input type="hidden" name="amount" value="<%= request.getParameter("total") %>">
            
            <div class="mb-3">
                <label>Select Payment Method:</label>
                <select name="payment" class="form-control">
                    <option value="COD">Cash on Delivery</option>
                    <option value="Card">Credit/Debit Card</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary w-100">Confirm & Pay</button>
        </form>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SweetMuse - Place Custom Cake Order</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .order-card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            padding: 30px;
        }
        .help-card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            padding: 25px;
            border-left: 5px solid #198754;
        }
    </style>
</head>
<body>

    <div class="container my-5">
        <div class="row g-4">
            
            <!-- Left Side: Order Form -->
            <div class="col-lg-7">
                <div class="order-card">
                    <h2 class="text-success mb-4 fw-bold">Place Your Custom Cake Order</h2>
                    
                    <!-- Form එක submit වෙන්නේ OrderServlet එකට -->
                    <form action="OrderServlet" method="POST">
                        <div class="mb-3">
                            <label for="customer_name" class="form-label fw-semibold">Full Name</label>
                            <input type="text" class="form-control" id="customer_name" name="customer_name" placeholder="Enter your name" required>
                        </div>

                        <div class="mb-3">
                            <label for="food_name" class="form-label fw-semibold">Cake Type / Occasion</label>
                            <input type="text" class="form-control" id="food_name" name="food_name" placeholder="e.g. Birthday Cake, Wedding" required>
                        </div>

                        <div class="mb-3">
                            <label for="notes" class="form-label fw-semibold">Special Instructions / Custom Notes</label>
                            <textarea class="form-control" id="notes" name="notes" rows="4" placeholder="Enter any special design details or notes..."></textarea>
                        </div>

                        <button type="submit" class="btn btn-success w-100 py-2 fw-bold">Confirm Order</button>
                    </form>
                </div>
            </div>

            <!-- Right Side: Help & WhatsApp Section -->
            <div class="col-lg-5">
                <div class="help-card">
                    <h4 class="fw-bold mb-3">Need Help?</h4>
                    <p class="text-muted">Have questions about your order or want a special design? Contact us directly!</p>
                    
                    <div class="p-3 bg-light rounded mb-3">
                        <p class="mb-1"><strong>WhatsApp:</strong> 076 113 2575</p>
                        <p class="mb-0"><strong>Email:</strong> contact@sweetmuse.com</p>
                    </div>

                    <a href="https://wa.me/94761132575" target="_blank" class="btn btn-outline-success w-100 fw-semibold">
                        Chat on WhatsApp
                    </a>
                </div>
            </div>

        </div>
    </div>

    <!-- JavaScript for Popup Alerts (Success / Error) -->
    <%
        String statusMsg = request.getParameter("status");
        if("success".equals(statusMsg)) {
    %>
        <script>
            alert("Success! Your custom cake order has been placed successfully. 🎂");
            window.history.replaceState({}, document.title, window.location.pathname);
        </script>
    <% 
        } else if("error".equals(statusMsg)) { 
    %>
        <script>
            alert("Error! Something went wrong while placing your order. Please try again.");
            window.history.replaceState({}, document.title, window.location.pathname);
        </script>
    <% 
        } 
    %>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
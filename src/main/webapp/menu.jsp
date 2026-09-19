<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Menu | Sweet Muse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card-img-top { height: 200px; object-fit: cover; }
        .price-tag { font-size: 1.2rem; font-weight: bold; color: #d63384; }
    </style>
</head>
<body class="bg-light">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand fw-bold" href="index.jsp">Sweet Muse</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="index.jsp">Home</a>
                <a class="nav-link active" href="menu.jsp">Menu</a>
                <a class="nav-link" href="cart.jsp">Cart</a>
                <a class="nav-link" href="about.jsp">About_Us</a>
                <a class="nav-link" href="gallery.jsp">Gallery</a>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <h2 class="text-center mb-5 fw-bold">Our Sweet Menu</h2>

        <!-- Signature Cakes -->
        <h4 class="mb-3 text-primary">🎂 Signature Cakes</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col"><div class="card h-100"><img src="images/a.jpg" class="card-img-top"><div class="card-body"><h5>Chocolate Fudge</h5><p class="price-tag">Rs. 2500</p><a href="AddToCartServlet?name=Chocolate Fudge&price=2500" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/b.jpg" class="card-img-top"><div class="card-body"><h5>Red Velvet</h5><p class="price-tag">Rs. 2800</p><a href="AddToCartServlet?name=Red Velvet&price=2800" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/c.jpg" class="card-img-top"><div class="card-body"><h5>Vanilla Butter</h5><p class="price-tag">Rs. 2200</p><a href="AddToCartServlet?name=Vanilla Butter&price=2200" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/d.jpg" class="card-img-top"><div class="card-body"><h5>Black Forest</h5><p class="price-tag">Rs. 2600</p><a href="AddToCartServlet?name=Black Forest&price=2600" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/e.jpg" class="card-img-top"><div class="card-body"><h5>White Forest</h5><p class="price-tag">Rs. 2600</p><a href="AddToCartServlet?name=White Forest&price=2600" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
        </div>

        <!-- Celebration Cakes -->
        <h4 class="mb-3 text-primary">🎉 Celebration Cakes</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col"><div class="card h-100"><img src="images/f.jpg" class="card-img-top"><div class="card-body"><h5>Birthday Cake</h5><p class="price-tag">Rs. 4500</p><a href="AddToCartServlet?name=Birthday Cake&price=4500" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/g.jpg" class="card-img-top"><div class="card-body"><h5>Wedding Cake</h5><p class="price-tag">Rs. 8000</p><a href="AddToCartServlet?name=Wedding Cake&price=8000" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/h.jpg" class="card-img-top"><div class="card-body"><h5>Anniversary</h5><p class="price-tag">Rs. 5000</p><a href="AddToCartServlet?name=Anniversary&price=5000" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
        </div>

        <!-- Cake Slices -->
        <h4 class="mb-3 text-primary">🍰 Cake Slices</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col"><div class="card h-100"><img src="images/i.jpg" class="card-img-top"><div class="card-body"><h5>Chocolate Slice</h5><p class="price-tag">Rs. 450</p><a href="AddToCartServlet?name=Chocolate Slice&price=450" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/j.jpg" class="card-img-top"><div class="card-body"><h5>Red Velvet Slice</h5><p class="price-tag">Rs. 500</p><a href="AddToCartServlet?name=Red Velvet Slice&price=500" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/k.jpg" class="card-img-top"><div class="card-body"><h5>Cheesecake</h5><p class="price-tag">Rs. 600</p><a href="AddToCartServlet?name=Cheesecake&price=600" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
        </div>

        <!-- Cupcakes -->
        <h4 class="mb-3 text-primary">🧁 Cupcakes</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col"><div class="card h-100"><img src="images/l.jpg" class="card-img-top"><div class="card-body"><h5>Vanilla Cupcake</h5><p class="price-tag">Rs. 300</p><a href="AddToCartServlet?name=Vanilla Cupcake&price=300" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/m.jpg" class="card-img-top"><div class="card-body"><h5>Chocolate Cupcake</h5><p class="price-tag">Rs. 350</p><a href="AddToCartServlet?name=Chocolate Cupcake&price=350" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/n.jpg" class="card-img-top"><div class="card-body"><h5>Red Velvet Cupcake</h5><p class="price-tag">Rs. 350</p><a href="AddToCartServlet?name=Red Velvet Cupcake&price=350" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/o.jpg" class="card-img-top"><div class="card-body"><h5>Oreo Cupcake</h5><p class="price-tag">Rs. 400</p><a href="AddToCartServlet?name=Oreo Cupcake&price=400" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/p.jpg" class="card-img-top"><div class="card-body"><h5>Caramel Cupcake</h5><p class="price-tag">Rs. 400</p><a href="AddToCartServlet?name=Caramel Cupcake&price=400" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
        </div>

        <!-- Sweet Treats -->
        <h4 class="mb-3 text-primary">🍪 Sweet Treats</h4>
        <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col"><div class="card h-100"><img src="images/q.jpg" class="card-img-top"><div class="card-body"><h5>Brownies</h5><p class="price-tag">Rs. 200</p><a href="AddToCartServlet?name=Brownies&price=200" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
            <div class="col"><div class="card h-100"><img src="images/r.jpg" class="card-img-top"><div class="card-body"><h5>Cookies</h5><p class="price-tag">Rs. 150</p><a href="AddToCartServlet?name=Cookies&price=150" class="btn btn-primary w-100">Add to Cart</a></div></div></div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
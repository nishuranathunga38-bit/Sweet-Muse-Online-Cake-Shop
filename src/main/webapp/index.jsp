<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sweet Muse | Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .carousel-item img {
            height: 600px;
            object-fit: cover;
            filter: brightness(0.7);
        }
        .carousel-caption {
            bottom: 35%;
        }
        .brand-title { font-size: 4rem; font-weight: 800; color: #fff; text-shadow: 2px 2px 8px #000; }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="index.jsp">Sweet Muse</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link active" href="index.jsp">Home</a>
                <a class="nav-link" href="about.jsp">About Us</a>
                <a class="nav-link" href="gallery.jsp">Gallery</a>
                <a class="nav-link" href="menu.jsp">Menu</a>
                <a class="nav-link" href="cart.jsp">Cart</a>
                <a class="nav-link" href="order.jsp">Order</a>
            </div>
        </div>
    </nav>

    <!-- Carousel -->
    <div id="sweetMuseCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <!-- Slide 1 -->
            <div class="carousel-item active">
                <img src="images/20.jpg" class="d-block w-100" alt="Cake 1">
                <div class="carousel-caption">
                    <h1 class="brand-title">Sweet Muse</h1>
                    <p class="lead">Experience the Art of Baking</p>
                    <div class="mt-4">
                        <a href="menu.jsp" class="btn btn-primary btn-lg me-3">View Menu</a>
                        <a href="about.jsp" class="btn btn-outline-light btn-lg">About Us</a>
                    </div>
                </div>
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item">
                <img src="images/21.jpg" class="d-block w-100" alt="Cake 2">
                <div class="carousel-caption">
                    <h1 class="brand-title">Hand-Crafted Perfection</h1>
                    <p class="lead">Fresh ingredients, heavenly taste</p>
                    <div class="mt-4">
                        <a href="menu.jsp" class="btn btn-primary btn-lg me-3">View Menu</a>
                        <a href="about.jsp" class="btn btn-outline-light btn-lg">About Us</a>
                    </div>
                </div>
            </div>
            <!-- Slide 3 -->
            <div class="carousel-item">
                <img src="images/22.jpg" class="d-block w-100" alt="Cake 3">
                <div class="carousel-caption">
                    <h1 class="brand-title">Celebrate with Sweet Muse</h1>
                    <p class="lead">Make every occasion unforgettable</p>
                    <div class="mt-4">
                        <a href="menu.jsp" class="btn btn-primary btn-lg me-3">View Menu</a>
                        <a href="about.jsp" class="btn btn-outline-light btn-lg">About Us</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Controls -->
        <button class="carousel-control-prev" type="button" data-bs-target="#sweetMuseCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#sweetMuseCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <!-- Content -->
    <div class="container text-center my-5">
        <h2 class="display-4">Welcome to Our Modern Bakery</h2>
        <p class="text-muted">Discover a world of flavors at Sweet Muse.</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
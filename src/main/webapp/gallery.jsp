<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Our Gallery - SweetMuse</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .gallery-img { transition: 0.3s; border-radius: 10px; margin-bottom: 20px; }
        .gallery-img:hover { transform: scale(1.05); cursor: pointer; }
        .gallery-title { padding: 40px 0; color: #d63384; }
    </style>
</head>
<body class="bg-light">

    <div class="container">
        <h1 class="text-center gallery-title">Our Sweet Creations</h1>
        
        <div class="row">
            <% 
                // මෙතනදී අපි 30 ඉඳන් 53 වෙනකන් ලූප් එකක් දුවලා පින්තූර ටික පෙන්වනවා
                for(int i = 30; i <= 53; i++) { 
            %>
                <div class="col-md-3 col-sm-6">
                    <img src="images/<%= i %>.jpg" class="img-fluid gallery-img shadow" alt="Cake Image <%= i %>">
                </div>
            <% } %>
        </div>
    </div>

</body>
</html>
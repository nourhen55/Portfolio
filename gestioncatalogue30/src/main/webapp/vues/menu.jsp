<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Commander un Produit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        body {
            background-color: #ecf0f1; 
            font-family: 'Poppins', sans-serif;
            color: #34495e;
        }

        .container {
            margin-top: 40px;
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            text-align: center;
            font-weight: bold;
            color: #34495e;
            margin-bottom: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            background-color: #ffffff;
            margin-bottom: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-header {
            background-color: #2980b9;
            border-bottom: 2px solid #1abc9c;
            color: #fff;
            text-align: center;
            padding: 15px;
        }

        .product-image {
            width: 100%;
            height: 250px;
            object-fit: cover;
            border-radius: 8px;
            transition: transform 0.3s ease-in-out;
        }

        .product-image:hover {
            transform: scale(1.1);
        }

        .product-info {
            padding: 15px;
            text-align: center;
        }

        .product-info h5 {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 10px;
        }

        .product-info p {
            font-size: 1rem;
            margin-bottom: 15px;
        }

        .btn-order {
            background-color: #27ae60;
            border: none;
            border-radius: 25px;
            padding: 12px 20px;
            font-size: 1.2rem;
            color: #fff;
            width: 100%;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        .btn-order:hover {
            background-color: #2ecc71;
        }

        .form-group input[type="number"] {
            border-radius: 30px;
            padding: 10px 15px;
            border: 1px solid #ccc;
            width: 100%;
            background-color: #ecf0f1;
            color: #34495e;
            font-size: 1.1rem;
        }

        .form-group input[type="number"]:focus {
            outline: none;
            border-color: #2980b9;
            background-color: #fff;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .product-card:hover {
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            transform: translateY(-5px);
            transition: all 0.3s ease-in-out;
        }

        .form-group {
            margin-bottom: 20px;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #2980b9;
            padding: 10px;
        }

        .navbar-brand {
            color: #fff;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .navbar-nav .nav-link {
            color: #fff;
            font-size: 1.1rem;
            margin-left: 15px;
        }

        .navbar-nav .nav-link:hover {
            color: #1abc9c;
        }

        /* Footer Styles */
        .footer {
            background-color: #2980b9;
            color: #fff;
            padding: 30px 0;
            text-align: center;
            margin-top: 50px;
        }

        .footer a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                transform: translateY(30px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="/accueil">Mon site Technologique</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
                        <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" href="/accueil">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/menu">Menu des Produits</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">Contactez-nous</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">a propos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/services">Services</a>
                    </li>
                     <li class="nav-item">
            <a class="nav-link" href="/Valeurs">Nos Valeurs</a>
        </li>
                </ul>
            </div>
            </div>
        </div>
    </nav>

    <div class="container">
        <h2>Menu des Produits</h2>
        <div class="row">
            <!-- Iterate through the list of products passed from the controller -->
            <c:forEach var="p" items="${liste}">
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/150" class="card-img-top" alt="Image du produit">
                        <div class="card-body">
                            <h5 class="card-title">${p.nom}</h5>
                            <p class="card-text"><strong>ID:</strong> ${p.id}</p>
                            <p class="card-text"><strong>Prix:</strong> ${p.prix} d</p>
                            <p class="card-text"><strong>Quantite:</strong> ${p.quantite}</p>
                            <p class="card-text"><strong>Categorie:</strong> ${p.categorie.nom}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- Footer Section -->
    <footer class="footer">
        <p>&copy; 2024 Mon Site Technologique. Tous droits réservés.</p>
        <div>
            <a href="#">Mentions Légales</a>
            <a href="#">Politique de Confidentialité</a>
            <a href="#">Contact</a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

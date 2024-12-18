<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Accueil - Produits Technologiques</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f7;
            color: #2c3e50;
            margin: 0;
            padding: 0;
        }
		img{
		width:50px;
		heigth:60px;
		}
        .navbar {
            background-color: #2980b9;
        }

        .navbar-brand, .nav-link {
            color: #fff !important;
        }

        .hero-section {
            background-color: #3498db;
            color: white;
            text-align: center;
            padding: 80px 0;
            background-image: url('https://i.pinimg.com/736x/8d/37/99/8d3799e24be55bdfddb7a4fd8e4100d0.jpg');
            background-size: cover;
            background-position: center;
            animation: fadeIn 2s ease-in-out;
        }

        .hero-section h1 {
            font-size: 3.5rem;
            font-weight: 700;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
            animation: slideUp 1s ease-out;
        }

        .hero-section p {
            font-size: 1.2rem;
            margin-top: 20px;
            animation: fadeIn 2s ease-in-out;
        }

        .content-section {
            padding: 60px 20px;
            background-color: #ecf0f1;
            text-align: center;
            animation: slideIn 1.5s ease-in-out;
        }

        .content-section h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .content-section p {
            font-size: 1.1rem;
            margin-bottom: 30px;
            line-height: 1.6;
            animation: fadeIn 2s ease-in-out;
        }

        .tech-info, .tech-stats {
            animation: fadeInUp 2s ease-out;
        }

        .tech-info h3, .tech-stats h3 {
            font-family: 'Roboto', sans-serif;
            font-weight: 700;
            color: #2980b9;
        }

        .tech-info p, .tech-stats ul {
            font-size: 1.1rem;
            color: #7f8c8d;
            line-height: 1.8;
        }

        .tech-stats ul {
            list-style-type: none;
            padding-left: 0;
        }

        .tech-stats ul li {
            padding: 5px 0;
            font-size: 1.1rem;
            transition: all 0.3s ease;
        }

        .tech-stats ul li:hover {
            color: #2980b9;
            font-weight: 600;
        }

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
            font-weight: 600;
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

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
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

        @keyframes slideUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>
<body id="acc">

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Mon Site Technologique</a>
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
            <a class="nav-link" href="/about">À propos</a>
        </li>
        <!-- New item added below -->
        <li class="nav-item">
            <a class="nav-link" href="/services">Services</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/Valeurs">Nos Valeurs</a>
        </li>
    </ul>
</div>

        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero-section">
        <h1>Bienvenue sur Mon Site de Produits Technologiques</h1>
        <p>Découvrez nos derniers produits tech, notamment des smartphones, iPhones et plus encore!</p>
    </section>

    <!-- Content Section -->
    <section class="content-section">
        <h2>Nos Produits</h2>
        <p>Nous offrons une large gamme de produits technologiques, y compris des smartphones, des tablettes et des accessoires. Explorez notre sélection ci-dessous.</p>

        <!-- Products Section -->
        <div class="products" id="products">
            <!-- Product 1 -->
            <div class="product-card">
                <img src="https://i.pinimg.com/736x/26/be/56/26be56634ad9773c9d8f6315cac2cba7.jpg" alt="Smartphone 1">
                <h3>iPhone 14</h3>
                <p>Dernier modèle d'iPhone avec des fonctionnalités avancées.</p>
            </div>

            <!-- Product 2 -->
            <div class="product-card">
                <img src="https://i.pinimg.com/236x/79/ba/af/79baaf76abab9b0d804e1c31b94f0d13.jpg" alt="Smartphone 2">
                <h3>Samsung Galaxy S22</h3>
                <p>Smartphone Android avec des spécifications de haute qualité.</p>
            </div>

            <!-- Product 3 -->
            <div class="product-card">
                <img src="https://i.pinimg.com/236x/44/db/f3/44dbf3252affe1b050eef4b7ea01c988.jpg" alt="Smartphone 3">
                <h3>OnePlus 9</h3>
                <p>Smartphone avec des performances exceptionnelles et une batterie durable.</p>
            </div>
        </div>
    </section>

    <!-- Content Section: Technology Info & Stats -->
    <section class="content-section">
        <div class="tech-info">
            <h3>À propos de la Technologie</h3>
            <p>La technologie évolue à une vitesse fulgurante, transformant la manière dont nous vivons, travaillons et interagissons. De l'intelligence artificielle à la 5G, chaque nouvelle innovation ouvre des portes à de nouvelles possibilités.</p>
            <p>Les avancées technologiques touchent également d'autres secteurs, notamment l'éducation, la médecine et la mobilité. Le futur est prometteur avec l'innovation en matière de véhicules autonomes, de systèmes de santé connectés et d'éducation en ligne accessible à tous.</p>
        </div>

        <div class="tech-stats">
            <h3>Statistiques sur la Technologie</h3>
            <p>Les statistiques suivantes mettent en lumière l'impact global de la technologie :</p>
            <ul>
                <li><strong>4,5 milliards</strong> d'utilisateurs d'Internet dans le monde.</li>
                <li><strong>1,5 milliard</strong> de smartphones vendus chaque année.</li>
                <li><strong>10 milliards</strong> d'appareils connectés d'ici 2025.</li>
                <li><strong>50%</strong> de la population mondiale équipée d'objets connectés d'ici 2030.</li>
                <li><strong>30%</strong> des tâches professionnelles automatisées grâce à l'IA d'ici 2030.</li>
            </ul>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <p>&copy; 2024 Mon Site Technologique. Tous droits réservés.</p>
        <div>
            <a href="#">Mentions Légales</a>
            <a href="#">Politique de Confidentialité</a>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

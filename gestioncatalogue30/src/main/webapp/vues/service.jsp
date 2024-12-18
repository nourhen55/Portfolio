<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Services - Nom de votre entreprise</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #2980b9;
        }

        .navbar-brand, .nav-link {
            color: #fff !important;
        }

        .footer {
            background-color: #2980b9;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        /* Section Team */
        .team-section {
            padding: 50px 20px;
            background-color: #ecf0f1;
            text-align: center;
        }

        .team-section h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .team-card {
            background-color: #fff;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 250px;
            text-align: center;
        }

        .team-card img {
            border-radius: 50%;
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .team-card h3 {
            font-size: 1.5rem;
            font-weight: 600;
            color: #2980b9;
        }

        .team-card p {
            font-size: 1.1rem;
            color: #7f8c8d;
        }

        .team-card .social-links a {
            margin: 0 10px;
            color: #2980b9;
            text-decoration: none;
        }

        .team-card .social-links a:hover {
            color: #3498db;
        }
    </style>
</head>
<body>

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
    </nav>

    <!-- Services Section -->
    <main>
        <section class="team-section">
            <h2>Notre Équipe</h2>
            <p>Rencontrez les membres clés de notre équipe, des experts passionnés qui rendent tout possible.</p>
            
            <div class="team-cards">
                <!-- Member 1 -->
                <div class="team-card">
                    <img src="https://www.w3schools.com/w3images/team1.jpg" alt="Membre 1">
                    <h3>Nourhen Ben Halima</h3>
                    <p>Directeur Technique</p>
                    <div class="social-links">
                        <a href="https://www.linkedin.com/in/nour-hén-788476337" target="_blank">LinkedIn</a>
                        <a href="https://twitter.com" target="_blank">Twitter</a>
                    </div>
                </div>

                <!-- Member 2 -->
                <div class="team-card">
                    <img src="https://www.w3schools.com/w3images/team2.jpg" alt="Membre 2">
                    <h3>Mohamed ben halima</h3>
                    <p>Responsable Marketing</p>
                    <div class="social-links">
                        <a href="https://www.linkedin.com" target="_blank">LinkedIn</a>
                        <a href="https://twitter.com" target="_blank">Twitter</a>
                    </div>
                </div>

                <!-- Member 3 -->
                <div class="team-card">
                    <img src="https://www.w3schools.com/w3images/team3.jpg" alt="Membre 3">
                    <h3>Hachem ben halima</h3>
                    <p>Chef de Projet</p>
                    <div class="social-links">
                        <a href="https://www.linkedin.com" target="_blank">LinkedIn</a>
                        <a href="https://twitter.com" target="_blank">Twitter</a>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Footer Section -->
    <footer class="footer">
        <p>&copy; 2024 Mon Site Technologique. Tous droits réservés.</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

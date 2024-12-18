<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>À propos - Mon Site Technologique</title>
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
        .navbar {
            background-color: #2980b9;
        }

        .navbar-brand, .nav-link {
            color: #fff !important;
        }

        .navbar-toggler-icon {
            background-color: #fff;
        }

        .footer {
            background-color: #2980b9;
            color: #fff;
            padding: 30px 0;
            text-align: center;
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

        section {
            padding: 40px 20px;
            background-color: #fff;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
        }

        h2 {
            color: #2980b9;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.6;
        }
    </style>
</head>
<body id="about">

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
                        <a class="nav-link" href="/accueil">Accueil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/menu">Menu des Produits</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">Contactez-nous</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/about">a propos</a>
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

    <!-- Main Content -->
    <main>
        <section class="about-section">
            <h1>À propos de Nous</h1>
            <p>Nous sommes une entreprise innovante dans le domaine de la technologie. Notre mission est de fournir des produits de qualité, répondant aux besoins des utilisateurs modernes. Notre vision est de transformer la manière dont les gens interagissent avec la technologie, en rendant les produits plus accessibles, intelligents et durables.</p>

            <h2>Pourquoi Nos Produits se Distinguent</h2>
            <p>Nos produits sont conçus avec des technologies de pointe, tout en mettant l'accent sur l'ergonomie et la facilité d'utilisation. Grâce à notre approche orientée client, nous nous efforçons d’offrir des solutions innovantes et performantes.</p>
        </section>
    </main>

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

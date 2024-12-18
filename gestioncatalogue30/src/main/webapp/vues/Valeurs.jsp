<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nos Valeurs - Nom de votre entreprise</title>
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

        /* Nos Valeurs Section */
        .values-section {
            padding: 50px 20px;
            background-color: #ecf0f1;
            text-align: center;
        }

        .values-section h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            font-weight: 600;
        }

        .values-section p {
            font-size: 1.2rem;
            color: #7f8c8d;
            margin-bottom: 40px;
        }

        .values-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-bottom: 40px;
        }

        .value-card {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s;
        }

        .value-card:hover {
            transform: translateY(-10px);
        }

        .value-card h3 {
            font-size: 1.8rem;
            color: #2980b9;
            margin-bottom: 20px;
        }

        .value-card p {
            font-size: 1.1rem;
            color: #7f8c8d;
        }

        .footer {
            background-color: #2980b9;
            color: #fff;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Mon Site</a>
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

    <!-- Nos Valeurs Section -->
    <section class="values-section">
        <h2>Nos Valeurs</h2>
        <p>Nous croyons fermement que nos valeurs définissent la manière dont nous opérons et interagissons avec nos clients et partenaires. Voici ce qui nous guide :</p>

        <div class="values-list">
            <!-- Value Card 1 -->
            <div class="value-card">
                <h3>Innovation</h3>
                <p>Nous nous efforçons de repousser les limites de la technologie pour offrir des produits de pointe et des solutions innovantes à nos clients.</p>
            </div>

            <!-- Value Card 2 -->
            <div class="value-card">
                <h3>Qualité</h3>
                <p>Nous privilégions l'excellence dans chaque aspect de nos produits et services, garantissant la satisfaction totale de nos clients.</p>
            </div>

            <!-- Value Card 3 -->
            <div class="value-card">
                <h3>Intégrité</h3>
                <p>Nous agissons avec transparence, honnêteté et éthique, respectant toujours nos engagements envers nos partenaires et clients.</p>
            </div>

            <!-- Value Card 4 -->
            <div class="value-card">
                <h3>Durabilité</h3>
                <p>Nous nous engageons à préserver l'environnement en intégrant des pratiques durables dans toutes nos opérations.</p>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer class="footer">
        <p>&copy; 2024 Nom de l'entreprise | Tous droits réservés</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

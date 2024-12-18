<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contactez-Nous</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f7;
            color: #2c3e50;
        }

        .navbar {
            background-color: #2980b9;
        }

        .navbar-brand, .nav-link {
            color: #fff !important;
        }

        .contact-section {
            padding: 80px 0;
            background-color: #ecf0f1;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        .contact-section h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            font-weight: 600;
            color: #2980b9;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        }

        .contact-section p {
            font-size: 1.1rem;
            margin-bottom: 30px;
        }

        .contact-section form {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .contact-section input, .contact-section textarea {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .contact-section button {
            background-color: #2980b9;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            font-weight: bold;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .contact-section button:hover {
            background-color: #3498db;
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

        /* Animations */
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
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="/accueil">Mon Site Technologique</a>
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

    <!-- Contact Section -->
    <section class="contact-section">
        <h2>Contactez-Nous</h2>
        <p>Nous serions ravis de répondre à vos questions. Remplissez le formulaire ci-dessous et nous vous contacterons dans les plus brefs délais.</p>
        
        <!-- Contact Form -->
        <form action="/contact" method="POST">
            <div class="mb-3">
                <input type="text" class="form-control" name="name" placeholder="Votre Nom" required>
            </div>
            <div class="mb-3">
                <input type="email" class="form-control" name="email" placeholder="Votre Email" required>
            </div>
            <div class="mb-3">
                <input type="text" class="form-control" name="subject" placeholder="Sujet" required>
            </div>
            <div class="mb-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Votre Message" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>
    </section>

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

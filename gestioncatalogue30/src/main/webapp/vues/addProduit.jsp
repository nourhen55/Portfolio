<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter un Produit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #2c3e50; /* Dark Gray background */
        margin: 0;
        padding: 0;
        color: #ecf0f1; /* Light text color for contrast */
    }

    .container {
        max-width: 500px;
        margin: 50px auto;
        padding: 40px;
        background-color: #34495e; /* Darker gray container */
        border-radius: 12px;
        box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
        animation: fadeIn 1s ease-out;
    }

    h2 {
        text-align: center;
        color: #ecf0f1;
        font-size: 1.8rem;
        margin-bottom: 30px;
        font-weight: 600;
    }

    .form-group {
        margin-bottom: 25px;
    }

    label {
        font-size: 1.1rem;
        color: #ecf0f1;
        margin-bottom: 10px;
        font-weight: 500;
        display: block;
    }

    input[type="text"],
    input[type="number"],
    select {
        width: 100%;
        padding: 12px;
        font-size: 1rem;
        border: 1px solid #7f8c8d; /* Lighter gray border */
        border-radius: 6px;
        background-color: #34495e; /* Dark background for inputs */
        color: #ecf0f1; /* Light text inside inputs */
        box-sizing: border-box;
        transition: border-color 0.3s ease, transform 0.2s ease-in-out;
    }

    input[type="text"]:focus,
    input[type="number"]:focus,
    select:focus {
        border-color: #3498db; /* Light blue border on focus */
        outline: none;
        transform: scale(1.05); /* Slight zoom effect */
    }

    .btn-primary {
        background-color: #2ecc71; /* Green color */
        border: none;
        padding: 14px;
        font-size: 1.1rem;
        color: white;
        width: 100%;
        border-radius: 6px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease-in-out;
    }

    .btn-primary:hover {
        background-color: #27ae60; /* Darker green on hover */
        transform: scale(1.05); /* Slight zoom effect on hover */
    }

    .form-group select {
        font-size: 1rem;
        padding: 12px;
        border-radius: 6px;
        background-color: #34495e;
    }

    /* Animation for container */
    @keyframes fadeIn {
        0% {
            opacity: 0;
            transform: translateY(20px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Responsive Design */
    @media (max-width: 600px) {
        .container {
            padding: 20px;
            margin: 20px;
        }

        h2 {
            font-size: 1.5rem;
        }

        .form-group {
            margin-bottom: 15px;
        }
    }
</style>
  
</head>
<body>

    <div class="container">
        <h2>Ajouter un Produit</h2>
        <form action="${pageContext.request.contextPath}/add" method="post">
            <div class="form-group">
                <label for="nom">Nom du Produit</label>
                <input type="text" id="nom" name="nom" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="prix">Prix</label>
                <input type="number" id="prix" name="prix" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="quantite">Quantité</label>
                <input type="number" id="quantite" name="quantite" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="categorie">Catégorie</label>
                <select id="categorie" name="categorie" class="form-control" required>
                    <!-- Affichage dynamique des catégories -->
                    <c:forEach var="categorie" items="${categories}">
                        <option value="${categorie.id}">${categorie.nom}</option>
                    </c:forEach>
                </select>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Ajouter</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

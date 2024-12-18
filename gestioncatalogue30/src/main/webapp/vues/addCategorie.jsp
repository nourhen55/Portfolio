<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8">
<title>Ajouter Catégorie</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #212529; /* Fond sombre gris foncé (noir-gris) */
        color: #f8f9fa; /* Texte clair pour contraster avec le fond sombre */
        font-family: 'Arial', sans-serif; /* Police sans-serif pour une apparence moderne */
        animation: fadeIn 1.5s ease-in; /* Animation de fondu en ouverture */
    }

    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    .container {
        margin-top: 50px;
    }

    .form-container {
        max-width: 600px;
        margin: 0 auto;
        padding: 30px;
        animation: slideUp 1s ease-in-out; /* Animation de déplacement vers le haut */
    }

    @keyframes slideUp {
        0% {
            transform: translateY(30px);
            opacity: 0;
        }
        100% {
            transform: translateY(0);
            opacity: 1;
        }
    }

    .form-card {
        background-color: #343a40; /* Fond gris foncé pour la carte */
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Ombre légère autour de la carte */
    }

    .form-label {
        font-weight: bold;
        color: #f8f9fa; /* Couleur claire pour les labels */
    }

    .form-control {
        border-radius: 5px;
        border: 1px solid #6c757d; /* Bordure gris clair */
        padding: 10px;
        background-color: #495057; /* Fond gris foncé pour les champs de texte */
        color: #f8f9fa; /* Texte clair dans les champs */
        transition: all 0.3s ease; /* Transition fluide pour les changements */
    }

    .form-control:focus {
        border-color: #007bff; /* Bordure bleue au focus */
        background-color: #fff; /* Fond blanc au focus pour plus de visibilité */
        color: #495057; /* Texte noir au focus */
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.2); /* Ombre bleue au focus */
    }

    .btn-primary {
        background-color: #007bff;
        border: none;
        border-radius: 25px;
        padding: 12px 30px;
        font-size: 16px;
        font-weight: bold;
        transition: all 0.3s ease; /* Transition douce pour les effets sur les boutons */
    }

    .btn-primary:hover {
        background-color: #0056b3; /* Couleur plus foncée au survol */
        transform: scale(1.05); /* Effet de zoom au survol */
    }

    .btn-primary:focus {
        outline: none;
        box-shadow: 0 0 10px rgba(0, 123, 255, 0.5); /* Ombre bleue autour du bouton au focus */
    }

    h2 {
        color: #f8f9fa; /* Titre clair sur fond sombre */
        text-align: center;
        font-size: 24px;
        font-weight: 600;
        margin-bottom: 30px;
    }

</style>
</head>
<body>
<div class="container mt-5">
    <h2>Ajouter une Nouvelle Catégorie</h2>
    <form action="${pageContext.request.contextPath}/addCategorie" method="post">
        <div class="form-group">
            <label for="nom" class="form-label">Nom de la Catégorie</label>
            <input type="text" id="nom" name="nom" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Ajouter</button>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

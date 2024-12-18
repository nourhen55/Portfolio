<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier le Produit</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
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

.btn-success {
    background-color: #28a745;
    border: none;
    border-radius: 25px;
    padding: 12px 30px;
    font-size: 16px;
    font-weight: bold;
    transition: all 0.3s ease; /* Transition douce pour les effets sur les boutons */
}

.btn-success:hover {
    background-color: #218838; /* Couleur plus foncée au survol */
    transform: scale(1.05); /* Effet de zoom au survol */
}

.btn-success:focus {
    outline: none;
    box-shadow: 0 0 10px rgba(40, 167, 69, 0.5); /* Ombre verte autour du bouton au focus */
}

/* Amélioration des transitions sur les champs select */
select.form-control {
    background-color: #495057; /* Fond gris foncé pour le select */
    border: 1px solid #6c757d; /* Bordure gris clair */
    padding: 10px;
    border-radius: 5px;
    color: #f8f9fa; /* Texte clair */
    transition: border-color 0.3s ease; /* Transition de la bordure au survol/focus */
}

select.form-control:hover,
select.form-control:focus {
    border-color: #007bff; /* Bordure bleue au focus/hover */
}

/* Amélioration de l'apparence du titre */
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
        <!-- Form Card -->
        <div class="form-container">
            <div class="form-card">
                <h2 class="text-center mb-4">Modifier le Produit</h2>
                <form action="${pageContext.request.contextPath}/edit" method="POST">
                    <!-- Display ID from URL Parameter -->
                    <div class="mb-3">
                        <label for="id" class="form-label">ID du Produit</label>
                        <p class="form-control-plaintext">${param.id}</p> <!-- Display ID -->
                    </div>
                    
                    <!-- Product Name -->
                    <div class="mb-3">
                        <label for="nom" class="form-label">Nom</label>
                        <input type="text" class="form-control" id="nom" name="nom" value="${param.nom}" />
                    </div>
                    
                    <!-- Product Price -->
                    <div class="mb-3">
                        <label for="prix" class="form-label">Prix</label>
                        <input type="text" class="form-control" id="prix" name="prix" value="${param.prix}" />
                    </div>
                    
                    <!-- Product Quantity -->
                    <div class="mb-3">
                        <label for="quantite" class="form-label">Quantité</label>
                        <input type="text" class="form-control" id="quantite" name="quantite" value="${param.quantite}" />
                    </div>
                        <label for="prix" class="form-label">categorie</label>
                    <select id="categorie" name="categorie" class="form-control" required>
                    <!-- Affichage dynamique des catégories -->
                    <c:forEach var="categorie" items="${categories}">
                        <option value="${param.id}">${param.nom}</option>
                    </c:forEach>
                </select><br>
                    <!-- Submit Button -->
<button type="submit" class="btn btn-success btn-lg" value="update">Update Product</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and Popper.js (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>

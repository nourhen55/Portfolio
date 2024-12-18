<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestion des Produits</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css">
    <style>
        /* Base Body Styling */
        body {
            background-color: #f4f6f9; /* Light background color */
            color: #333; /* Dark text for readability */
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Container Styling */
        .container {
            margin-top: 50px;
        }

        /* Header Styling */
        h4 {
            font-weight: bold;
            color: #2c3e50; /* Dark text color for the header */
            text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.1);
        }

        /* Button Styling */
        .btn-primary, .btn-success, .btn-danger, .btn-warning {
            transition: all 0.3s ease;
            border-radius: 30px; /* Rounded buttons */
            font-weight: 600;
            padding: 12px 25px;
        }

        /* Primary Button */
        .btn-primary {
            background-color: #3498db; /* Bright blue */
            border: none;
        }

        .btn-primary:hover {
            background-color: #2980b9;
        }

        /* Success Button */
        .btn-success {
            background-color: #2ecc71; /* Green */
            border: none;
        }

        .btn-success:hover {
            background-color: #27ae60;
        }

        /* Danger Button */
        .btn-danger {
            background-color: #e74c3c; /* Red */
            border: none;
        }

        .btn-danger:hover {
            background-color: #c0392b;
        }

        /* Warning Button */
        .btn-warning {
            background-color: #f39c12; /* Yellow */
            border: none;
        }

        .btn-warning:hover {
            background-color: #e67e22;
        }

        /* Card Styling */
        .card {
            background-color: #ffffff; /* White background for cards */
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            background-color: #ecf0f1; /* Light gray header */
            border-bottom: 2px solid #3498db; /* Blue accent */
            color: #2c3e50;
            padding: 20px;
        }

        /* Table Styling */
        .table-responsive {
            max-height: 600px;
            overflow-y: auto;
        }

        .table {
            background-color: #ffffff; /* White background */
            color: #333; /* Dark text */
            border-collapse: collapse;
        }

        .table th, .table td {
            vertical-align: middle;
            text-align: center;
            padding: 15px;
            border: 1px solid #bdc3c7; /* Light border for table */
        }

        .table th {
            background-color: #3498db; /* Blue header */
            color: #ffffff;
            font-weight: bold;
        }

        .table tr:hover {
            background-color: #ecf0f1; /* Light hover effect */
            transition: background-color 0.3s ease;
        }

        .table tr:nth-child(even) {
            background-color: #f9f9f9; /* Light gray for even rows */
        }

        .fa-trash:hover {
            color: #e74c3c; /* Red color for trash icon */
        }

        .fa-edit:hover {
            color: #f39c12; /* Yellow color for edit icon */
        }

        /* Search Bar Styling */
        input[type="text"] {
            border-radius: 30px;
            border: 2px solid #bdc3c7;
            padding: 10px 20px;
            background-color: #ffffff;
            color: #333;
            width: 300px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #3498db;
            background-color: #f7f9fc;
        }

        /* Animation for Card */
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
    <div class="container">
        <div class="card">
            <div class="card-header text-center">
                <h4><i class="fa fa-utensils"></i> Gestion des Produits</h4>
            </div>
            <div class="card-body">
                <!-- Search Form -->
                <form class="d-flex justify-content-between align-items-center mb-4" action="${pageContext.request.contextPath}/search" method="get">
                    <div class="form-group d-flex">
                        <input type="text" id="searchKeyword" name="mc" value="${mc}" class="form-control me-2" placeholder="Rechercher un produit">
                        <button type="submit" class="btn btn-primary">
                            <i class="fa fa-search"></i> Rechercher
                        </button>
                    </div>
                    <a href="${pageContext.request.contextPath}/add" class="btn btn-success">
                        <i class="fa fa-plus"></i> Ajouter un Produit
                    </a>
                    <button type="button" onclick="window.location.href='${pageContext.request.contextPath}/addCategorie'" class="btn btn-warning">
                        <i class="fa fa-plus"></i> Ajouter Categorie
                    </button>
                </form>

                <!-- Product Table -->
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nom</th>
                                <th>Prix</th>
                                <th>Quantite</th>
                                <th>Categorie</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${liste}" var="p">
                                <tr>
                                    <td>${p.id}</td>
                                    <td>${p.nom}</td>
                                    <td>${p.prix} d </td>
                                    <td>${p.quantite}</td>
                                    <td>${p.categorie}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/edit?id=${p.id}" class="btn btn-warning btn-sm">
                                            <i class="fa fa-edit"></i> Modifier
                                        </a>
                                        <a href="${pageContext.request.contextPath}/delete?id=${p.id}" class="btn btn-danger btn-sm ms-2" 
                                           onclick="return confirm('Êtes-vous sûr de vouloir supprimer ce produit ?');">
                                            <i class="fa fa-trash"></i> Supprimer
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

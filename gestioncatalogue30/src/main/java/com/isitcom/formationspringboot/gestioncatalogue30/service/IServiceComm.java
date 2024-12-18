package com.isitcom.formationspringboot.gestioncatalogue30.service;

import com.isitcom.formationspringboot.gestioncatalogue30.entities.Commande;
import java.util.List;

public interface IServiceComm {
	
    // Add a new order
    Commande addCommande(Commande commande);

    // Get all orders
    List<Commande> getAllCommandes();

    // Get an order by ID
    Commande getCommandeById(Long id);

    // Delete an order by ID
    void deleteCommande(Long id);

    // Update an order
    Commande updateCommande(Long id, Commande commande);
}
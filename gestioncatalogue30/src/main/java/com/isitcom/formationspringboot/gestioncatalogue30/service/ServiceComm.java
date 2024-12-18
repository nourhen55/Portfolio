package com.isitcom.formationspringboot.gestioncatalogue30.service;

import com.isitcom.formationspringboot.gestioncatalogue30.dao.CommandeRepository;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.Commande;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ServiceComm implements IServiceComm {

    @Autowired
    private CommandeRepository commandeRepository;

    @Override
    public Commande addCommande(Commande commande) {
        return commandeRepository.save(commande);
    }

    @Override
    public List<Commande> getAllCommandes() {
        return commandeRepository.findAll();
    }

    @Override
    public Commande getCommandeById(Long id) {
        Optional<Commande> commande = commandeRepository.findById(id);
        return commande.orElse(null); // Return null if not found
    }

    @Override
    public void deleteCommande(Long id) {
        commandeRepository.deleteById(id);
    }

    @Override
    public Commande updateCommande(Long id, Commande commande) {
        if (commandeRepository.existsById(id)) {
            commande.setId(id);
            return commandeRepository.save(commande);
        }
        return null; // Return null if not found
    }
}

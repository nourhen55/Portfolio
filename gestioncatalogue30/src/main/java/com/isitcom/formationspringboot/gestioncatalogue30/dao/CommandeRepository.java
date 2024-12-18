package com.isitcom.formationspringboot.gestioncatalogue30.dao;

import com.isitcom.formationspringboot.gestioncatalogue30.entities.Commande;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommandeRepository extends ListCrudRepository<Commande, Long> {
}

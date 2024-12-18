package com.isitcom.formationspringboot.gestioncatalogue30.service;

import java.util.List;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.categorie;

public interface IServiceCategorie {
    List<categorie> getAllCategories();

	void addCategorie(categorie categorie);
}

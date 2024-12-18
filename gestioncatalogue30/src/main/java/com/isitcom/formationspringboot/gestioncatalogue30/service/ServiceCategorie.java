package com.isitcom.formationspringboot.gestioncatalogue30.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.isitcom.formationspringboot.gestioncatalogue30.dao.CategorieRepository;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.categorie;

@Service
public class ServiceCategorie implements IServiceCategorie {

    @Autowired
    private CategorieRepository categorieRepository;

    @Override
    public List<categorie> getAllCategories() {
        return categorieRepository.findAll();
    }

	@Override
	public void addCategorie(categorie categorie) {
		// TODO Auto-generated method stub
		categorieRepository.save(categorie);
	}
}

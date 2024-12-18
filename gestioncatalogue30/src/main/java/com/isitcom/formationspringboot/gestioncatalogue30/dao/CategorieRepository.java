package com.isitcom.formationspringboot.gestioncatalogue30.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.categorie;

public interface CategorieRepository extends JpaRepository<categorie, Integer> {
	List<categorie> findAll();
}

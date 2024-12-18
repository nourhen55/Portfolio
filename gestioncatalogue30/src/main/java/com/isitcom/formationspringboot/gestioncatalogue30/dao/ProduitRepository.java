package com.isitcom.formationspringboot.gestioncatalogue30.dao;

import java.util.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.isitcom.formationspringboot.gestioncatalogue30.entities.produit;

public interface ProduitRepository extends JpaRepository<produit,Integer>{
 @Query("select p from produit p where p.nom like %:x%")
 public List<produit> rechercherPArMC(@Param("x") String mc);
}

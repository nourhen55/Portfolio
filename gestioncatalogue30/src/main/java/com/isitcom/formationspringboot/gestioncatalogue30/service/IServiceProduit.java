package com.isitcom.formationspringboot.gestioncatalogue30.service;

import java.sql.SQLException;
import java.util.List;

import com.isitcom.formationspringboot.gestioncatalogue30.entities.message;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.produit;


public interface IServiceProduit {
	public void addProduit(produit p) throws SQLException;

	public List<produit> getAllproducts() throws SQLException;

	List<produit> getProductByMC(Long id) throws SQLException;

	produit getProductById(long id) throws SQLException;

	void deleteProduct(int id) throws SQLException;

	void updateProduct(produit produit) throws SQLException;

	List<produit> getProductByMC(String mc);

	produit getProductById(int id);

	

	
}
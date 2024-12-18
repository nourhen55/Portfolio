package com.isitcom.formationspringboot.gestioncatalogue30.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import lombok.NoArgsConstructor;

import com.isitcom.formationspringboot.gestioncatalogue30.dao.ProduitRepository;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.produit;


@NoArgsConstructor
@Service
public class ServiceProduit  implements IServiceProduit{
	@Autowired
	private ProduitRepository pr;
@Override
	
	public void addProduit(produit p)  throws SQLException{
		// TODO Auto-generated method stub
	pr.save(p);
	}
	@Override
	public List<produit> getAllproducts() {
		// TODO Auto-generated method stub
		return pr.findAll();
		
	}

	@Override
	public List<produit> getProductByMC(String mc)  {
		// TODO Auto-generated method stub
		return pr.rechercherPArMC(mc);
	}
	@Override
	public produit getProductById(int id) {
		// TODO Auto-generated method stub
		return pr.findById(id).get();
	}

	@Override
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		pr.deleteById(id);
	}

	@Override
	public void updateProduct(produit p) {
	    try {
	        pr.save(p); // JPA save will update the product if it already exists
	    } catch (DataAccessException e) {
	        e.printStackTrace(); 
	    }
	}
	@Override
	public List<produit> getProductByMC(Long id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public produit getProductById(long id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}}
	



package com.isitcom.formationspringboot.gestioncatalogue30.restapi;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.isitcom.formationspringboot.gestioncatalogue30.entities.produit;
import com.isitcom.formationspringboot.gestioncatalogue30.service.IServiceProduit;

import java.sql.SQLException;
import java.util.List; 

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
public class ProductRestController {
    private final IServiceProduit sp; 

    @GetMapping("/products")
    public List<produit> getAllProducts() throws SQLException {
        return sp.getAllproducts();
    }
    @GetMapping("/products/{id}")
    public produit getProduct(@PathVariable int id ) {
    	return sp.getProductById(id);
    }
    @GetMapping("/product/{mc}")
    public List<produit> getProductByMC(@PathVariable String mc) {
        return sp.getProductByMC(mc);
    }
    @PostMapping("/product/add")
    public void ajouter(@RequestBody produit p ) throws SQLException {
    	sp.addProduit(p);
    }
    @DeleteMapping("/product/{id}")
    public void supprimer(@PathVariable int id) throws SQLException {
    	sp.deleteProduct(id);}
    
    @PutMapping("/product/{id}")
    public void update(@PathVariable produit p) throws SQLException {
    	sp.updateProduct(p);}
    
}

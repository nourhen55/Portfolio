package com.isitcom.formationspringboot.gestioncatalogue30.controleur;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.isitcom.formationspringboot.gestioncatalogue30.dao.CategorieRepository;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.categorie;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.message;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.produit;
import com.isitcom.formationspringboot.gestioncatalogue30.service.IServiceCategorie;
import com.isitcom.formationspringboot.gestioncatalogue30.service.IServiceProduit;
import com.isitcom.formationspringboot.gestioncatalogue30.service.IserviceContact;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Controller
public class ProduitController {
    private final IServiceProduit serviceProduit;
    private final IserviceContact serviceContact;
    @PostMapping("/contact")
    public String handleContactForm(
            @RequestParam String name,
            @RequestParam String email,
            @RequestParam String subject,
            @RequestParam String message) {

        // Create a new message object
        message msg = new message();
        msg.setName(name);
        msg.setEmail(email);
        msg.setSubject(subject);
        msg.setMessageContent(message);

        // Save the message to the database
        serviceContact.addMessage(msg);

        // Redirect to the success page
        return "accueil"; // Ensure success.jsp exists
    }
    @GetMapping("/contact")
    public String showContactForm() {
        return "contact"; // This should return the name of the JSP or HTML form view
    }

    @GetMapping("/menu")
    public String getAllProduct(Model model) throws SQLException {
        List<produit> produits = serviceProduit.getAllproducts();
        model.addAttribute("liste", produits);
        return "menu"; 
    }
  
    
    @RequestMapping("/accueil")
    public String showAccueilPage2() {
        return "accueil"; // This refers to the accueil.jsp view
    }
    @GetMapping("/all")
    public String getAllProducts(Model model) throws SQLException {
        List<produit> produits = serviceProduit.getAllproducts();
        model.addAttribute("liste", produits);
        return "index2"; 
    }

    @GetMapping("/delete")
    public String deleteProduct(@RequestParam("id") int id) throws SQLException {
    	serviceProduit.deleteProduct(id);
        return "redirect:/all";
    }

    

    @GetMapping("/search")
    public String rechercherProduits(@RequestParam(value = "mc", required = false, defaultValue = "") String mc, Model model) {
        List<produit> produits = serviceProduit.getProductByMC(mc);
        System.out.println("Mot clé recherché : " + mc);
        System.out.println("Produits trouvés : " + produits);
        model.addAttribute("liste", produits);
        model.addAttribute("mc", mc);
        return "index2";
    }
    

    @GetMapping("/edit")
    public String showEditProductForm2(@RequestParam("id") Long id, Model model) throws SQLException {
        produit product = serviceProduit.getProductById(id);
        List<categorie> categories = serviceCategorie.getAllCategories();
        model.addAttribute("produit", product);
        model.addAttribute("categories", categories);
        
        return "edit";
    }

    @PostMapping("/edit")
    public String updateProduct(@ModelAttribute produit produit) {
        try {
        	serviceProduit.updateProduct(produit);
        } catch (SQLException e) {
            e.printStackTrace();
            return "error";  
        }
        return "redirect:/all";
    }

    @Autowired
    private IServiceCategorie serviceCategorie; 

    @GetMapping("/add")
    public String showAddProductForm(Model model) {
        List<categorie> categories = serviceCategorie.getAllCategories(); 
        model.addAttribute("categories", categories); 
        return "addProduit";  
    }

    @PostMapping("/add")
    public String addProduit(@ModelAttribute produit produit) {
        try {
            serviceProduit.addProduit(produit);
        } catch (SQLException e) {
            e.printStackTrace();  // Replace with a logger
            return "error";  
        }
        return "redirect:/all";
    }
    @GetMapping("/addCategorie")
    public String showAddCategoryForm(Model model) {
        List<categorie> categories = serviceCategorie.getAllCategories();
        if (categories.isEmpty()) {
            System.out.println("Aucune catégorie trouvée dans la base de données.");
        } else {
            System.out.println("Catégories récupérées : " + categories);
        }
        model.addAttribute("categorie", new categorie());
        model.addAttribute("categories", categories);  // Assurez-vous que la liste est bien ajoutée au modèle
        return "addCategorie";  // Nom de la vue
    }


    @PostMapping("/addCategorie")
        public String addCategorie(@ModelAttribute categorie categories) {
            try {
                serviceCategorie.addCategorie(categories); 
            } catch (Exception e) {
                e.printStackTrace();  
                return "error";
            }
            return "redirect:/all"; 
        }
    @GetMapping("/about")
    public String getAllProducts3(Model model) throws SQLException {
        List<produit> produits = serviceProduit.getAllproducts();
        model.addAttribute("liste", produits);
        return "about"; 
    }
    @GetMapping("/services")
    public String getAllProducts4(Model model) throws SQLException {
        List<produit> produits = serviceProduit.getAllproducts();
        model.addAttribute("liste", produits);
        return "service"; 
    }
    @GetMapping("/Valeurs")
    public String getAllProducts5(Model model) throws SQLException {
        List<produit> produits = serviceProduit.getAllproducts();
        model.addAttribute("liste", produits);
        return "Valeurs"; 
    
    }
}


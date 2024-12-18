package com.isitcom.formationspringboot.gestioncatalogue30.service;

import java.util.List;

import com.isitcom.formationspringboot.gestioncatalogue30.entities.message;

public interface IserviceContact {
    List<message> getAllMessages(); // Renamed for clarity
    void addMessage(message msg);
}

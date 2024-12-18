package com.isitcom.formationspringboot.gestioncatalogue30.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.message;

public interface MessageRepository extends JpaRepository<message, Long> {
}

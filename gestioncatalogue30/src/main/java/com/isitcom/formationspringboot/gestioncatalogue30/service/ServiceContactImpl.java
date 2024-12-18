package com.isitcom.formationspringboot.gestioncatalogue30.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.isitcom.formationspringboot.gestioncatalogue30.entities.message;
import com.isitcom.formationspringboot.gestioncatalogue30.repository.MessageRepository;

@Service
public class ServiceContactImpl implements IserviceContact {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public List<message> getAllMessages() {
        return messageRepository.findAll();
    }

    @Override
    public void addMessage(message message) {
        messageRepository.save(message);
    }
}

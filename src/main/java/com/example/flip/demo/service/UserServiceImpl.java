package com.example.flip.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.flip.demo.model.Names;
import com.example.flip.demo.repository.NamesRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private NamesRepository namesRepository;

    @Override
    public String saveDetails(Names name) {
        namesRepository.save(name);
        return "Names saved successfully!";
    }
}

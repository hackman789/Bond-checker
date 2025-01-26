package com.example.flip.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.flip.demo.model.Names;

@Repository
public interface NamesRepository extends JpaRepository<Names, Long> {
}

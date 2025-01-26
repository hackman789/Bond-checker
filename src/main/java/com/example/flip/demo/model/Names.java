package com.example.flip.demo.model;

import jakarta.persistence.*;

@Entity
@Table(name = "Name")
public class Names {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "his_name", length = 100, nullable = false)
    private String hisName;

    @Column(name = "her_name", length = 100, nullable = false)
    private String herName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHisName() {
        return hisName;
    }

    public void setHisName(String hisName) {
        this.hisName = hisName;
    }

    public String getHerName() {
        return herName;
    }

    public void setHerName(String herName) {
        this.herName = herName;
    }
}

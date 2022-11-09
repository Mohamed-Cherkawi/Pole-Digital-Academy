package com.pda.entities;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@Table(name = "users")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(nullable = false , length = 100)
    private String name;

    @Column(nullable = false , length = 70)
    private String email;

    public User() { }

    public User(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public void setName(String name) { this.name = name; }
    public void setEmail(String email) { this.email = email; }

    public String getName() { return name; }
    public String getEmail() { return email; }

}

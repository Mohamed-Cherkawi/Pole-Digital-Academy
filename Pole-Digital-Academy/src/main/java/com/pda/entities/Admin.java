package com.pda.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.util.HashSet;

@Entity
@Table(name = "admin")
public class Admin extends User {
    @Column(nullable = false , length = 80)
    private String username;
    @Column(nullable = false , length = 150)
    private String password;
    @OneToMany(targetEntity = Activity.class)
    private HashSet<Activity> createdActivities;
    @Column(nullable = false)
    private boolean isActive;

    public void login(){}
    public void addACtivity(){}
    public void addParticipants(){}
    public HashSet<Activity> getActivities(){ // Type Activity
        return new HashSet<>();
    }
    public HashSet<String> getParticipants(){ // Type Participant
        return new HashSet<>();
    }
}

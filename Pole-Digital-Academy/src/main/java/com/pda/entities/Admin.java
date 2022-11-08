package com.pda.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.io.Serializable;
import java.util.HashSet;

@Entity
@Table(name = "admin")
public class Admin extends User implements Serializable {
    @Column(nullable = false , length = 80)
    private String username;
    @Column(nullable = false , length = 150)
    private String password;
    @OneToMany(targetEntity = Activity.class)
    private HashSet<Activity> createdActivities;
    @Column(nullable = false)
    private boolean isActive;

    public Admin() {
    }
    public Admin(String name, String email, String username, String password, boolean isActive) {
        super(name, email);
        this.username = username;
        this.password = password;
        this.isActive = isActive;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public HashSet<Activity> getCreatedActivities() {
        return createdActivities;
    }

    public void setCreatedActivities(HashSet<Activity> createdActivities) {
        this.createdActivities = createdActivities;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }
    /*  public void login(){}
    public void addACtivity(){}
    public void addParticipants(){} */
}

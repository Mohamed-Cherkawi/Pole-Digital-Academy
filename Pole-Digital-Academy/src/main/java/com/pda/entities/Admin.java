package com.pda.entities;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "admin")
public class Admin extends User implements Serializable {
    @Column(nullable = false , length = 80)
    private String username;
    @Column(nullable = false , length = 150)
    private String password;
    @OnDelete(action = OnDeleteAction.CASCADE)
    @OneToMany(mappedBy = "admin" , cascade = CascadeType.ALL , fetch = FetchType.LAZY)
    private Set<Activity> createdActivities = new HashSet<>();
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

    public Set<Activity> getCreatedActivities() {
        return createdActivities;
    }

    public void setCreatedActivities(Set<Activity> createdActivities) {
        this.createdActivities = createdActivities;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }
    @Override
    public String toString() {
        return "Admin{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", createdActivities=" + createdActivities +
                ", isActive=" + isActive +
                '}';
    }
    /*  public void login(){}
    public void addACtivity(){}
    public void addParticipants(){} */
}

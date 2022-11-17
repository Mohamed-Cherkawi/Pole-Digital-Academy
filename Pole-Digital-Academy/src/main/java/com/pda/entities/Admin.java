package com.pda.entities;

import jakarta.persistence.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "admins")
public class Admin extends User implements Serializable {

    @Column(nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @OnDelete(action = OnDeleteAction.CASCADE)
    @OneToMany(mappedBy = "admin",cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Activity> activities = new ArrayList<>();

    @Column(nullable = false)
    private boolean isActive;

    public Admin() { }

    public Admin(String name, String email, String username, String password, boolean isActive) {
        super(name, email);
        this.username = username;
        this.password = password;
        this.isActive = isActive;
    }

    public void setUsername(String username) { this.username = username; }
    public void setPassword(String password) { this.password = password; }
    public void setActive(boolean active) { isActive = active; }
    public void setActivities(List<Activity> activities) { this.activities = activities;}

    public String getUsername() { return username; }
    public String getPassword() { return password; }
    public boolean isActive() { return isActive; }
    public List<Activity> getActivities() { return activities; }

}
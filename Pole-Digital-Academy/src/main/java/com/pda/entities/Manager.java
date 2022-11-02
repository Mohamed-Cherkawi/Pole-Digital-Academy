package com.pda.entities;

import com.pda.enums.ManagerType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;

import java.util.HashSet;
import java.util.Set;

@Entity
public class Manager extends User{
    private String domain;
    @Column(nullable = false)
    private ManagerType type;
    @OneToMany(mappedBy = "Activity")
    private HashSet<Activity> participedActivities;
    public Manager() {
    }
    public Manager(int id, String name, String email, String domain, ManagerType type) {
        super(id, name, email);
        this.domain = domain;
        this.type = type;
    }
}

package com.pda.entities;

import com.pda.enums.ManagerType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.HashSet;

@Entity
@Table(name = "managers")
public class Manager extends User implements Serializable {

    private String domain;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false,length = 10)
    private ManagerType type;

    @OneToMany(targetEntity = Activity.class)
    private HashSet<Activity> activities;

    public Manager() { }

    public Manager(String name , String email,String domain, ManagerType type) {
        super(name, email);
        this.domain = domain;
        this.type = type;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }
    public void setType(ManagerType type) {
        this.type = type;
    }
    public void setActivities(HashSet<Activity> activities) { this.activities = activities; }

    public String getDomain() {
        return domain;
    }
    public ManagerType getType() {
        return type;
    }
    public HashSet<Activity> getActivities() { return activities; }

}

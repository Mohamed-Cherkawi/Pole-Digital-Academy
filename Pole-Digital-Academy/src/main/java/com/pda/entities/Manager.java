package com.pda.entities;

import com.pda.enums.ManagerType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.HashSet;

@Entity
@Table(name = "manager")
public class Manager extends User implements Serializable {
    private String domain;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false,length = 10)
    private ManagerType type;
    @OneToMany(targetEntity = Activity.class)
    private HashSet<Activity> managedActivities;

    public Manager() {
    }
    public Manager(String name , String email,String domain, ManagerType type) {
        super(name, email);
        this.domain = domain;
        this.type = type;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public ManagerType getType() {
        return type;
    }

    public void setType(ManagerType type) {
        this.type = type;
    }

    public HashSet<Activity> getManagedActivities() {
        return managedActivities;
    }

    public void setParticipedActivities(HashSet<Activity> participedActivities) {
        this.managedActivities = participedActivities;
    }
}

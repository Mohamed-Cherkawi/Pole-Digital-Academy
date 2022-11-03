package com.pda.entities;

import com.pda.enums.ManagerType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "manager")
public class Manager extends User{
    private String domain;
    @Column(nullable = false)
    private ManagerType type;
    @OneToMany(mappedBy = "manager")
    private HashSet<Activity> participedActivities;
    public Manager() {
    }
    public Manager(int id, String name, String email, String domain, ManagerType type) {
        super(id, name, email);
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

    public HashSet<Activity> getParticipedActivities() {
        return participedActivities;
    }

    public void setParticipedActivities(HashSet<Activity> participedActivities) {
        this.participedActivities = participedActivities;
    }
}

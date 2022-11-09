package com.pda.entities;

import jakarta.persistence.*;

import java.util.HashSet;


@Entity
@Table(name = "participants")
public class Participant extends User {

    @Column(length = 20)
    private String domain;

    @Column(nullable = false , length = 20)
    private String structure;

    @ManyToMany(targetEntity = Activity.class)
    private HashSet<Activity> activities;

    public Participant() { }

    public Participant(String name, String email, String domain, String structure) {
        super(name, email);
        this.domain = domain;
        this.structure = structure;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }
    public void setStructure(String structure) {
        this.structure = structure;
    }
    public void setActivities(HashSet<Activity> activities) { this.activities = activities; }

    public String getDomain() {
        return domain;
    }
    public String getStructure() {
        return structure;
    }
    public HashSet<Activity> getActivities() { return activities; }

}

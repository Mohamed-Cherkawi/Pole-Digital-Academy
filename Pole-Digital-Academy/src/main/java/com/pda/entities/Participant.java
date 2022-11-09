package com.pda.entities;

import jakarta.persistence.*;

import java.util.HashSet;


@Entity
@Table(name = "participant")
public class Participant extends User {
    @Column(length = 20)
    private String domain;
    @Column(nullable = false , length = 20)
    private String structure;
    @ManyToMany(targetEntity = Activity.class)
    private HashSet<Activity> participedActivities;

    public Participant() {
    }
    public Participant(String name, String email, String domain, String structure) {
        super(name, email);
        this.domain = domain;
        this.structure = structure;
    }

    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

    public String getStructure() {
        return structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    public HashSet<Activity> getParticipedActivities() {
        return participedActivities;
    }

    public void setParticipedActivities(HashSet<Activity> participedActivities) {
        this.participedActivities = participedActivities;
    }
}

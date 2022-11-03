package com.pda.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

import java.util.HashSet;


@Entity
@Table(name = "participant")
public class Participant extends User {
    private String domain;
    @Column(nullable = false)
    private String structure;
    @OneToMany(targetEntity = Activity.class)
    private HashSet<Activity> participedActivities;

    public Participant() {
    }
    public Participant(int id, String name, String email, String domain, String structure) {
        super(id, name, email);
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

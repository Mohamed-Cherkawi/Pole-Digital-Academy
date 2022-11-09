package com.pda.entities;

import jakarta.persistence.*;

import java.util.ArrayList;

import java.util.List;


@Entity
@Table(name = "participants")
public class Participant extends User {

    private String domain;

    @Column(nullable = false )
    private String structure;

    @ManyToMany
    @JoinTable(
            name = "activity_participant",
            joinColumns = { @JoinColumn(name = "participant_id") },
            inverseJoinColumns = { @JoinColumn(name = "activity_id") }
    )
    private List<Activity> activities = new ArrayList<>();

    public Participant() { }

    public Participant(String name, String email, String domain, String structure) {
        super(name, email);
        this.domain = domain;
        this.structure = structure;
    }

    public void setDomain(String domain) { this.domain = domain; }
    public void setStructure(String structure) { this.structure = structure; }
    public void setActivities(List<Activity> activities) { this.activities = activities; }

    public String getDomain() { return domain; }
    public String getStructure() { return structure; }
    public List<Activity> getActivities() { return activities; }

}

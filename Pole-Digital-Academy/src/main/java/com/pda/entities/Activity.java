package com.pda.entities;

import com.pda.enums.ActivityType;

import jakarta.persistence.*;

import java.io.Serializable;

import java.util.ArrayList;


import java.util.List;

@Entity
@Table(name = "activities")
public class Activity implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(nullable = false )
    private String title;

    @Column( length = 255)
    private String description;

    @Enumerated(EnumType.STRING)
    private ActivityType type;

    @Column(nullable = false)
    private String startDate;

    @Column(nullable = false)
    private String endDate;

    @Column(nullable = false)
    private boolean isActive;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Admin admin;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Manager manager;

    @ManyToMany(mappedBy = "activities", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Participant> participants = new ArrayList<>();

    @ManyToMany(mappedBy = "activities", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Exercise> exercises = new ArrayList<>();

    public Activity() { }

    public Activity(String title, String description, ActivityType type, String startDate, String endDate, boolean isActive) {

        setTitle(title);
        setDescription(description);
        setType(type);
        setStartDate(startDate);
        setEndDate(endDate);
        setActive(isActive);

    }

    public void setId(int id) { this.id = id; }
    public void setTitle(String title) { this.title = title; }
    public void setDescription(String description) { this.description = description; }
    public void setType(ActivityType type) { this.type = type; }
    public void setStartDate(String startDate) { this.startDate = startDate; }
    public void setEndDate(String endDate) { this.endDate = endDate;}
    public void setAdmin(Admin admin) { this.admin = admin; }
    public void setActive(boolean active) { isActive = active; }
    public void setManager(Manager manager) { this.manager = manager; }
    public void setParticipants(List<Participant> participants) { this.participants = participants; }
    public void setExercises(List<Exercise> exercises) { this.exercises = exercises; }

    public int getId() { return id; }
    public String getTitle() { return title; }
    public String getDescription() { return description; }
    public ActivityType getType() { return type; }
    public String getStartDate() { return startDate; }
    public String getEndDate() { return endDate; }
    public Admin getAdmin() { return admin; }
    public boolean isActive() { return isActive; }
    public Manager getManager() { return manager; }
    public List<Participant> getParticipants() { return participants; }
    public List<Exercise> getExercises() { return exercises; }

    @Override
    public String toString() {
        return "Activity{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", type=" + type +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", isActive=" + isActive +
                ", admin=" + admin +
                ", manager=" + manager +
                ", participants=" + participants +
                ", exercises=" + exercises +
                '}';
    }

}
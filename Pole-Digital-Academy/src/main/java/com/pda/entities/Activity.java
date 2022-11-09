package com.pda.entities;

import com.pda.enums.ActivityType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
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
    private Date startDate;

    @Column(nullable = false)
    private Date endDate;

    @Column(nullable = false)
    private boolean isActive;

    @ManyToOne
    private Admin admin;

    @ManyToOne
    private Manager manager;

    @ManyToMany
    @JoinTable(
            name = "activity_participant",
            joinColumns = { @JoinColumn(name = "activity_id") },
            inverseJoinColumns = { @JoinColumn(name = "participant_id") }
    )
    private List<Participant> participants = new ArrayList<>();

    @ManyToMany
    @JoinTable(
            name = "activity_exercise",
            joinColumns = { @JoinColumn(name = "activity_id") },
            inverseJoinColumns = { @JoinColumn(name = "exercise_id") }
    )
    private List<Exercise> exercises = new ArrayList<>();

    public Activity() { }

    public Activity(String title, String description, ActivityType type, Date startDate, Date endDate, boolean isActive) {
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
    public void setStartDate(Date startDate) { this.startDate = startDate; }
    public void setEndDate(Date endDate) { this.endDate = endDate;}
    public void setAdmin(Admin admin) { this.admin = admin; }
    public void setActive(boolean active) { isActive = active; }
    public void setManager(Manager manager) { this.manager = manager; }
    public void setParticipants(List<Participant> participants) { this.participants = participants; }
    public void setExercises(List<Exercise> exercises) { this.exercises = exercises; }

    public int getId() { return id; }
    public String getTitle() { return title; }
    public String getDescription() { return description; }
    public ActivityType getType() { return type; }
    public Date getStartDate() { return startDate; }
    public Date getEndDate() { return endDate; }
    public Admin getAdmin() { return admin; }
    public boolean isActive() { return isActive; }
    public Manager getManager() { return manager; }
    public List<Participant> getParticipants() { return participants; }
    public List<Exercise> getExercises() { return exercises; }

}
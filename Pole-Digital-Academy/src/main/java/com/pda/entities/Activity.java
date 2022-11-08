package com.pda.entities;

import com.pda.enums.ActivityType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;

@Entity
@Table(name = "activity")
public class Activity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(nullable = false , length = 90)
    private String title;
    @Column( length = 255)
    private String description;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false , length = 15)
    private ActivityType type;
    @Column(nullable = false)
    private Date startDate;
    @Column(nullable = false)
    private Date endDate;
    @ManyToOne(targetEntity = Admin.class)
    @JoinColumn(name="admin_id", nullable=false)
    private Admin createdBy;
    @Column(nullable = false)
    private boolean isActive;
    @ManyToOne(targetEntity=Manager.class)
    @JoinColumn(name = "manager_id",nullable = false)
    private Manager manager;
   /* @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "activity_participant",
            joinColumns = { @JoinColumn(name = "activity_id") },
            inverseJoinColumns = { @JoinColumn(name = "participant_id") }
    )*/
    @ManyToMany(targetEntity = Participant.class)
    private HashSet<Participant> participants;
   /* @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "activity_exercise",
            joinColumns = { @JoinColumn(name = "activity_id") },
            inverseJoinColumns = { @JoinColumn(name = "exercise_id") }
    )*/
    @ManyToMany(targetEntity = Exercise.class)
    private HashSet<Exercise> exercises;
    public Activity() {
    }
    public Activity(String title, String description, ActivityType type, Date startDate, Date endDate, boolean isActive, Manager manager) {
        setTitle(title);
        setDescription(description);
        setType(type);
        setStartDate(startDate);
        setEndDate(endDate);
        setActive(isActive);
        setManager(manager);
    }
    public Activity(String title, String description, ActivityType type, Date startDate, Date endDate, boolean isActive) {
        setTitle(title);
        setDescription(description);
        setType(type);
        setStartDate(startDate);
        setEndDate(endDate);
        setActive(isActive);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ActivityType getType() {
        return type;
    }

    public void setType(ActivityType type) {
        this.type = type;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Admin getCreatedBy() {
        return createdBy;
    }

    public void setCreatedBy(Admin createdBy) {
        this.createdBy = createdBy;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public Manager getManager() {
        return manager;
    }

    public void setManager(Manager manager) {
        this.manager = manager;
    }

    public HashSet<Participant> getParticipants() {
        return participants;
    }

    public void setParticipants(HashSet<Participant> participants) {
        this.participants = participants;
    }

    public HashSet<Exercise> getExercises() {
        return exercises;
    }

    public void setExercises(HashSet<Exercise> exercises) {
        this.exercises = exercises;
    }
}
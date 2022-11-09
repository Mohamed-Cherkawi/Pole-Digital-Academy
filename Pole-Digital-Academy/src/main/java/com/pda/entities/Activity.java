package com.pda.entities;

import com.pda.enums.ActivityType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;

@Entity
@Table(name = "activities")
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
    private Admin admin;

    @Column(nullable = false)
    private boolean isActive;

    @ManyToOne(targetEntity=Manager.class)
    @JoinColumn(name = "manager_id",nullable = false)
    private Manager manager;

    @ManyToMany(targetEntity = Participant.class)
    private HashSet<Participant> participants;

    @ManyToMany(targetEntity = Exercise.class)
    private HashSet<Exercise> exercises;

    public Activity() { }

    public Activity(String title, String description, ActivityType type, Date startDate, Date endDate, boolean isActive) {
        setTitle(title);
        setDescription(description);
        setType(type);
        setStartDate(startDate);
        setEndDate(endDate);
        setActive(isActive);
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public void setType(ActivityType type) {
        this.type = type;
    }
    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    public void setAdmin(Admin admin) { this.admin = admin; }
    public void setActive(boolean active) {
        isActive = active;
    }
    public void setManager(Manager manager) {
        this.manager = manager;
    }
    public void setParticipants(HashSet<Participant> participants) {
        this.participants = participants;
    }
    public void setExercises(HashSet<Exercise> exercises) { this.exercises = exercises; }

    public int getId() {
        return id;
    }
    public String getTitle() {
        return title;
    }
    public String getDescription() {
        return description;
    }
    public ActivityType getType() {
        return type;
    }
    public Date getStartDate() {
        return startDate;
    }
    public Date getEndDate() {
        return endDate;
    }
    public Admin getAdmin() { return admin; }
    public boolean isActive() {
        return isActive;
    }
    public Manager getManager() {
        return manager;
    }
    public HashSet<Participant> getParticipants() {
        return participants;
    }
    public HashSet<Exercise> getExercises() {
        return exercises;
    }

}
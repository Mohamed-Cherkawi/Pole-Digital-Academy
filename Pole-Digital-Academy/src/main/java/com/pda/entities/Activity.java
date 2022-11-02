package com.pda.entities;

import com.pda.enums.ActivityType;
import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;

@Entity
public class Activity implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(nullable = false , length = 90)
    private String title;
    @Column( length = 255)
    private String description;
    @Column(nullable = false)
    private ActivityType type;
    @Column(nullable = false)
    private Date startDate;
    @Column(nullable = false)
    private Date endDate;
    @ManyToOne(targetEntity = Admin.class)
    private Admin createdBy;
    @Column(nullable = false)
    private boolean isActive;
    @Column(nullable = false)
    @OneToOne(targetEntity=Manager.class)
    private Manager manager;
    @OneToMany(targetEntity = Participant.class)
    private HashSet<Participant> participants;
    @ManyToMany(cascade = { CascadeType.ALL })
    @JoinTable(
            name = "Activity_Exercise",
            joinColumns = { @JoinColumn(name = "activity_id") },
            inverseJoinColumns = { @JoinColumn(name = "exercise_id") }
    )
    private HashSet<Exercise> exercises;
    public Activity() {
    }

    public Activity(String title, String description, ActivityType type, Date startDate, Date endDate, boolean isActive, Manager manager) {
        this.title = title;
        this.description = description;
        this.type = type;
        this.startDate = startDate;
        this.endDate = endDate;
        this.isActive = isActive;
        this.manager = manager;
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

    public boolean isActive() {
        return isActive;
    }

    public void setCreatedBy(Admin createdBy) {
        this.createdBy = createdBy;
    }
    public Admin getCreatedBy() {
        return createdBy;
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
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getId() {
        return id;
    }
    public void setExercises(HashSet<Exercise> exercises) {
        this.exercises = exercises;
    }
    public HashSet<Exercise> getExercises() {
        return exercises;
    }
}

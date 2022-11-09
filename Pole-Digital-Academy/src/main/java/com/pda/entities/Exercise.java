package com.pda.entities;

import jakarta.persistence.*;

import java.util.Date;
import java.util.HashSet;

@Entity
@Table(name = "exercises")
public class Exercise {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(nullable = false , length = 5)
    private String year;

    @Column(nullable = false)
    private Date startDate;

    @Column(nullable = false)
    private Date endDate;

    @ManyToMany(targetEntity = Activity.class)
    private HashSet<Activity> activities = new HashSet<>();

    public Exercise() { }

    public Exercise(String year, Date startDate, Date endDate) {
        this.year = year;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setYear(String year) {
        this.year = year;
    }
    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }
    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }
    public void setActivities(HashSet<Activity> activities) { this.activities = activities; }

    public int getId() {
        return id;
    }
    public String getYear() {
        return year;
    }
    public Date getStartDate() {
        return startDate;
    }
    public Date getEndDate() {
        return endDate;
    }
    public HashSet<Activity> getActivities() {
        return activities;
    }

}

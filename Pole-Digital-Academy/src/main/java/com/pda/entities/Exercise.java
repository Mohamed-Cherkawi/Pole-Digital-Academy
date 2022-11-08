package com.pda.entities;

import jakarta.persistence.*;

import java.util.Date;
import java.util.HashSet;

@Entity
@Table(name = "exercise")
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

    public Exercise() {
    }

    public Exercise(String year, Date startDate, Date endDate) {
        this.year = year;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
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
    public HashSet<Activity> getActivities() {
        return activities;
    }
}

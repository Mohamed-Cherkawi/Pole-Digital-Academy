package com.pda.entity;

import java.util.ArrayList;

public class Admin extends User {
    private String username;
    private String password;
    private boolean isActive;

    public void login(){}
    public void addACtivity(){}
    public void addParticipants(){}
    public ArrayList<Activity> getActivities(){ // Type Activity
        return new ArrayList<>();
    }
    public ArrayList<String> getParticipants(){ // Type Participant
        return new ArrayList<>();
    }
}

package com.pda.services.interfaces;

import com.pda.entities.Activity;

import java.util.List;

public interface ActivityServiceInterface {

    void add(Activity activity);
    Activity getActivityById(Integer id);
    List<Activity> getAllActivities();
    void delete(Integer id);

}

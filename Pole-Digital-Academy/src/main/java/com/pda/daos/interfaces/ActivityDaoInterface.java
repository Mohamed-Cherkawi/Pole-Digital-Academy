package com.pda.daos.interfaces;

import com.pda.entities.Activity;
import com.pda.entities.Admin;

import java.util.List;

public interface ActivityDaoInterface {

    void add(Activity activity);
    Activity getActivityById(Integer id);
    List<Activity> getAllActivities();
    void delete(Integer id);

}

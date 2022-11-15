package com.pda.services.classes;

import com.pda.daos.classes.ActivityDaoClass;
import com.pda.entities.Activity;
import com.pda.services.interfaces.ActivityServiceInterface;

import java.util.List;

public class ActivityServiceClass implements ActivityServiceInterface {

    ActivityDaoClass activityDaoClass = new ActivityDaoClass();

    @Override
    public void add(Activity activity) { activityDaoClass.add(activity); }

    @Override
    public Activity getActivityById(Integer id) { return activityDaoClass.getActivityById(id); }

    @Override
    public List<Activity> getAllActivities() { return  activityDaoClass.getAllActivities(); }

    @Override
    public void delete(Integer id) { activityDaoClass.delete(id); }

}

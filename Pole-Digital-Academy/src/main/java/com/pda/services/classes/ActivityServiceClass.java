package com.pda.services.classes;

import com.pda.daos.classes.ActivityDaoClass;
import com.pda.entities.Activity;
import com.pda.services.interfaces.GenericServiceInterface;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;

import java.util.List;

public class ActivityServiceClass implements GenericServiceInterface<Activity> {

    EntityManager em = PersistenceManager.getEntityManager();

    ActivityDaoClass activityDaoClass = new ActivityDaoClass();

    @Override
    public void add(Activity activity) { activityDaoClass.add(activity); }

    @Override
    public Activity getById(Integer id) { return  activityDaoClass.getById(id); }

    @Override
    public Activity getByEmail(String email) { return null; }

    @Override
    public List<Activity> getAll() { return activityDaoClass.getAll(); }

    @Override
    public void delete(Integer id) { }

}

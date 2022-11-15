package com.pda.daos.classes;

import com.pda.daos.interfaces.ActivityDaoInterface;
import com.pda.entities.Activity;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ActivityDaoClass implements ActivityDaoInterface {

    EntityManager em = PersistenceManager.getEntityManager();


    @Override
    public void add(Activity activity) {

        em.getTransaction().begin();
        em.persist(activity);
        em.getTransaction().commit();

    }

    @Override
    public Activity getActivityById(Integer id) {


        em.getTransaction().begin();

        Query query = em.createQuery("SELECT activity FROM Activity activity  where activity.id = :id ", Activity.class);

        query.setParameter("id", id);


        Activity activity = (Activity) query.getSingleResult();

        em.getTransaction().commit();

        return activity;

    }

    @Override
    public List<Activity> getAllActivities() {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT activity FROM Activity activity", Activity.class);

        em.getTransaction().commit();

        return query.getResultList();
    }

    @Override
    public void delete(Integer id) { }

}

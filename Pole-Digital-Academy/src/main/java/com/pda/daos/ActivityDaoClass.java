package com.pda.daos;

import com.pda.interfaces.GenericDaoInterface;
import com.pda.entities.Activity;
import com.pda.interfaces.GenericDaoInterface;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ActivityDaoClass implements GenericDaoInterface<Activity> {

    EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Activity activity) {

        em.getTransaction().begin();
        em.persist(activity);
        em.getTransaction().commit();

    }

    @Override
    public Activity getById(Integer id) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT activity FROM Activity activity  where activity.id = :id ", Activity.class);

        query.setParameter("id", id);

        Activity activity = (Activity) query.getSingleResult();

        em.getTransaction().commit();

        return activity;

    }

    @Override
    public Activity getByEmail(String email) { return null; }

    @Override
    public List<Activity> getAll() {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT activity FROM Activity activity", Activity.class);

        em.getTransaction().commit();

        return query.getResultList();

    }

    @Override
    public void delete(Integer id) { }

}

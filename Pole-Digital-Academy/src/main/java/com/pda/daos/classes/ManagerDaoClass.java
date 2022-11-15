package com.pda.daos.classes;

import com.pda.daos.interfaces.ManagerDaoInterface;

import com.pda.entities.Admin;

import com.pda.entities.Exercise;
import com.pda.entities.Manager;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ManagerDaoClass implements ManagerDaoInterface {

    EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Manager manager) { }

    @Override
    public Manager getManagerId(Integer id) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT manager FROM Manager manager  where manager.id = :id ", Manager.class);

        query.setParameter("id", id);

        Manager manager = (Manager) query.getSingleResult();

        em.getTransaction().commit();

        return manager;
    }

    @Override
    public Manager getManagerByEmail(String email) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT manager FROM Manager manager  where manager.email = :email ", Admin.class);

        query.setParameter("email",email);

        Manager manager = (Manager) query.getSingleResult();

        em.getTransaction().commit();

        return manager;

    }

    @Override
    public List<Manager> getAllManager() {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT manager FROM Manager manager", Manager.class);

        em.getTransaction().commit();

        return query.getResultList();
    }

    @Override
    public void delete(Integer id) { }

}

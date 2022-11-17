package com.pda.daos;

import com.pda.interfaces.GenericDaoInterface;
import com.pda.entities.Admin;
import com.pda.entities.Manager;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ManagerDaoClass implements GenericDaoInterface<Manager> {

    EntityManager em = PersistenceManager.getEntityManager();


    @Override
    public void add(Manager manager) { }

    @Override
    public Manager getById(Integer id) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT manager FROM Manager manager  where manager.id = :id ", Manager.class);

        query.setParameter("id", id);

        Manager manager = (Manager) query.getSingleResult();

        em.getTransaction().commit();

        return manager;

    }

    @Override
    public Manager getByEmail(String email) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT manager FROM Manager manager  where manager.email = :email ", Admin.class);

        query.setParameter("email",email);

        Manager manager = (Manager) query.getSingleResult();

        em.getTransaction().commit();

        return manager;

    }

    @Override
    public List<Manager> getAll() {

        em.getTransaction().begin();
        Query query = em.createQuery("SELECT manager FROM Manager manager", Manager.class);
        em.getTransaction().commit();
        return query.getResultList();

    }

    @Override
    public void delete(Integer id) {

    }
}

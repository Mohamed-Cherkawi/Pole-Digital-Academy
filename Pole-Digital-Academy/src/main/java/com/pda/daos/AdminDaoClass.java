package com.pda.daos;

import com.pda.interfaces.GenericDaoInterface;
import com.pda.entities.Admin;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class AdminDaoClass implements GenericDaoInterface<Admin> {

    private EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Admin admin) { }

    @Override
    public Admin getById(Integer id) { return null; }

    @Override
    public Admin getByEmail(String email) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT admin FROM Admin admin  where admin.email = :email ", Admin.class);

        query.setParameter("email",email);

        Admin admin = (Admin) query.getSingleResult();

        em.getTransaction().commit();

        return admin;

    }

    @Override
    public List<Admin> getAll() { return null; }

    @Override
    public void delete(Integer id) { }

}
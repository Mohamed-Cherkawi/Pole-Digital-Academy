package com.pda.daos;
import com.pda.entities.Admin;
import com.pda.interfaces.AdminInterface;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class AdminDao implements AdminInterface {
    private EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Admin admin) {

    }
    @Override
    public Admin getAdminByEmail(String email) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT admin FROM Admin admin  where admin.email = :email ", Admin.class);

        query.setParameter("email",email);

        Admin admin = (Admin) query.getSingleResult();

        em.getTransaction().commit();

        return admin;

    }
    @Override
    public List<Admin> getAllAdmins() {
        return null;
    }
    @Override
    public void delete(Integer id) {

    }
}

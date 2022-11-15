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
        em.getTransaction().begin();
        em.persist(admin);
        em.getTransaction().commit();
    }
    @Override
    public Admin getAdminByUsernPass(String username,String password) {
            try {
                em.getTransaction().begin();

                Query query = em.createQuery("SELECT admin FROM Admin admin  WHERE admin.username = :username AND admin.password = :password", Admin.class);

                query.setParameter("username", username);
                query.setParameter("password", password);

                Admin admin = (Admin) query.getSingleResult();

                em.getTransaction().commit();
                return admin;
            } catch ( Exception e ){
                e.printStackTrace();
                return null;
            }
    }

    @Override
    public List<Admin> getAllAdmins() {
        return null;
    }
    @Override
    public void delete(Integer id) {

    }
}

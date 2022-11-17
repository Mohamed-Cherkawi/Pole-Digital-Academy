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
    public Admin select(int id) {
        try {
            em.getTransaction().begin();
            Admin admin = em.find(Admin.class,id);
            System.out.println(admin + "From 1");
            em.getTransaction().commit();
            return admin;
        } catch ( Exception e ){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void add(Admin admin) {
        try {
            em.getTransaction().begin();
            em.persist(admin);
            em.getTransaction().commit();
            System.out.println("Persisted Successfully");
        } catch ( Exception e ){
            e.printStackTrace();
        }
    }
    @Override
    public Admin getAdminByUsernPass(String username,String password) {
            try {
                em.getTransaction().begin();

                Query query = em.createQuery("SELECT admin FROM Admin admin  WHERE admin.username = :username AND admin.password = :password", Admin.class);

                query.setParameter("username", username);
                query.setParameter("password", password);

                Admin admin = (Admin) query.getSingleResult();
                System.out.println(admin);
                em.getTransaction().commit();
                return admin;
            } catch ( Exception e ){
                e.printStackTrace();
                return null;
            }
    }

    @Override
    public List<Admin> getAllAdmins() {
        try {
            em.getTransaction().begin();

            Query query = em.createQuery("SELECT admin FROM Admin admin ");

            List<Admin> admins = query.getResultList();
            System.out.println(admins);
            em.getTransaction().commit();
            return admins;
        } catch ( Exception e ){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void update(int id , String name , String email , String username , boolean isActive) {
        try {
            em.getTransaction().begin();

            Admin adminUp = em.find(Admin.class ,id);

            adminUp.setName(name);
            adminUp.setEmail(email);
            adminUp.setUsername(username);
            adminUp.setActive(isActive);
            em.getTransaction().commit();

        } catch ( Exception e ){
            e.printStackTrace();
        }
    }

    @Override
    public void delete(Integer id) {
        try {
            em.getTransaction().begin();

            Admin admin=em.find(Admin.class,id);
            em.remove(admin);
            em.getTransaction().commit();
        } catch ( Exception e ){
            e.printStackTrace();
        }
    }

}

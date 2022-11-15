package com.pda;

import com.pda.entities.Admin;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;

public class Main {
    public static void main(String[] args) {
        EntityManager em = PersistenceManager.getEntityManager();
        em.getTransaction().begin();

        Admin admin = new Admin("Mohamed Cherkaoui","emailforstudy911@gmail.com","coder2002",
                "pass123",true);

        em.persist(admin);

        em.getTransaction().commit();
        em.close();

    }
}
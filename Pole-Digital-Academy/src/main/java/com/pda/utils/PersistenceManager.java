package com.pda.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class PersistenceManager {
    private static EntityManager entityManager;

    static {

        try{

            EntityManagerFactory emf = Persistence.createEntityManagerFactory("pda");

            entityManager = emf.createEntityManager();


        } catch (Exception e){

            e.printStackTrace();

        }

    }

    public static EntityManager getEntityManager(){

        return entityManager;

    }

}
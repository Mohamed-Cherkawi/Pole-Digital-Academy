package com.pda;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Main {
    public static void main(String[] args) {
            Persistence.createEntityManagerFactory("pol");
          // EntityManager entityManager = entityManagerFactory.createEntityManager();
    }
}
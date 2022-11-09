package com.pda;

import com.pda.utils.PersistenceManager;

import jakarta.persistence.EntityManager;

public class Main {

    public static void main(String[] args) {

        EntityManager em = PersistenceManager.getEntityManager();

    }

}
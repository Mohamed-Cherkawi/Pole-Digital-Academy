package com.pda;

import com.pda.entities.*;
import com.pda.enums.ActivityType;
import com.pda.enums.ManagerType;
import com.pda.utils.PersistenceManager;

import jakarta.persistence.EntityManager;

import java.util.Date;

public class Main {

    public static void main(String[] args) {

        EntityManager em = PersistenceManager.getEntityManager();

        Admin admin = new Admin("Admin", "admin@gmail.com", "admin","123456",true);
        Admin admin1 = new Admin("Admin1", "admin1@gmail.com", "admin1","123456",true);
        Admin admin2 = new Admin("Admin2", "admin2@gmail.com", "admin2","123456",true);

        Manager manager1 = new Manager("Manager1","manager1@gmail.com","Domain1", ManagerType.FORMATEUR);
        Manager manager2 = new Manager("Manager2","manager2@gmail.com","Domain2", ManagerType.INTERVENANT);

        Activity activity1 = new Activity("activity1", "Description for activity 1", ActivityType.EVENT, new Date(), new Date() ,true);
        activity1.setAdmin(admin1);
        activity1.setManager(manager1);

        Activity activity2 = new Activity("activity2", "Description for activity 2", ActivityType.TALK, new Date(), new Date() ,true);
        activity2.setAdmin(admin2);
        activity2.setManager(manager2);

        Exercise exercise1 = new Exercise("2022", new Date(), new Date());
        exercise1.getActivities().add(activity1);

        Exercise exercise2 = new Exercise("2023", new Date(), new Date());
        exercise2.getActivities().add(activity2);

        Participant participant1 = new Participant("Participant1", "participant1@gmail.com", "domain1","structure1");
        Participant participant2 = new Participant("Participant2", "participant2@gmail.com", "domain2","structure2");
        Participant participant3 = new Participant("Participant3", "participant3@gmail.com", "domain3","structure3");

        activity1.getParticipants().add(participant1);
        activity1.getParticipants().add(participant2);
        activity2.getParticipants().add(participant3);

        em.getTransaction().begin();
        em.persist(admin);
        em.persist(admin1);
        em.persist(admin2);
        em.persist(manager1);
        em.persist(manager2);
        em.persist(activity1);
        em.persist(activity2);
        em.persist(exercise1);
        em.persist(exercise2);
        em.persist(participant1);
        em.persist(participant2);
        em.persist(participant3);
        em.getTransaction().commit();
        em.close();

    }

}
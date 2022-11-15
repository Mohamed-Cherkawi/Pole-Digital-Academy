package com.pda.daos.classes;

import com.pda.daos.interfaces.ExerciseDaoInterface;
import com.pda.entities.Activity;
import com.pda.entities.Exercise;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ExerciseDaoClass implements ExerciseDaoInterface {

    EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Exercise exercise) {

        em.getTransaction().begin();
        em.persist(exercise);
        em.getTransaction().commit();

    }

    @Override
    public Exercise getExerciseById(Integer id) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT exercise FROM Exercise exercise  where exercise.id = :id ", Exercise.class);

        query.setParameter("id", id);


        Exercise exercise = (Exercise) query.getSingleResult();

        em.getTransaction().commit();

        return exercise;

    }

    @Override
    public List<Exercise> getAllExercises() {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT exercise FROM Exercise exercise", Exercise.class);

        em.getTransaction().commit();

        return query.getResultList();

    }

    @Override
    public void delete(Integer id) { }
}

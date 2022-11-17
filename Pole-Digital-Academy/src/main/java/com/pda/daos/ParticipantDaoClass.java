package com.pda.daos;

import com.pda.interfaces.GenericDaoInterface;
import com.pda.entities.Activity;
import com.pda.entities.Participant;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ParticipantDaoClass implements GenericDaoInterface<Participant> {

    EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Participant participant) {

        em.getTransaction().begin();
        em.persist(participant);
        em.getTransaction().commit();
    }

    @Override
    public Participant getById(Integer id) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT participant FROM Participant participant  where participant.id = :id ", Activity.class);

        query.setParameter("id", id);

        Participant participant = (Participant) query.getSingleResult();

        em.getTransaction().commit();

        return participant;

    }

    @Override
    public Participant getByEmail(String email) { return null; }

    @Override
    public List<Participant> getAll() {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT participant FROM Participant participant", Participant.class);

        em.getTransaction().commit();

        return query.getResultList();

    }

    @Override
    public void delete(Integer id) { }

}

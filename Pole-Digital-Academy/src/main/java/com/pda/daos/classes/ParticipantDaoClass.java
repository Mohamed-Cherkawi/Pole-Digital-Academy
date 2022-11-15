package com.pda.daos.classes;

import com.pda.daos.interfaces.ParticipantDaoInterface;
import com.pda.entities.Activity;
import com.pda.entities.Participant;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

import java.util.List;

public class ParticipantDaoClass implements ParticipantDaoInterface {

    EntityManager em = PersistenceManager.getEntityManager();

    @Override
    public void add(Participant participant) {

        em.getTransaction().begin();
        em.persist(participant);
        em.getTransaction().commit();

    }

    @Override
    public Participant getParticipantId(Integer id) {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT participant FROM Participant participant  where participant.id = :id ", Activity.class);

        query.setParameter("id", id);


        Participant participant = (Participant) query.getSingleResult();

        em.getTransaction().commit();

        return participant;
    }

    @Override
    public Participant getParticipantByEmail(String email) { return null; }

    @Override
    public List<Participant> getAllParticipants() {

        em.getTransaction().begin();

        Query query = em.createQuery("SELECT participant FROM Participant participant", Participant.class);

        em.getTransaction().commit();

        return query.getResultList();
    }

    @Override
    public void delete(Integer id) { }
}

package com.pda.services.classes;

import com.pda.daos.classes.ParticipantDaoClass;
import com.pda.entities.Participant;
import com.pda.services.interfaces.ParticipantServiceInterface;

import java.util.List;

public class ParticipantServiceClass implements ParticipantServiceInterface {

    ParticipantDaoClass participantDaoClass = new ParticipantDaoClass();

    @Override
    public void add(Participant participant) { participantDaoClass.add(participant); }

    @Override
    public Participant getParticipantId(Integer id) { return participantDaoClass.getParticipantId(id); }

    @Override
    public Participant getParticipantByEmail(String email) {
        return null;
    }

    @Override
    public List<Participant> getAllParticipants() { return participantDaoClass.getAllParticipants(); }

    @Override
    public void delete(Integer id) {

    }

}

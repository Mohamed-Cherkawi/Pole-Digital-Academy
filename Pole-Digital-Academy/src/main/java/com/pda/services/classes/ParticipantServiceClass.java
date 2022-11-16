package com.pda.services.classes;

import com.pda.daos.classes.ParticipantDaoClass;

import com.pda.entities.Participant;

import com.pda.services.interfaces.GenericServiceInterface;

import java.util.List;

public class ParticipantServiceClass implements GenericServiceInterface<Participant> {

    ParticipantDaoClass participantDaoClass = new ParticipantDaoClass();

    @Override
    public void add(Participant participant) { participantDaoClass.add(participant);}

    @Override
    public Participant getById(Integer id) { return participantDaoClass.getById(id); }

    @Override
    public Participant getByEmail(String email) { return participantDaoClass.getByEmail(email); }

    @Override
    public List<Participant> getAll() {return participantDaoClass.getAll(); }

    @Override
    public void delete(Integer id) { }

}

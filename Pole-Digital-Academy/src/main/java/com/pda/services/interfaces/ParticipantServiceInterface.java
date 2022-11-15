package com.pda.services.interfaces;

import com.pda.entities.Participant;

import java.util.List;

public interface ParticipantServiceInterface {

    void add(Participant participant);
    Participant getParticipantId(Integer id);
    Participant getParticipantByEmail(String email);
    List<Participant> getAllParticipants();
    void delete(Integer id);

}

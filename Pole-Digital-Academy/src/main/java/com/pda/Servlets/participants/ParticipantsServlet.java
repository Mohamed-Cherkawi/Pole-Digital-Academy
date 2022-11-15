package com.pda.Servlets.participants;

import com.pda.entities.Exercise;
import com.pda.entities.Participant;
import com.pda.services.classes.ExerciseServiceClass;
import com.pda.services.classes.ParticipantServiceClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ParticipantsServlet", value = "/participants")
public class ParticipantsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ParticipantServiceClass participantServiceClass = new ParticipantServiceClass();
        List<Participant> participants = participantServiceClass.getAllParticipants();
        request.setAttribute("participants", participants);
        request.getRequestDispatcher("participants/participants.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

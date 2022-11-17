package com.pda.Servlets.participant;

import com.pda.entities.Exercise;
import com.pda.entities.Participant;
import com.pda.Services.ExerciseServiceClass;
import com.pda.Services.ParticipantServiceClass;
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
        List<Participant> participants = participantServiceClass.getAll();
        request.setAttribute("participants", participants);
        request.getRequestDispatcher("participants/participants.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
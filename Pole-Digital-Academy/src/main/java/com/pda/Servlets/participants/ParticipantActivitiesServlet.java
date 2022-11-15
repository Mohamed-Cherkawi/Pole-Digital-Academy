package com.pda.Servlets.participants;

import com.pda.entities.Participant;
import com.pda.services.classes.ParticipantServiceClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ParticipantActivitiesServlet", value = "/participant-activities")
public class ParticipantActivitiesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        ParticipantServiceClass participantServiceClass = new ParticipantServiceClass();

        Participant participant = participantServiceClass.getParticipantId(Integer.parseInt(id));

        request.setAttribute("participant", participant);

        request.getRequestDispatcher("participants/participant-activities.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

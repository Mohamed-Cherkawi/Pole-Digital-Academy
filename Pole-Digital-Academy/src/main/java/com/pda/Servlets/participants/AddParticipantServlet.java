package com.pda.Servlets.participants;


import com.pda.entities.Activity;
import com.pda.entities.Exercise;
import com.pda.entities.Participant;
import com.pda.services.classes.ActivityServiceClass;
import com.pda.services.classes.ExerciseServiceClass;
import com.pda.services.classes.ParticipantServiceClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddParticipantServlet", value = "/add-participant")
public class AddParticipantServlet extends HttpServlet {

    ActivityServiceClass activityServiceClass = new ActivityServiceClass();

    ParticipantServiceClass participantServiceClass = new ParticipantServiceClass();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Activity> activities = activityServiceClass.getAll();

        request.setAttribute("activities", activities);

        request.getRequestDispatcher("participants/add-participant.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer activity_id = Integer.parseInt(request.getParameter("activity_id"));
        Activity activity = activityServiceClass.getById(activity_id);

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String domain = request.getParameter("domain");
        String structure = request.getParameter("structure");


        Participant participant = new Participant(name, email, domain, structure);

        participant.getActivities().add(activity);

        participantServiceClass.add(participant);

        response.sendRedirect("participants");

    }

}

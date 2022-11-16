package com.pda.Servlets.participants;


import com.pda.entities.Activity;
import com.pda.entities.Participant;
import com.pda.services.classes.ActivityServiceClass;
import com.pda.services.classes.ParticipantServiceClass;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateParticipantServlet", value = "/update-participant")
public class UpdateParticipantServlet extends HttpServlet {

    ActivityServiceClass activityServiceClass = new ActivityServiceClass();

    ParticipantServiceClass participantServiceClass = new ParticipantServiceClass();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        Participant participant = participantServiceClass.getById(Integer.parseInt(id));

        List<Activity> activities = activityServiceClass.getAll();

        request.setAttribute("participant", participant );

        request.setAttribute("activities", activities);

        request.getRequestDispatcher("participants/update-participant.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String domain = request.getParameter("domain");
        String structure = request.getParameter("structure");

        Integer activity_id = Integer.parseInt(request.getParameter("activity_id"));
        Activity activity = activityServiceClass.getById(activity_id);

        Participant participant = participantServiceClass.getById(Integer.parseInt(request.getParameter("id")));
        EntityManager em = PersistenceManager.getEntityManager();

        em.getTransaction().begin();
        participant.setName(name);
        participant.setEmail(email);
        participant.setDomain(domain);
        participant.setStructure(structure);
        participant.getActivities().add(activity);
        em.getTransaction().commit();
        response.sendRedirect("participants");

    }

}

package com.pda.Servlets.exercises;


import com.pda.entities.Activity;
import com.pda.entities.Exercise;
import com.pda.entities.Participant;
import com.pda.services.classes.ActivityServiceClass;
import com.pda.services.classes.ExerciseServiceClass;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateExerciseServlet", value = "/update-exercise")
public class UpdateExerciseServlet extends HttpServlet {

    ActivityServiceClass activityServiceClass = new ActivityServiceClass();

    ExerciseServiceClass exerciseServiceClass = new ExerciseServiceClass();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        Exercise exercise = exerciseServiceClass.getExerciseById(Integer.parseInt(id));

        List<Activity> activities = activityServiceClass.getAllActivities();

        request.setAttribute("exercise", exercise);

        request.setAttribute("activities", activities);

        request.getRequestDispatcher("exercises/update-exercise.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer activity_id =  Integer.parseInt(request.getParameter("activity_id"));

        Activity activity = activityServiceClass.getActivityById(activity_id);

        String year = request.getParameter("year");

        String startDate =  request.getParameter("start-date");

        String endDate = request.getParameter("end-date");

        Exercise exercise = exerciseServiceClass.getExerciseById(Integer.parseInt(request.getParameter("id"))) ;

        EntityManager em = PersistenceManager.getEntityManager();
        em.getTransaction().begin();
        exercise.setYear(year);
        exercise.setStartDate(startDate);
        exercise.setEndDate(endDate);
        exercise.getActivities().add(activity);
        em.getTransaction().commit();
        response.sendRedirect("exercises");

    }

}


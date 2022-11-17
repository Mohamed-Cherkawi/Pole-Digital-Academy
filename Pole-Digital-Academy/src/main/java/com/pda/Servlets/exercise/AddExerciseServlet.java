package com.pda.Servlets.exercise;

import com.pda.entities.Activity;
import com.pda.entities.Admin;
import com.pda.entities.Exercise;
import com.pda.entities.Manager;
import com.pda.enums.ActivityType;
import com.pda.Services.ActivityServiceClass;
import com.pda.Services.AdminServiceClass;
import com.pda.Services.ExerciseServiceClass;
import com.pda.Services.ManagerServiceClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddExerciseServlet", value = "/add-exercise")
public class AddExerciseServlet extends HttpServlet {

    ActivityServiceClass activityServiceClass = new ActivityServiceClass();

    ExerciseServiceClass exerciseServiceClass = new ExerciseServiceClass();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Activity> activities = activityServiceClass.getAll();

        request.setAttribute("activities", activities);

        request.getRequestDispatcher("exercises/add-exercise.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String year = request.getParameter("year");
        String startDate =  request.getParameter("start-date");
        String endDate = request.getParameter("end-date");
        Integer activity_id =  Integer.parseInt(request.getParameter("activity_id"));

        Activity activity = activityServiceClass.getById(activity_id);

        Exercise exercise = new Exercise(year, startDate, endDate);

        exercise.getActivities().add(activity);

        exerciseServiceClass.add(exercise);

        response.sendRedirect("exercises");

    }

}

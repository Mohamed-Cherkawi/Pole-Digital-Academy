package com.pda.Servlets.exercises;

import com.pda.entities.Activity;
import com.pda.entities.Exercise;
import com.pda.services.classes.ActivityServiceClass;
import com.pda.services.classes.ExerciseServiceClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ExerciseActivitiesServlet", value = "/exercise-activities")
public class ExerciseActivitiesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        ExerciseServiceClass exerciseServiceClass = new ExerciseServiceClass();
        Exercise exercise = exerciseServiceClass.getExerciseById(Integer.parseInt(id));
        request.setAttribute("exercise", exercise);
        request.getRequestDispatcher("exercises/exercise-activities.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
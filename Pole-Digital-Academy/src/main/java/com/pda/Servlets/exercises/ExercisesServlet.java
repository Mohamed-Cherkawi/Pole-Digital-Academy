package com.pda.Servlets.exercises;

import com.pda.entities.Exercise;
import com.pda.services.classes.ExerciseServiceClass;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ExercisesServlet", value = "/exercises")
public class ExercisesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ExerciseServiceClass exerciseServiceClass = new ExerciseServiceClass();
        List<Exercise> exercises = exerciseServiceClass.getAll();
        request.setAttribute("exercises", exercises);
        request.getRequestDispatcher("exercises/exercises.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

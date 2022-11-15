package com.pda.Servlets.activities;

import com.pda.entities.Activity;
import com.pda.services.classes.ActivityServiceClass;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ActivitiesServlet", value = "/activities")
public class ActivitiesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ActivityServiceClass activityServiceClass = new ActivityServiceClass();
        List<Activity> activities = activityServiceClass.getAllActivities();
        request.setAttribute("activities", activities);
        request.getRequestDispatcher("activities/activities.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}

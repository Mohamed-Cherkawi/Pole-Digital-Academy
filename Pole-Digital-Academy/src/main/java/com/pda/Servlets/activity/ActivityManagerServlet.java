package com.pda.Servlets.activity;

import com.pda.entities.Activity;
import com.pda.Services.ActivityServiceClass;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ActivityManagerServlet", value = "/activity-manager")
public class ActivityManagerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        ActivityServiceClass activityServiceClass = new ActivityServiceClass();
        Activity activity = activityServiceClass.getById(Integer.parseInt(id));
        request.setAttribute("activity", activity);
        request.getRequestDispatcher("activities/activity-manager.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
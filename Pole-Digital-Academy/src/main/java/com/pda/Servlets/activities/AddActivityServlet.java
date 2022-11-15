package com.pda.Servlets.activities;

import com.pda.entities.Activity;
import com.pda.entities.Admin;
import com.pda.entities.Manager;
import com.pda.enums.ActivityType;
import com.pda.services.classes.ActivityServiceClass;
import com.pda.services.classes.AdminServiceClass;
import com.pda.services.classes.ManagerServiceClass;
import jakarta.servlet.*;

import jakarta.servlet.http.*;

import jakarta.servlet.annotation.*;

import java.io.IOException;

import java.util.List;

@WebServlet(name = "AddActivityServlet", value = "/add-activity")
public class AddActivityServlet extends HttpServlet {

    AdminServiceClass adminServiceClass = new AdminServiceClass();
    ManagerServiceClass managerServiceClass = new ManagerServiceClass();
    ActivityServiceClass activityServiceClass = new ActivityServiceClass();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        List<Manager>  managers = managerServiceClass.getAllManager();

        request.setAttribute("managers", managers);

        request.getRequestDispatcher("activities/add-activity.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String startDate =  request.getParameter("start-date");
        String endDate = request.getParameter("end-date");
        String adminEmail = request.getParameter("admin-email");
        String managerEmail = request.getParameter("manager-email");

        Admin admin =  adminServiceClass.getAdminByEmail(adminEmail);

        Manager manager = managerServiceClass.getManagerByEmail(managerEmail);

        Activity activity = new Activity(title, description, ActivityType.EVENT, startDate, endDate ,true);

        activity.setAdmin(admin);

        activity.setManager(manager);

        activityServiceClass.add(activity);

        response.sendRedirect("activities");

    }

}


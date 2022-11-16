package com.pda.Servlets.activities;

import com.pda.entities.Activity;
import com.pda.entities.Admin;
import com.pda.entities.Exercise;
import com.pda.entities.Manager;
import com.pda.enums.ActivityType;
import com.pda.services.classes.ActivityServiceClass;
import com.pda.services.classes.AdminServiceClass;
import com.pda.services.classes.ManagerServiceClass;
import com.pda.utils.PersistenceManager;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateActivityServlet", value = "/update-activity")
public class UpdateActivityServlet extends HttpServlet {

    AdminServiceClass adminServiceClass = new AdminServiceClass();
    ManagerServiceClass managerServiceClass = new ManagerServiceClass();
    ActivityServiceClass activityServiceClass = new ActivityServiceClass();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        Activity activity = activityServiceClass.getById(Integer.parseInt(id));

        List<Manager>  managers = managerServiceClass.getAll();

        request.setAttribute("activity", activity);

        request.setAttribute("managers", managers);

        request.getRequestDispatcher("activities/update-activity.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String startDate =  request.getParameter("start-date");
        String endDate = request.getParameter("end-date");
        String adminEmail = request.getParameter("admin-email");
        String managerId = request.getParameter("manager-id");

        System.out.println(managerId);

        Admin admin =  adminServiceClass.getByEmail(adminEmail);

        Manager manager = managerServiceClass.getById(Integer.parseInt(managerId));

        Activity activity = activityServiceClass.getById(Integer.parseInt(request.getParameter("id"))) ;

        EntityManager em = PersistenceManager.getEntityManager();

        em.getTransaction().begin();

        activity.setTitle(title);
        activity.setDescription(description);
        activity.setStartDate(startDate);
        activity.setEndDate(endDate);
        activity.setAdmin(admin);
        activity.setManager(manager);

        em.getTransaction().commit();

        response.sendRedirect("activities");

    }

}


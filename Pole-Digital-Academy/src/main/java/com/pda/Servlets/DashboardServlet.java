package com.pda.Servlets;

import com.pda.Services.AdminService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;

import java.io.IOException;


@WebServlet(name = "DashboardServlet", value = "/DashboardServlet")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminService adminService = new AdminService();
        if(request.getSession().getAttribute("username") != null) {
            System.out.println(adminService.getAllAdmins());
            request.setAttribute("admins",adminService.getAllAdmins());
            System.out.println(adminService.getAllAdmins());
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        }
         else
            response.sendRedirect("/LoginServlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

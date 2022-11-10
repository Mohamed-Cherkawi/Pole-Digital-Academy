package com.pda.Servlets;

import com.pda.entities.Admin;
import com.pda.services.classes.AdminServiceClass;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");

        String password = request.getParameter("password");

        AdminServiceClass adminServiceClass = new AdminServiceClass();

        Admin admin = adminServiceClass.getAdminByEmail(email);

        HttpSession session = request.getSession(true);

        session.setAttribute("email" , email);

        session.setAttribute("password", password);

        if(email.equals(admin.getEmail()) && password.equals(admin.getPassword())){

            response.sendRedirect("dashboard");

        }else{

            request.getRequestDispatcher("/index.jsp").forward(request, response);

        }

    }
}

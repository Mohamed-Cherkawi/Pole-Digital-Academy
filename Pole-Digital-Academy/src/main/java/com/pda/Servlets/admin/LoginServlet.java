package com.pda.Servlets.admin;

import com.pda.Services.AdminService;
import com.pda.entities.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            if(request.getSession().getAttribute("username") != null)
            request.getRequestDispatcher("dashboard.jsp").forward(request,response);
            request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Declaring required Objects / interfaces
        HttpSession session = request.getSession();
        // Getting the data from user form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if( username == null || username.equals("") ){
            request.setAttribute("error","720");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }else if( password == null || password.equals("") ){
            request.setAttribute("error","730");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }

        AdminService adminSer = new AdminService();
        Admin admin = adminSer. getAdminByUsernPass(username , password);
        System.out.println(admin);

        if( admin != null){
            session.setAttribute("username" , admin.getUsername());
            response.sendRedirect("DashboardServlet");

        }else{
            System.out.println(admin);
           request.setAttribute("error","404"); // Admin Not Found
           request.getRequestDispatcher("index.jsp").forward(request, response);

        }
    }
}

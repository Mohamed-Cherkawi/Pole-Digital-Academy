package com.pda.Servlets.admin;

import com.pda.Services.AdminService;
import com.pda.entities.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;

import java.io.IOException;
import java.util.Arrays;


@WebServlet(name = "adminCrudServlet",  urlPatterns = {"/admins","/edit" , "/addAdmin", "/editAdmin", "/deleteAdmin"})
public class adminCrudServlet extends HttpServlet {
    private AdminService adminService = new AdminService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        try{
            switch (action){
                case "/admins":
                    show(request, response);
                    break;
                case  "/edit":
                    edit(request,response);
                    break;
                case "/addAdmin":
                    newAd(request, response);
                    break;
                case "/editAdmin":
                    update(request, response);
                    break;
                case "/deleteAdmin":
                    delete(request, response);
                    break;
            }
        } catch (Exception e) {
           e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request,response);
        }

    private void show(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("admins", adminService.getAllAdmins());
        System.out.println(adminService.getAllAdmins());
        request.getRequestDispatcher("admin.jsp").forward(request,response);
    }
    private void newAd(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException {
        Object[] adminData = new String[5];
        adminData[0] = request.getParameter("name");
        adminData[1] = request.getParameter("email");
        adminData[2] = request.getParameter("username");
        adminData[3] = request.getParameter("password");
        adminData[4] = request.getParameter("isActive");

        System.out.println(Arrays.toString(adminData));

        boolean isActive = ( adminData[4] != null ) ? true : false;
        // Calling the add Admin method in the service class
        adminService.add(new Admin((String) adminData[0],(String) adminData[1]
                ,(String) adminData[2],(String) adminData[3],isActive));
        response.sendRedirect("DashboardServlet");
    }
    private void edit(HttpServletRequest request , HttpServletResponse response){
        String url;
        String[] queryStringArr;
        Admin admin;
        int id;

        url = request.getQueryString(); // Getting the id from the query string id = ?
        queryStringArr = url.split("="); // Spliting the string to extract the id from the second index of the array
        id = Integer.parseInt(queryStringArr[1]);
        admin = adminService.select(id);
        System.out.println(admin);
        request.setAttribute("admin_to_be_updated",admin);
        request.getRequestDispatcher("updateAdmin.jsp");
    }
    private void update(HttpServletRequest request , HttpServletResponse response){
        Object[] adminData = new String[5];
        adminData[0] = request.getParameter("name");
        adminData[1] = request.getParameter("email");
        adminData[2] = request.getParameter("username");
        adminData[3] = request.getParameter("password");
        adminData[4] = request.getParameter("isActive");
        System.out.println(Arrays.toString(adminData));
    }
    private void delete(HttpServletRequest request , HttpServletResponse response) throws IOException {
        int adminId = Integer.parseInt(request.getParameter("id"));
        adminService.delete(adminId);
        response.sendRedirect("DashboardServlet");
    }
}

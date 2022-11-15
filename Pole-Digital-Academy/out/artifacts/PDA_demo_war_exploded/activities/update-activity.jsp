<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/15/2022
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="managers" type="java.util.List<com.pda.entities.Manager>" scope="request"/>
<jsp:useBean id="activity" type="com.pda.entities.Activity" scope="request"/>

<html>
   <head>
       <title>PDA | UPDATE ACTIVITY</title>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   </head>
   <style>
       body{
           background-color:rgb(0,0,0,0.6);
       }

       form{
           border-radius: 10px;
       }
   </style>
   <body>

        <div class="container mt-3">
            <form class="w-50 mx-auto bg-white p-5" action="" method="post">
                <h1 class="text-center mt-2 mb-4 fs-3">UPDATE ACTIVITY</h1>

                <div class="mb-3">
                    <label class="form-label">Title</label>
                    <input type="text" class="form-control" value="<%= activity.getTitle() %>" name="title">
                </div>

                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <input type="text" class="form-control" value="<%= activity.getDescription() %>" name="description">
                </div>

                <div class="mb-3">
                    <label class="form-label">Start Date</label>
                    <input type="date" class="form-control" value="<%= activity.getStartDate() %>" name="start-date">
                </div>

                <div class="mb-3">
                    <label class="form-label">End Date</label>
                    <input type="date" name="end-date" value="<%= activity.getEndDate() %>" class="form-control">
                </div>

                <div class="mb-3">
                    <label class="form-label">Admin Email</label>
                    <input type='text' class="form-control" value='${email}' name="admin-email"/>
                </div>

                <label>Manager</label>
                <select name="manager-id">
                    <option value="<%= activity.getManager().getId()%>" selected ><%= activity.getManager().getName() %></option>

                    <% for (int i=0; i< managers.size();i++){%>

                    <option value= <%= managers.get(i).getId() %>><%= managers.get(i).getName() %> </option>

                    <%}%>
                </select>

                <button type="submit" class="btn btn-primary w-100 mt-4">UPDATE ACTIVITY</button>
            </form>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>

   </body>
</html>

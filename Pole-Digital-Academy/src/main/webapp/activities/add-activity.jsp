<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/14/2022
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="managers" type="java.util.List<com.pda.entities.Manager>" scope="request"/>

<html>
   <head>
      <title>PDA | ADD ACTIVITY</title>
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
            <h1 class="text-center mt-2 mb-4 fs-3">ADD ACTIVITY</h1>

            <div class="mb-3">
               <label class="form-label">Title</label>
               <input type="text" class="form-control" name="title">
            </div>

            <div class="mb-3">
               <label class="form-label">Description</label>
               <input type="text" class="form-control" name="description">
            </div>

            <div class="mb-3">
               <label class="form-label">Start Date</label>
               <input type="date" class="form-control" name="start-date">
            </div>

            <div class="mb-3">
               <label class="form-label">End Date</label>
               <input type="date" name="end-date" class="form-control">
            </div>

            <div class="mb-3">
               <label class="form-label">Admin Email</label>
               <input type='text' class="form-control" value='${email}' name="admin-email"/>
            </div>

            <label>Manager</label>
            <select name="manager-email">
               <option value="none" selected disabled hidden>Select a Manager</option>

               <% for (int i=0; i< managers.size();i++){%>

               <option value= <%= managers.get(i).getEmail() %>><%= managers.get(i).getName() %> </option>

               <%}%>
            </select>

            <button type="submit" class="btn btn-primary w-100 mt-4">ADD ACTIVITY</button>
         </form>

      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>

  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/15/2022
  Time: 2:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="exercises" type="java.util.List<com.pda.entities.Exercise>" scope="request"/>

<html>
   <head>
      <title>PDA | EXERCISES</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   </head>
   <style>
      body{
         background-color: #eee;
      }

      table{
         background-color: rgb(255,255,255,0.5);
      }
   </style>
   <body>

   <div class="container mt-5 px-0">
      <nav class="navbar navbar-expand-lg navbar-light">
         <div class="container-fluid px-0">
            <a class="navbar-brand fs-4" href="#">PDA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
               <ul class="navbar-nav">

                  <li class="nav-item">
                     <a class="nav-link" href="participants">PARTICIPANTS</a>
                  </li>

                  <li class="nav-item">
                     <a class="nav-link" href="activities">ACTIVITIES</a>
                  </li>

                  <li class="nav-item">
                     <a class="nav-link" href="exercises">EXERCISES</a>
                  </li>

               </ul>
            </div>
         </div>
      </nav>
      <hr>
   </div>


   <div class="container mt-5 pt-5">

         <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | EXERCISES</h5>  <a href="add-exercise" class="btn btn-success">ADD EXERCISE</a> </div>

         <table class="table table-bordered">

            <thead>
            <tr> <th>#</th> <th>YEAR</th> <th>START DATE</th> <th>END DATE</th> <th class="text-center">UPDATE</th> <th class="text-center">ACTIVITIES</th> </tr>
            </thead>
            <tbody>

            <% for (int i=0; i<exercises.size();i++){%>
            <tr>
               <td><%= i + 1 %></td>
               <td><%= exercises.get(i).getYear() %></td>
               <td><%= exercises.get(i).getStartDate() %></td>
               <td><%= exercises.get(i).getEndDate() %></td>
               <td class="text-center"><a href="update-exercise?id=<%= exercises.get(i).getId() %>" class="btn btn-secondary btn-sm">UPDATE</a></td>
               <td class="text-center"><a href="exercise-activities?id=<%= exercises.get(i).getId() %>" class="btn btn-primary btn-sm">ACTIVITIES</a></td>
            </tr>
            <%}%>
            </tbody>

         </table>

      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
   </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/15/2022
  Time: 6:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="activity" type="com.pda.entities.Activity" scope="request"/>

<html>
   <head>
      <title>PDA | ACTIVITY PARTICIPANTS</title>
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

       <div class="container mt-5 pt-5">

           <div class="mb-4 d-flex justify-content-between align-items-center"> <h1>ACTIVITY PARTICIPANTS</h1></div>

           <table class="table table-bordered">

               <thead>
               <tr> <th>#</th> <th>NAME</th> <th>EMAIL</th> <th>DOMAIN</th> <th>STRUCTURE</th></tr>
               </thead>
               <tbody>

               <% for (int i=0; i<activity.getExercises().size();i++){%>
               <tr>
                   <td><%= i + 1 %></td>
                   <td><%= activity.getParticipants().get(i).getName() %></td>
                   <td><%= activity.getParticipants().get(i).getEmail() %></td>
                   <td><%= activity.getParticipants().get(i).getDomain()%></td>
                   <td><%= activity.getParticipants().get(i).getStructure()%></td>

               </tr>
               <%}%>

               </tbody>

           </table>

       </div>

       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
   </body>
</html>

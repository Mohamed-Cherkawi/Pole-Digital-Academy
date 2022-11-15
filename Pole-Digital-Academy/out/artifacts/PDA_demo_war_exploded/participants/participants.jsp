<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/15/2022
  Time: 4:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="participants" type="java.util.List<com.pda.entities.Participant>" scope="request"/>

<html>
   <head>
      <title>PDA | PARTICIPANTS</title>
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

           <div class="mb-4 d-flex justify-content-between align-items-center"> <h1>PARTICIPANTS</h1>  <a href="add-participant" class="btn btn-success">ADD PARTICIPANT</a> </div>

           <table class="table table-bordered">

               <thead>
                  <tr> <th>#</th> <th>NAME</th> <th>EMAIL</th> <th>DOMAIN</th> <th class="text-center">UPDATE</th> <th class="text-center">ACTIVITIES</th> </tr>
               </thead>
               <tbody>

               <% for (int i=0; i<participants.size();i++){%>
               <tr>
                   <td><%= i + 1%></td>
                   <td><%= participants.get(i).getName() %></td>
                   <td><%= participants.get(i).getEmail() %></td>
                   <td><%= participants.get(i).getDomain() %></td>
                   <td class="text-center"><a href="update-participant?id=<%= participants.get(i).getId() %>" class="btn btn-secondary btn-sm">UPDATE</a></td>
                   <td class="text-center"><a href="participant-activities?id=<%= participants.get(i).getId() %>" class="btn btn-primary btn-sm">ACTIVITIES</a></td>
               </tr>
               <%}%>
               </tbody>

           </table>

       </div>

       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>
   </body>
</html>

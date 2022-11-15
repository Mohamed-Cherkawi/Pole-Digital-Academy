<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 11/15/2022
  Time: 3:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="activities" type="java.util.List<com.pda.entities.Activity>" scope="request"/>

<html>
   <head>
       <title>PDA | ADD EXERCISE</title>
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
      <div class="container mt-5">

          <form action="" class="w-50 mx-auto bg-white p-5" method="post">
              <h1 class="text-center mt-2 mb-4 fs-3">ADD EXERCISE</h1>

              <div class="mb-3">
                  <label class="form-label">Year</label>
                  <input type="text" name="year" class="form-control" >
              </div>

              <div class="mb-3">
                  <label class="form-label">Start Date</label>
                  <input type="date" class="form-control"  name="start-date">
              </div>

              <div class="mb-3">
                  <label class="form-label">End Date</label>
                  <input type="date" class="form-control"  name="end-date">
              </div>

              <div class="mb-3">
                  <label>Activity</label>
                  <select name="activity_id"  class="form-select" >
                      <option value="none" selected disabled hidden>Select an activity</option>

                      <% for (int i=0; i< activities.size();i++){%>

                          <option value= <%= activities.get(i).getId() %>><%= activities.get(i).getTitle() %> </option>

                      <%}%>

                  </select>
              </div>

              <button type="submit" class="btn btn-primary w-100">SUBMIT</button>
          </form>

      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" ></script>

   </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="participant" type="com.pda.entities.Participant" scope="request"/>
<jsp:useBean id="activities" type="java.util.List<com.pda.entities.Activity>" scope="request"/>

<%
  if(session.getAttribute("username") == null){
    response.sendRedirect("LoginServlet");
  }
%>
<!DOCTYPE html>
<html lang="en">


<!-- patients23:17-->
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
  <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" >
  <style>
    body{
      background-color:rgb(0,0,0,0.6);
    }
    form{
      border-radius: 10px;
    }
  </style>
</head>

<body>
  <div class="container mt-5">

    <form class="w-50 mx-auto bg-white p-5" method="post">
      <h1 class="text-center mt-2 mb-4 fs-3">UPDATE PARTICIPANT</h1>

      <div class="mb-3">
        <label class="form-label">Name</label>
        <input type="text" class="form-control" name="name" value='<%= participant.getName() %>'>
      </div>

      <div class="mb-3">
        <label class="form-label">Email</label>
        <input type="text" name="email" class="form-control" value='<%= participant.getEmail() %>'>

      </div>

      <div class="mb-3">
        <label class="form-label">Domain</label>
        <input type="text" name="domain" class="form-control" value='<%= participant.getDomain() %>'>
      </div>

      <div class="mb-3">
        <label class="form-label">Structure</label>
        <input type="text" name="structure" class="form-control" value='<%= participant.getStructure() %>'>
      </div>

      <div class="mb-3">
        <label>Activity</label>
        <select name="activity_id"  class="form-select" >
          <option value= '<%= activities.get(0).getId() %>' selected><%= activities.get(0).getTitle() %></option>

          <% for (int i=0; i< activities.size();i++){%>

          <option value= <%= activities.get(i).getId() %>><%= activities.get(i).getTitle() %> </option>

          <%}%>
        </select>
      </div>
      <button type="submit" class="btn btn-primary w-100">Submit</button>
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"> </script>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="activities" type="java.util.List<com.pda.entities.Activity>" scope="request"/>

<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>


  <div class="container mt-5 pt-5">

    <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | ACTIVITIES</h5> <a href="add-activity" class="btn btn-success">ADD ACTIVITY</a> </div>

    <table class="table table-bordered">

      <thead>
      <tr> <th>#</th> <th>MANAGER</th> <th>TITLE</th> <th>DESCRIPTION</th> <th class="text-center">UPDATE</th> <th class="text-center">MANAGER</th><th class="text-center">PARTICIPANTS</th> <th class="text-center">EXERCISES</th></tr>
      </thead>
      <tbody>

      <% for (int i=0; i<activities.size();i++){%>
      <tr>
        <td><%= i + 1 %></td>
        <td><%= activities.get(i).getManager().getName() %></td>
        <td><%= activities.get(i).getTitle() %></td>
        <td><%= activities.get(i).getDescription() %></td>
        <td class="text-center"><a href="update-activity?id=<%= activities.get(i).getId() %>" class="btn btn-secondary btn-sm">UPDATE</a></td>
        <td class="text-center"><a href="activity-manager?id=<%= activities.get(i).getId() %>" class="btn btn-primary btn-sm">MANAGER</a></td>
        <td class="text-center"><a href="activity-participants?id=<%= activities.get(i).getId() %>" class="btn btn-info btn-sm">PARTICIPANTS</a></td>
        <td class="text-center"><a href="activity-exercises?id=<%= activities.get(i).getId() %>" class="btn btn-warning btn-sm">EXERCISES</a></td>
      </tr>
      <%}%>

      </tbody>

    </table>

  </div>
  <%@ include file="../templates/base_footer.jsp"%>
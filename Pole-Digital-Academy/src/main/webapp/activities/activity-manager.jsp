<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="activity" type="com.pda.entities.Activity" scope="request"/>

<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>

  <div class="container mt-5 pt-5">

    <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | ACTIVITY MANAGER</h5> </div>

    <table class="table table-bordered">

      <thead>
      <tr><th>NAME</th> <th>EMAIL</th> <th>DOMAIN</th> <th>TYPE</th></tr>
      </thead>
      <tbody>
      <tr>
        <td><%= activity.getManager().getName() %></td>
        <td><%= activity.getManager().getEmail() %></td>
        <td><%= activity.getManager().getDomain() %></td>
        <td><%= activity.getManager().getType() %></td>
      </tr>
      </tbody>

    </table>

  </div>

<%@ include file="../templates/base_footer.jsp"%>
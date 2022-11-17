<jsp:useBean id="exercise" type="com.pda.entities.Exercise" scope="request"/>

<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>

    <div class="container mt-5 pt-5">

        <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | EXERCISE ACTIVITIES</h5></div>

        <table class="table table-bordered">

            <thead>
            <tr> <th>#</th> <th>MANAGER</th> <th>TITLE</th> <th>DESCRIPTION</th> <th>START DATE</th> <th>END DATE</th></tr>
            </thead>
            <tbody>

            <% for (int i=0; i<exercise.getActivities().size();i++){%>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= exercise.getActivities().get(i).getManager().getName() %></td>
                <td><%= exercise.getActivities().get(i).getTitle() %></td>
                <td><%= exercise.getActivities().get(i).getDescription() %></td>
                <td><%= exercise.getActivities().get(i).getStartDate() %></td>
                <td><%= exercise.getActivities().get(i).getEndDate() %></td>
            </tr>
            <%}%>

            </tbody>

        </table>

    </div>

<%@ include file="../templates/base_footer.jsp"%>
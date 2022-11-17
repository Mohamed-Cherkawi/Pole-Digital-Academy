<jsp:useBean id="participant" type="com.pda.entities.Participant" scope="request"/>
<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>

    <div class="container mt-5 pt-5">

        <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | PARTICIPANT ACTIVITIES</h5></div>

        <table class="table table-bordered">

            <thead>
            <tr> <th>#</th> <th>MANAGER</th> <th>TITLE</th> <th>DESCRIPTION</th> </tr>
            </thead>
            <tbody>

            <% for (int i=0; i<participant.getActivities().size();i++){%>
            <tr>
                <td><%= i + 1 %></td>
                <td><%= participant.getActivities().get(i).getManager().getName() %></td>
                <td><%= participant.getActivities().get(i).getTitle() %></td>
                <td><%= participant.getActivities().get(i).getDescription() %></td>
            </tr>
            <%}%>

            </tbody>

        </table>

    </div>

<%@ include file="../templates/base_footer.jsp"%>
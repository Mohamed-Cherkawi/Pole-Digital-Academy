<jsp:useBean id="participants" type="java.util.List<com.pda.entities.Participant>" scope="request"/>
<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>

    <div class="container mt-5 pt-5">

        <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | PARTICIPANTS</h5>  <a href="add-participant" class="btn btn-success">ADD PARTICIPANT</a> </div>

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
<%@ include file="../templates/base_footer.jsp"%>
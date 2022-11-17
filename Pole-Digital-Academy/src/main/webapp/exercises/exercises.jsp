<jsp:useBean id="exercises" type="java.util.List<com.pda.entities.Exercise>" scope="request"/>
<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>

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

<%@ include file="../templates/base_footer.jsp"%>
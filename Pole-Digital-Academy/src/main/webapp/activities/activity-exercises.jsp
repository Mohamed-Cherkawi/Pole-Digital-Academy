<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="activity" type="com.pda.entities.Activity" scope="request"/>

<%@ include file="../templates/base_head.jsp"%>
<%@ include file="../templates/nav-side.jsp"%>


    <div class="container mt-5 pt-5">

        <div class="mb-4 d-flex justify-content-between align-items-center"> <h5>PDA | EXERCISE ACTIVITIES</h5></div>

        <table class="table table-bordered">

            <thead>
            <tr> <th>#</th> <th>YEAR</th> <th>START DATE</th> <th>END DATE</th> </tr>
            </thead>
            <tbody>

            <% for (int i=0; i<activity.getExercises().size();i++){%>
            <tr>
                <td><%= i + 1 %></td>
                <td><%=activity.getExercises().get(i).getYear() %></td>
                <td><%= activity.getExercises().get(i).getStartDate() %></td>
                <td><%= activity.getExercises().get(i).getEndDate()%></td>
            </tr>
            <%}%>

            </tbody>

        </table>

    </div>
<%@ include file="../templates/base_footer.jsp"%>
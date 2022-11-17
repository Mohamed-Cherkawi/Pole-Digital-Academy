<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="managers" type="java.util.List<com.pda.entities.Manager>" scope="request"/>
<jsp:useBean id="activity" type="com.pda.entities.Activity" scope="request"/>

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

    <div class="container mt-3">
        <form class="w-50 mx-auto bg-white p-5" action="" method="post">
            <h1 class="text-center mt-2 mb-4 fs-3">UPDATE ACTIVITY</h1>

            <div class="mb-3">
                <label class="form-label">Title</label>
                <input type="text" class="form-control" value="<%= activity.getTitle() %>" name="title">
            </div>

            <div class="mb-3">
                <label class="form-label">Description</label>
                <input type="text" class="form-control" value="<%= activity.getDescription() %>" name="description">
            </div>

            <div class="mb-3">
                <label class="form-label">Start Date</label>
                <input type="date" class="form-control" value="<%= activity.getStartDate() %>" name="start-date">
            </div>

            <div class="mb-3">
                <label class="form-label">End Date</label>
                <input type="date" name="end-date" value="<%= activity.getEndDate() %>" class="form-control">
            </div>

            <div class="mb-3">
                <label class="form-label">Admin Email</label>
                <input type='text' class="form-control" value='${email}' name="admin-email"/>
            </div>

            <label>Manager</label>
            <select name="manager-id">
                <option value="<%= activity.getManager().getId()%>" selected ><%= activity.getManager().getName() %></option>

                <% for (int i=0; i< managers.size();i++){%>

                <option value= <%= managers.get(i).getId() %>><%= managers.get(i).getName() %> </option>

                <%}%>
            </select>

            <button type="submit" class="btn btn-primary w-100 mt-4">UPDATE ACTIVITY</button>
        </form>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"> </script>
</body>
</html>
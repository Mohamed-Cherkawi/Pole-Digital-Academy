<%@ page import="com.pda.entities.Admin" %>
<jsp:useBean id="admins" type="java.util.ArrayList<com.pda.entities.Admin>" scope="request"/>
<%@ include file="templates/base_head.jsp"%>
<%@ include file="templates/nav-side.jsp"%>

    <div class="page-wrapper">
        <div class="content">
            <div class="row">
                <div class="col-sm-4 col-3">
                    <h4 class="page-title">Admins</h4>
                </div>
                <div class="col-sm-8 col-9 text-right m-b-20">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Add Admin
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add Admin</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form action="addAdmin" method="post">
                                <div class="modal-body text-left">
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Full Name</label>
                                        <input type="text" name="name" class="form-control" id="name" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                            <label for="email" class="form-label">Email address</label>
                                            <input type="email" name="email" class="form-control" id="email" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="username" class="form-label">Username</label>
                                        <input type="text" name="username" class="form-control" id="username" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="pass" class="form-label">Password</label>
                                        <input type="password" name="password" class="form-control" id="pass" aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <input type="checkbox" id="check" name="isActive" checked >
                                        <label for="check"> currently active ? </label>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Add Admin</button>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-border table-striped custom-table datatable mb-0">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Username</th>
                                <th>State</th>
                                <th class="text-right">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <% for (Admin admin : admins) {%>
                            <tr>
                                <td><%= admin.getName() %></td>
                                <td><%= admin.getEmail() %></td>
                                <td><%= admin.getUsername() %></td>
                                <td><% if (admin.isActive() ){ %>
                                    Active
                                    <% } else { %>
                                    Inactive
                                    <% } %>
                                </td>
                                <td class="text-right">

                                    <div class="dropdown">
                                        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            Action
                                        </button>
                                        <ul class="dropdown-menu dropdown-menu-dark">

                                            <li><a class="dropdown-item active" href="edit?id=<%= admin.getId() %>">Edit</a></li>
                                            <li>
                                                <form action="deleteAdmin" method="post">
                                                    <input type="hidden" name="id" value="<%= admin.getId() %>">
                                                    <button type="submit" onclick="return confirm('admin will be deleted permanently')"  class="dropdown-item">Delete</button>
                                                </form>
                                            </li>
                                        </ul>
                                    </div>
                                </td>

                            </tr>
                            <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="admin__form">

            </div>
        </div>
    </div>

<%@ include file="templates/base_footer.jsp"%>
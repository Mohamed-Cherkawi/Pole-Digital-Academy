<jsp:useBean id="admin_to_be_updated" type="com.pda.entities.Admin" scope="request"/>
<%@ include file="templates/base_head.jsp"%>
<%@ include file="templates/nav-side.jsp"%>

    <div class="page-wrapper">
        <div class="content">
            <form action="editAdmin" method="post">
                <div class="mb-3">
                    <label for="name" class="form-label">Full Name</label>
                    <input type="text" placeholder="<%= admin_to_be_updated.getName() %>" name="name" class="form-control" id="name" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" placeholder="<%= admin_to_be_updated.getEmail() %>" name="email" class="form-control" id="email" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" placeholder="<%= admin_to_be_updated.getUsername() %>" name="username" class="form-control" id="username" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="pass" class="form-label">Password</label>
                    <input type="password" placeholder="<%= admin_to_be_updated.getPassword() %>" name="password" class="form-control" id="pass" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <input type="checkbox" id="check" name="isActive" checked >
                    <label for="check"> currently active ? </label>
                </div>
                <button type="submit" class="btn btn-primary">Add Admin</button>
            </form>
        </div>
    </div>
</div>

<%@ include file="templates/base_footer.jsp"%>
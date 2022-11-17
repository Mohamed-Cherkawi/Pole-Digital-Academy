<%--
  Created by IntelliJ IDEA.
  User: email
  Date: 11/17/2022
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main-wrapper">
    <div class="header">
        <div class="header-left">
            <a href="index-2.html" class="logo" style="color: grey; text-decoration: none !important;">
                <i class="uil uil-channel"></i>
                <span>PDA</span>
            </a>
        </div>
        <a id="toggle_btn" href="javascript:void(0);"><i class="uil uil-bars"></i></a>
        <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
        <ul class="nav user-menu float-right">
            <li class="nav-item dropdown has-arrow">
                <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                    <span class="user-img" style="margin-right: 8px"><i class="uil uil-user"></i></span>
                    <span>Admin</span>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="profile.html">My Profile</a>
                    <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                    <a class="dropdown-item" href="settings.html">Settings</a>
                    <a class="dropdown-item" href="LogoutServlet">Logout</a>
                </div>
            </li>
        </ul>
        <div class="dropdown mobile-user-menu float-right">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
            <div class="dropdown-menu dropdown-menu-right">
                <a class="dropdown-item" href="profile.html">My Profile</a>
                <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                <a class="dropdown-item" href="settings.html">Settings</a>
                <a class="dropdown-item" href="LogoutServlet">Logout</a>
            </div>
        </div>
    </div>
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="menu-title">Main</li>
                    <li>
                        <a href="DashboardServlet" style="text-decoration: none !important;"><i class="uil uil-estate"></i> <span>Home</span></a>
                    </li>
                    <li>
                        <a href="admins" style="text-decoration: none !important;"><i class="uil uil-wrench"></i> <span>Admin</span></a>
                    </li>
                    <li>
                        <a href="activities" style="text-decoration: none !important;"><i class="uil uil-play"></i> <span>Activity</span></a>
                    </li>
                    <li>
                        <a href="exercises" style="text-decoration: none !important;"><i class="uil uil-brain"></i><span>Exercice</span></a>
                    </li>
                    <li>
                        <a href="participants" style="text-decoration: none !important;"><i class="uil uil-rocket"></i> <span>Participant</span></a>
                    </li>
                    <li>
                        <a href="departments.html" style="text-decoration: none !important;"><i class="uil uil-bright"></i> <span>Manager</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
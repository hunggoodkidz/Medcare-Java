<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<div class="preloader">
  <svg class="circular" viewBox="25 25 50 50">
    <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
</div>

<div id="main-wrapper">

  <div class="header">
    <nav class="navbar top-navbar navbar-expand-md navbar-light">

      <div class="navbar-header">
        <a class="navbar-brand" href="index.jsp">

          <span>Medcare Admin</span>
        </a>
      </div>

      <div class="navbar-collapse">
        <ul class="navbar-nav mr-auto mt-md-0">
        </ul>


        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/bookingSystem/user-icn.png" alt="user" class="profile-pic" /></a>
          <div class="dropdown-menu dropdown-menu-right animated zoomIn">
            <ul class="dropdown-user">
              <li><a href="../adminLogout"><i class="fa fa-power-off"></i> Logout</a></li>
            </ul>
          </div>
        </li>
        </ul>
      </div>
    </nav>
  </div>
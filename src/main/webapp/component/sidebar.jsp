<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<div class="left-sidebar">

  <div class="scroll-sidebar">

    <nav class="sidebar-nav">
      <ul id="sidebarnav">
        <li class="nav-devider"></li>
        <li class="nav-label">Home</li>
        <li> <a href="index.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a>
        </li>
        <li class="nav-label">Hệ thống quản lý CRUD</li>
        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-user f-s-20 color-warning"></i><span class="hide-menu">Doctor</span></a>
          <ul aria-expanded="false" class="collapse">
            <li><a href="doctor_list.jsp">Doctor List</a></li>
            <li><a href="add_doctor.jsp">Add Doctor</a></li>

          </ul>
        </li>
        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-archive f-s-20 color-warning"></i><span class="hide-menu">Patient</span></a>
          <ul aria-expanded="false" class="collapse">
            <li><a href="patient_list.jsp">Patient List</a></li>

          </ul>
        </li>
        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-cutlery" aria-hidden="true"></i><span class="hide-menu">Specialist</span></a>
          <ul aria-expanded="false" class="collapse">
            <li><a href="specialist_list.jsp">Add Specialist</a></li>

          </ul>
        </li>


      </ul>
    </nav>

  </div>

</div>
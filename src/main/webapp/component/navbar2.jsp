<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<header class="header">

    <a href="index.jsp" class="logo"> <i class="fas fa-heartbeat"></i> Medcare </a>
	<c:if test="${empty userObj }">
    <nav class="navbar">
    	<a href="index.jsp">Home</a>
        <a href="doctor_login.jsp">Doctor</a>
        <a href="user_appointment.jsp">Appointment</a>
        <a href="user_login.jsp">Sign In</a>
    </nav>
	</c:if>
	
	<c:if test="${not empty userObj }">
	    <nav class="navbar">
	    <a href="index.jsp">Home</a>
		<a href="user_appointment.jsp">Appointment</a>
		<a href="view_appointment.jsp">View Appointment</a>

	    <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
	      <i class="fa-solid fa-circle-user"></i> ${userObj.fullName}
	    </a>
		<ul class="dropdown-menu position-absolute dropdown-menu-end">
	      <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
	      <li><a class="dropdown-item" href="userLogout">Logout</a></li>
	    </ul>
    </nav>
	</c:if>

    <div id="menu-btn" class="fas fa-bars"></div>

</header>

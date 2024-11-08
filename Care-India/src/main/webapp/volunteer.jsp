<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.FounderDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Founder"%>
<%@page import="com.entity.Volunteer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Volunteers | Care India</title>
<%@include file="all_components/allCss.jsp"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	font-family: 'Cambria', serif;
	background-color: #f2f2f2;
	margin: 20px;
}

#top-heading {
	font-family: 'Cambria', san-serif;
	text-align: center;
	margin-top: 20px;
	color: blue;
	font-size: 50px;
}

.table-container {
	max-width: 800px; /* Set max width for the table */
	margin: auto; /* Center the table */
	padding: 20px; /* Optional padding */
}

table {
	font-family: 'Verdana';
	width: 100%;
	margin: 20px 0;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	border: 1px solid green;
}

thead {
	background-color: #343a40;
	color: white;
}

th, td {
	padding: 12px;
	text-align: left;
	text-align: center;
}

th {
	font-weight: bold;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

.delete-btn {
	color: white;
	background-color: #dc3545;
	border: none;
	padding: 5px 10px;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
}

.delete-btn:hover {
	text-decoration: none;
	color: black;
	background-color: transparent;
	border: 2px solid red;
	border-radius: 4px;
	background-color: transparent;
}

.alert {
	margin: 20px;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<%
	Founder f = (Founder) session.getAttribute("userobj");
	%>

	<c:if test="${not empty succMsg }">
		<div class="alert alert-success text-center" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger text-center" role="alert">${failedMsg }</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<h2 id="top-heading">Volunteer List</h2>
	<div class="table-container">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Contact</th>
					<th>Address</th>
					<%
					if (f != null && "Care India".equals(f.getName())) {
					%>
					<th>Action</th>
					<%
					}
					%>

				</tr>
			</thead>
			<tbody>
				<%
				FounderDAOImpl dao = new FounderDAOImpl(DBConnect.getConn());
				List<Volunteer> list = dao.getAllVolunteers();

				for (Volunteer volunteer : list) {
				%>
				<tr>
					<td><%=volunteer.getName()%></td>
					<td><%=volunteer.getEmail()%></td>
					<td><%=volunteer.getContact()%></td>
					<td><%=volunteer.getAddress()%></td>

					<!-- Check if the logged-in user is the founder -->

					<%
					if (f != null && "Care India".equals(f.getName())) {
					%><td><a
						href="deleteVolunteer?name=<%=volunteer.getName()%>&email=<%=volunteer.getEmail()%>"
						class="delete-btn">Remove</a></td>
					<%
					} else {
					%>
					<%
					}
					%>

				</tr>
				<%
				}
				%>
			</tbody>

		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

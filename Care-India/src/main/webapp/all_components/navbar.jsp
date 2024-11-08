<%@page import="com.entity.Founder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'nonce-abc123' https://cdn.jsdelivr.net https://code.jquery.com https://stackpath.bootstrapcdn.com; object-src 'none';">

<title>Navbar</title>
<%@include file="allCss.jsp"%>
<style>
/* Add this CSS in your allCss.jsp file or within a <style> tag in your JSP file */
.navbar {
	font-family: 'Arial', sans-serif;
	font-size: 1.1em; /* Slightly increase font size */
	background-color: #f8f9fa; /* Light background */
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add subtle shadow */
}

.navbar .nav-link {
	color: grey; /* Default color for links */
	margin-right: 45px; /* Spacing between links */
	padding: 8px 12px; /* Increase padding */
	font-weight: bold;
	border-radius: 10px;
	margin-left: 25px;
	transition: color 0.3s ease, background-color 0.3s ease;
	/* Smooth transition */
}

.navbar .nav-link:hover {
	color: white !important; /* Hover color for links */
	background-color: grey !important; /* Hover background */
	border-radius: 10px;
}

.navbar-brand img {
	width: 150px; /* Set fixed width */
	height: auto;
	margin-right: 100px !important; /* Space between logo and nav items */
}

.navbar-toggler {
	border: none;
}

.btn-outline-success {
	color: #28a745; /* Green color */
	border-color: #28a745;
}

.btn-outline-success:hover {
	color: #fff;
	background-color: #28a745; /* Green background on hover */
}

/* Responsive adjustments */
@media ( max-width : 767px) {
	.navbar-brand img {
		width: 120px;
	}
	.navbar .nav-link {
		font-size: 1em;
	}
}
</style>
</head>
<body>

	<%
	Founder founder = (Founder) session.getAttribute("userobj");
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<div class="navbar-brand">
				<img src="images/logo.jpeg" width="50%" height="20%">
			</div>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="about.jsp">About</a></li>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="join_us.jsp">Join Us</a></li>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="contact.jsp">Contact Us</a></li>
					<%
					if (founder == null) {
					%>
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="join_us.jsp">Donate Now</a></li>
					<%
					}
					%>
				</ul>
				<form class="d-flex">
					<%
					if (founder != null) {
					%>
					<!-- Display Logout button and home button if logged in -->
					<a class="btn btn-outline-danger mr-3" href="home.jsp">Home</a> <a
						class="btn btn-outline-danger" href="logout">Logout</a>
					<%
					} else {
					%>
					<!-- Display Founder login button if not logged in -->
					<a class="btn btn-outline-success" href="founder_login.jsp">Founder</a>
					<%
					}
					%>
				</form>
			</div>
		</div>
	</nav>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'nonce-abc123' https://cdn.jsdelivr.net https://code.jquery.com https://stackpath.bootstrapcdn.com; object-src 'none';">

<title>Login</title>
<%@include file="all_components/allCss.jsp"%>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-image: url('images/background.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	height: 100vh; /* Full viewport height */
	margin: 0;
	padding: 0;
}

.login-container {
	background-color: transparent;
	padding: 0px;
	max-width: 300px;
	width: 100%;
	margin: auto;
	font-weight: bold;
	font-family: 'Verdana', sans-serif; /* Clean modern font */
	color: #333; /* Dark color for text */
	margin-top: 30px;
}

.heading {
	margin-bottom: 30px;
	text-align: center;
	font-weight: bold;
	color: grey;
}

.form-control {
	margin-bottom: 20px;
}

.btn-primary {
	width: 100%;
}

.form-text {
	text-align: center;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>
	<div class="login-container">
		<h2 class="heading">Login</h2>

		<form action="login" method="post">
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" id="email" name="email" required>
			</div>

			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" id="password" name="password"
					required>
			</div>

			<button type="submit" class="btn btn-primary">Login</button>

			<!-- Display an optional error message if login fails -->
			<div class="form-text text-danger">
				<c:if test="${not empty failedMsg}">
					<h5 class="text-center text-danger"
						style="font-family: 'Verdana', san-serif;">${failedMsg}</h5>
					<c:remove var="failedMsg" scope="session" />
				</c:if>
			</div>

			<!-- Display a success message if logout successfully -->
			<c:if test="${not empty succMsg}">
				<h5 class="text-center text-success">${succMsg}</h5>
				<c:remove var="succMsg" scope="session" />
			</c:if>
		</form>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

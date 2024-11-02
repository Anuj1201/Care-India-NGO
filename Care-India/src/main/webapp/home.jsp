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

<title>Founder | Home</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="founder_login.jsp" />
	</c:if>


	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="volunteer">
					<div class="card">
						<div class="card-body">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4>Volunteers</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="donors.jsp">
					<div class="card">
						<div class="card-body">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4>Donors</h4>

						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="">
					<div class="card">
						<div class="card-body">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4>Add Mission</h4>

						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="">
					<div class="card">
						<div class="card-body">
							<i class="fas fa-box-open fa-3x text-warning"></i><br>
							<h4>Delete Mission</h4>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<!--Logout Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h5 class="modal-title text-center" id="exampleModalLongTitle">Do
						you want to logout?</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center mt-3">
						<button type="button" class="btn btn-secondary mr-2"
							data-dismiss="modal">Close</button>
						<a href="logout" type="button" class="btn btn-primary text-white">Logout</a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- end logout modal -->
	<div style="margin-top: 130px;">
		<%@ include file="all_components/footer.jsp"%>
	</div>
</body>
</html>
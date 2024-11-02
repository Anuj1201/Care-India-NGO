<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Donors</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<script>
        function showAlert(message) {
            if (message === 'success') {
                alert("Payment successful! Thank you for your contribution.");
            } else if (message === 'failure') {
                alert("Failed to save your donation. Please try again.");
            } else if (message === 'error') {
                alert("An error occurred. Please check your details.");
            }
        }

        window.onload = function() {
            const message = "<%=request.getAttribute("message")%>
	";
		showAlert(message);
	}
</script>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<%
	Founder f = (Founder) session.getAttribute("userobj");
	%>
	<h1 class="text-center mt-4">Our Contributors</h1>

	<div class="container mt-4">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<%
					if (f != null && "Care India".equals(f.getName())) {
					%>
					<th>Amount</th>
					<th>Order ID</th>
					<th>Payment ID</th>
					<%
					}
					%>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donor" items="${donorList}">
					<tr>
						<td>${donor.name}</td>
						<td>${donor.email}</td>
						<%
						if (f != null && "Care India".equals(f.getName())) {
						%>
						<td>${donor.amount}</td>
						<td>${donor.orderId}</td>
						<td>${donor.paymentId}</td>
						<%
						}
						%>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>

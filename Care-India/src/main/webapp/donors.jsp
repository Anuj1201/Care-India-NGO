<!DOCTYPE html>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Donors"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.DonorDAOImpl"%>
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

<style>
.container-table {
	max-width: 80%;
	margin: auto;
	font-family: Cambria;
	font-size: 1rem;
}

#table {
	background-color: #f8f9fa;
	border-radius: 8px;
	margin: 20px auto;
}

#table th {
	background-color: #343a40;
	color: white;
	font-weight: 600;
	text-align: center;
	padding: 12px;
}

#table td {
	text-align: center;
	padding: 10px;
}

.header-text {
	font-size: 2rem;
	color: #333;
	font-weight: 700;
	text-align: center;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<%
	Founder f = (Founder) session.getAttribute("userobj");
	%>

	<div class="container-table">
		<h1 class="header-text">Our Contributors</h1>
		<table id="table"
			class="table table-hover table-bordered table-striped">
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
				<%
				DonorDAOImpl dao = new DonorDAOImpl(DBConnect.getConn());
				List<Donors> list = dao.getAllDonors();

				for (Donors donor : list) {
				%>
				<tr>
					<td><%=donor.getName()%></td>
					<td><%=donor.getEmail()%></td>
					<%
					if (f != null && "Care India".equals(f.getName())) {
					%>
					<td><%=donor.getAmount()%></td>
					<td><%=donor.getOrderId()%></td>
					<td><%=donor.getPaymentId()%></td>
					<%
					}
					%>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%
		if (f == null) {
		%>
		<div class="text-center mb-5">
			<a href="join_us.jsp" class="btn btn-primary" style="font-family: Cambria; font-size: 1.2rem; border-radius: 10px;"><i
				class="fa-solid fa-face-smile-wink mr-2" style="color: #FFD43B;"></i>Spread
				Love</a>
		</div>
		<%
		}
		%>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>

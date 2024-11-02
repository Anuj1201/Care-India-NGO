<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Page</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<style>
body {
	background-image: url('images/background.jpg');
	font-family: Arial, sans-serif;
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
}

body::before {
	content: "";
	position: fixed;
	background-image: url('images/background.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	filter: blur(50px);
	z-index: -1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.card-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	padding: 20px;
}

.card {
	width: 100%;
	max-width: 400px;
	position: relative;
	border-radius: 8px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
	overflow: hidden;
	text-align: center;
	color: #333;
	background-color: rgba(255, 255, 255, 0.9);
	transition: transform 0.3s ease;
}

.card:hover {
	transform: scale(1.03);
}

.card-body {
	position: relative;
	z-index: 2;
	padding: 20px;
}

.card-title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 10px;
	font-family: Cambria, sans-serif;
}

#rzp-button1 {
	background-color: grey;
	color: white;
	border: none;
	padding: 12px 24px;
	border-radius: 15px;
	font-size: 20px;
	cursor: pointer;
	transition: transform 0.3s ease;
}

#rzp-button1:hover {
	transform: scale(1.03);
	background-color: #59d9de;
	color: white;
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<div class="card-container">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Create a Difference</h5>
				<button id="rzp-button1">Donate</button>
			</div>
		</div>
	</div>

	<!-- Hidden form to submit donation details to DonorServlet -->
	<form id="donorForm" action="saveDonor" method="post"
		style="display: none;">
		<input type="hidden" name="name" id="donorName"> <input
			type="hidden" name="email" id="donorEmail"> <input
			type="hidden" name="amount" id="donorAmount"> <input
			type="hidden" name="orderId" id="donorOrderId"> <input
			type="hidden" name="paymentId" id="donorPaymentId">
	</form>

	<script>
        var options = {
            "key": "rzp_test_EJIbfJyXtr3D6O", // Enter the Key ID generated from Razorpay Dashboard
            "amount": "<%=(int) (Double.parseDouble(session.getAttribute("amount").toString()))%>",
            "currency": "INR",
            "name": "Care-India",
            "description": "Test Transaction",
            "order_id": "<%=request.getAttribute("orderId")%>",
            "handler": function(response) {
                // Populate hidden form with payment data
                document.getElementById('donorName').value = "<%=request.getAttribute("name")%>";
                document.getElementById('donorEmail').value = "<%=request.getAttribute("email")%>";
                document.getElementById('donorAmount').value = "<%=request.getAttribute("amount")%>";
                document.getElementById('donorOrderId').value = "<%=request.getAttribute("orderId")%>";
				document.getElementById('donorPaymentId').value = response.razorpay_payment_id;

				// Submit form to DonorServlet
				document.getElementById('donorForm').submit();
			},
			"theme" : {
				"color" : "#F37254"
			}
		};
		var rzp1 = new Razorpay(options);
		document.getElementById('rzp-button1').onclick = function(e) {
			rzp1.open();
			e.preventDefault();
		}
	</script>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>

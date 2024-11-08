<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'nonce-abc123' https://cdn.jsdelivr.net https://code.jquery.com https://stackpath.bootstrapcdn.com; object-src 'none';">
<title>Contact Us | Care India</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>
<style>
/* Additional CSS for Contact Us page */
body .modal-body{
	font-family: Cambria, sans-serif;
}

.contact-info {
	text-align: center;
	margin-bottom: 40px;
	font-family: Cambria, sans-serif;
}

.contact-info p {
	font-size: 1.2em;
	color: #555;
}
/* Button Styles */
#sendMessageButton {
	background-color: #007bff; /* Bootstrap primary color */
	color: white; /* Text color */
	border: 2px solid grey;
	border-radius: 5px; /* Rounded corners */
	padding: 10px 20px; /* Padding */
	font-size: 16px; /* Font size */
	cursor: pointer; /* Pointer cursor on hover */
	transition: background-color 0.3s, transform 0.2s;
	/* Smooth transitions */
	font-family: Cambria, sans-serif;
}

#sendMessageButton:hover {
	background-color: #0056b3; /* Darker shade on hover */
	transform: scale(1.05); /* Slightly enlarge button */
}

#sendMessageButton:active {
	transform: scale(0.95); /* Slightly shrink on click */
}
</style>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<div class="contact-info mt-5">
		<h2>Contact Information</h2>
		<p>
			<strong>Email:</strong> info@careIndia.org
		</p>
		<p>
			<strong>Phone:</strong> +91-7453527819
		</p>
		<p>
			<strong>Address:</strong> Care India Organization, 512, Shivaji
			Street, Mumbai, Maharashtra, 482005, India
		</p>
	</div>
	<div class="text-center mb-4">
		<!-- Button to trigger modal -->
		<button type="button" id="sendMessageButton"
			class="btn" data-toggle="modal"
			data-target="#sendMessageModal">Send Message</button>
	</div>

	<!-- Modal for sending message -->
	<div class="modal fade" id="sendMessageModal" tabindex="-1"
		role="dialog" aria-labelledby="sendMessageModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title text-center" id="sendMessageModalLabel">Send
						Message</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="SendMessage" method="POST">
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="name">Name:</label> <input type="text" name="name"
									class="form-control" id="name" placeholder="Enter Name"
									required>
							</div>
							<div class="form-group col-md-12">
								<label for="email">Email:</label> <input type="email"
									name="email" class="form-control" id="email"
									placeholder="Enter Email" required>
							</div>
							<div class="form-group col-md-12">
								<label for="message">Message:</label> <input type="text" name="message"
									class="form-control" id="message" placeholder="Message" required>
							</div>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary btn-sm">Send
								Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>

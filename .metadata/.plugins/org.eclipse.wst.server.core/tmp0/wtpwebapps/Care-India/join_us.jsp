<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Join Us | Care India</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>
<%@include file="all_components/join_us_Css.jsp"%>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<c:if test="${not empty successMsg}">
		<div class="alert alert-success text-center" role="alert">${successMsg}</div>
		<c:remove var="successMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<!-- Banner Section -->
	<div class="join-us-header text-center mb-5">
		<img alt="" src="images/join_us.png">
	</div>

	<!-- Join Us Options Section -->
	<div class="join-us-section">
		<div class="join-us-cards">
			<!-- Volunteering Card -->
			<div class="join-us-card">
				<h3>Volunteer with Us</h3>
				<p>Help us in various projects like education, elderly care, and
					disability support. Your time can make a difference!</p>
				<a href="javascript:void(0);" onclick="toggleForm('volunteerForm')">Join
					Now</a> <a href="volunteer.jsp">Volunteers</a>
			</div>

			<!-- Donate Card -->
			<div class="join-us-card">
				<h3>Make a Donation</h3>
				<p>Support our programs by making a donation. Every
					contribution, big or small, goes a long way in changing lives.</p>
				<a href="javascript:void(0);" onclick="toggleForm('donationForm')">Donate
					Now</a> <a class="ml-3" href="donors.jsp">Our Contributors</a>
			</div>

			<!-- Partner Card -->
			<div class="join-us-card">
				<h3>Partner with Us</h3>
				<p>We collaborate with organizations and businesses that share
					our vision. Join hands with us to reach a wider impact.</p>
				<a href="#">Learn More</a>
			</div>
		</div>
	</div>

	<!-- Overlay for the background Volunteer Registration -->
	<div id="overlay" class="overlay" onclick="toggleForm('volunteerForm')"></div>

	<!-- Sliding Form for Volunteer Registration -->
	<div id="volunteerForm" class="join-form">
		<span class="close-form" onclick="toggleForm('volunteerForm')">&times;</span>
		<h2>Volunteer Registration</h2>
		<form action="addVolunteer" method="POST">
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" required> <label for="email">Email:</label> <input
				type="email" id="email" name="email" required> <label
				for="contact">Contact:</label> <input type="tel" id="contact"
				name="contact" required> <label for="address">Address:</label>
			<input type="text" id="address" name="address" required>
			<button type="submit">Submit</button>
		</form>
	</div>

	<!-- Overlay for the background of Donation -->
	<div id="overlay" class="overlay" onclick="toggleForm('donationForm')"></div>

	<!-- Sliding Form for Donation -->
	<div id="donationForm" class="join-form">
		<span class="close-form" onclick="toggleForm('donationForm')">&times;</span>
		<h2>Donation</h2>
		<form action="PaymentServlet" method="POST">
			<label for="name">Name:</label> <input type="text"
				id="name" name="name" required> <label
				for="email">Email:</label> <input type="email" id="email"
				name="email" required> <label for="amount">Amount:</label>
			<input type="number" id="amount" name="amount" required min="1"
				step="0.01">
			<button type="submit">Submit</button>
		</form>
	</div>
	<%@include file="all_components/footer.jsp"%>

	<script nonce="abc123">
        function toggleForm(formId) {
            var form = document.getElementById(formId);
            var overlay = document.getElementById('overlay');
            form.classList.toggle('active'); // Toggle visibility
            overlay.style.display = form.classList.contains('active') ? 'block' : 'none'; // Show/Hide overlay
            
            if (form.classList.contains('active')) {
                form.style.display = 'block'; // Show form
                setTimeout(() => {
                    form.classList.add('active'); // Add class for animation
                    form.style.bottom = '20px'; // Slide in effect
                }, 10); // Small delay for CSS transition to take effect
            } else {
                form.style.bottom = '-400px'; // Slide out effect
                setTimeout(() => {
                    form.style.display = 'none'; // Hide form after animation
                }, 300); // Match this with the CSS transition duration
            }
        }
    </script>
</body>
</html>

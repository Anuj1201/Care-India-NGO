<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'nonce-abc123' https://cdn.jsdelivr.net https://code.jquery.com https://stackpath.bootstrapcdn.com; object-src 'none';">
<title>About Us</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	font-family: 'Verdana', sans-serif;
}

.about-title {
	font-weight: light;
	font-size: 3em;
	margin: 20px;
	color: grey;
}

h2, h5 {
	color: grey;
}

h2 {
	text-decoration: underline;
}

.content-section, main {
	padding: auto;
	margin-left: 20%;
	margin-right: 20%;
	font-family: 'Verdana', sans-serif;
	text-align: center;
}

p {
	padding: auto;
}

main {
	font-size: 1.5em;
	border: 5px solid grey;
	padding: 30px;
	border-radius: 100px;
	background-color: white;
	box-shadow: 0 20px 20px rgba(0, 0, 0, 0.5);
}
</style>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<!-- About Us Section -->

	<h1 class="about-title">About Us</h1>

	<div class="content-section">
		<p>Welcome to Care India, a dedicated non-profit organization
			committed to transforming lives through compassionate service. Since
			our inception, we have worked tirelessly to empower vulnerable
			communities, uplift the under privileged, and provide hope and
			support to those in need. Our mission is to foster a society where
			everyone has the opportunity to live a dignified life, with access to
			fundamental rights, including education, healthcare, and social
			support.</p>
		<br>
		<h2 class="text-center mb-3">Our Missions</h2>
		<p>At Care India, our mission is rooted in a profound belief in
			equality, justice, and dignity for all. We aim to create lasting
			impact by:
		<h5>1. Providing Access to Education:</h5>
		<p>We believe education is a powerful tool for change. By offering
			educational opportunities to children and young adults, we equip them
			with the knowledge and skills to overcome challenges and unlock their
			potential.</p>

		<h5>2. Supporting Health and Well-being:</h5>
		<p>Healthcare is a basic right, yet millions lack access to
			essential medical services. We are dedicated to ensuring that every
			individual, especially those in marginalized communities, receives
			the medical attention they need to lead a healthy life.</p>

		<h5>3. Empowering Women and Girls:</h5>
		<p>Gender equality is vital for societal progress. We work to
			eliminate barriers faced by women and girls, supporting their journey
			toward self-reliance, financial independence, and leadership.
			Assisting the Elderly and Disabled: We respect and cherish our
			elderly, who often face isolation and neglect. Our programs offer
			companionship, essential services, and opportunities for the elderly
			and disabled to lead fulfilling lives with dignity.</p>

		<h5>4. Assisting the Elderly and Disabled:</h5>
		<p>We respect and cherish our elderly, who often face isolation
			and neglect. Our programs offer companionship, essential services,
			and opportunities for the elderly and disabled to lead fulfilling
			lives with dignity.</p>
		<hr>
	</div>


	<div class="content-section mb-4">
		<h2 class="text-center mb-3">Our Vision</h2>
		<p>Our vision is a world where every individual, regardless of
			their background, has equal access to resources, opportunities, and
			support systems. We envision a society that nurtures the potential of
			each person, fostering inclusivity, respect, and shared prosperity.
			At Care India, we aspire to create a ripple effect of positive change
			that transforms communities and leaves a lasting legacy.</p>
		<hr>
	</div>

	<br>

	<main class="text-center mb-5">Together, we can make a
		difference. Thank you for believing in our mission and supporting Care
		India.</main>

	<%@include file="all_components/footer.jsp"%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

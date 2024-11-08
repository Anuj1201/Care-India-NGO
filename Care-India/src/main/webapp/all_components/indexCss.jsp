<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index CSS</title>

<style>
footer {
	background-color: #333;
	color: #fff;
	padding: 10px 0; /* Reduce padding for less height */
	text-align: center;
	width: 100%;
	font-family: Cambria, sans-serif;
}

footer .footer-content {
	max-width: 1200px;
	margin: auto;
	padding: 0 10px; /* Reduce horizontal padding */
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around; /* Space sections evenly */
}

footer .footer-section {
	flex: 1 1 200px; /* Allow sections to take up only necessary width */
	margin-bottom: 10px;
}

footer .footer-section h5 .anchor {
	font-size: 1em; /* Smaller font size for title */
	margin-bottom: 8px; /* Reduce margin for more compact look */
	color: #007bff;
}

footer .footer-section p, footer .footer-section a {
	font-size: 0.8em; /* Smaller font for text */
	color: #ccc;
	text-decoration: none;
	margin: 0; /* Remove additional margin */
}

footer .social-icons a {
	color: #ccc;
	margin: 0 5px;
	font-size: 1em; /* Reduce icon size */
	transition: color 0.3s;
}

/* General styling */
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
	filter: blur(50px); /* Adjust the blur level as needed */
	z-index: -1;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

/* Main heading style */
h1 {
	text-align: center;
	color: grey;
	margin-bottom: 20px;
	font-weight: bold;
	font-size: 2em;
	font-family: Verdana, sans-serif;
}

/* Card styling */
.card {
	margin: 20px auto;
	border: none;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	font-family: Cambria, sans-serif;
	transition: transform 0.3s;
}

.card:hover {
	margin: 20px auto;
	border: none;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
	transform: scale(1.05);
}

/* Card image styling */
.card img {
	object-fit: cover;
	width: 100%;
	transition: transform 0.5s ease, opacity 0.5s ease;
	border-radius: 100px;
}

/* Slide-in and slide-out animations */
.slide-in {
	transform: translateX(0);
	opacity: 1;
}

.slide-out {
	transform: translateX(0);
	opacity: 0;
}

/* Responsive layout adjustments */
@media ( min-width : 768px) {
	.card {
		max-width: 700px;
	}
	.card .row {
		flex-direction: row;
	}
	.card img {
		height: 100%;
		max-height: 250px;
	}
	h1 {
		font-size: 2.5em;
	}
}

@media ( max-width : 767px) {
	.card {
		max-width: 100%;
	}
	.card .row {
		display: flex;
		flex-direction: column;
	}
	.card img {
		height: 200px;
		border-radius: 5px;
	}
	h1 {
		font-size: 1.8em;
		margin-bottom: 15px;
	}
}
</style>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp"%>
<%@include file="indexCss.jsp"%>
<style>
/* Additional CSS specific to the Join Us page */
.join-us-header {
	height: 150px;
}

.join-us-section {
	padding: 40px 20px;
	text-align: center;
}

.join-us-section h2 {
	font-size: 2em;
	margin-bottom: 20px;
	color: #333;
}

.join-us-cards {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 20px;
}

.join-us-card {
	width: 300px;
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 8px;
	background-color: #fff;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s;
}

.join-us-card:hover {
	transform: scale(1.05);
}

.join-us-card h3 {
	font-size: 1.5em;
	color: #007BFF;
}

.join-us-card p {
	color: #555;
	margin-bottom: 15px;
}

.join-us-card a {
	display: block;
	text-decoration: none;
	font-family: Cambria, sans-serif;
	color: white;
	background-color: grey;
	padding: 10px 20px;
	border-radius: 10px;
	margin-bottom: 10px;
}
.join-us-card a:hover {
text-decoration: none;
background-color: transparent;
color: grey;
border: 2px solid grey;
}

/* Styles for the sliding form */
.overlay {
	display: none; /* Hidden by default */
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 999; /* Ensure it's on top */
}

.join-form {
	display: none; /* Hidden by default */
	padding: 20px;
	border: 1px solid #ddd;
	border-radius: 8px;
	background-color: #f9f9f9;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	position: fixed; /* Fixed position to appear on top */
	bottom: -400px; /* Start hidden below the screen */
	left: 50%;
	transform: translateX(-50%); /* Center it horizontally */
	width: 90%;
	max-width: 400px; /* Set a maximum width */
	transition: bottom 0.3s ease-in-out; /* Animation for sliding */
	z-index: 1000; /* Ensure it's on top */
}

.join-form.active {
	display: block; /* Show when active */
	bottom: 20px; /* Position just above the bottom */
}

.join-form h2 {
	text-align: center;
	color: #333;
}

.join-form label {
	display: block;
	margin-bottom: 5px;
	color: #555;
}

.join-form input {
	width: calc(100% - 20px);
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.join-form button {
	width: 100%;
	padding: 10px;
	background-color: #007BFF;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.join-form button:hover {
	background-color: #0056b3;
}

.close-form {
	cursor: pointer;
	color: #007BFF;
	text-decoration: underline;
	position: absolute;
	top: 10px;
	right: 10px;
	font-size: 1.2em;
}
</style>
</head>
<body>

</body>
</html>
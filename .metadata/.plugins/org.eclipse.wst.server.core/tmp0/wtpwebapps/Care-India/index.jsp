<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'nonce-abc123' https://cdn.jsdelivr.net https://code.jquery.com https://stackpath.bootstrapcdn.com; object-src 'none';">
<title>Index Page</title>
<%@include file="all_components/allCss.jsp"%>
<%@include file="all_components/indexCss.jsp"%>
</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<div class="container mt-4">
		<h1>OUR MISSIONS</h1>

		<div class="card mb-3" id="card1">
			<div class="row g-0">
				<div class="col-md-4">
					<img src="images/children.jpg"
						class="img-fluid rounded-start image1 slide-in"
						alt="Children Mission Image" id="image1">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">Support for Children's Education</h5>
						<p class="card-text">We aim to provide access to quality
							education for under privileged children. Our mission is to create
							a brighter future by supporting educational initiatives.</p>
						<p class="card-text">
							<small class="text-muted">Last updated 5 mins ago</small>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="card mb-5" id="card2">
			<div class="row g-0">
				<div class="col-md-4">
					<img src="images/oldPeople.jpeg"
						class="img-fluid rounded-start image2 slide-in"
						alt="Elderly Support Mission Image" id="image2">
				</div>
				<div class="col-md-8">
					<div class="card-body">
						<h5 class="card-title">Support for Elderly and Disabled</h5>
						<p class="card-text">Our goal is to help elderly and disabled
							individuals live a dignified life. We provide resources, care,
							and companionship to improve their well-being.</p>
						<p class="card-text">
							<small class="text-muted">Last updated 2 mins ago</small>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_components/index.js"%>

	<%@include file="all_components/footer.jsp"%>
</body>
</html>

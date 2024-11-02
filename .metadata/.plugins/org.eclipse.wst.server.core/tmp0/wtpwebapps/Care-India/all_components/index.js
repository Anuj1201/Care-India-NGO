<script nonce="abc123">
	const imagesCard1 = [
	"images/children.jpg",
	"images/logo.jpeg"
	];
	const imagesCard2 = [
	"images/oldPeople.jpeg",
	"images/orphanage.jpeg"
	];

	let currentImageIndex1 = 0;
	let currentImageIndex2 = 0;

    setInterval(() => {
        const img1 = document.getElementById("image1");
        const img2 = document.getElementById("image2");

        // Ensure the images exist before applying classes
        if (img1 && img2) {
		// Apply slide-out class
		img1.classList.remove("slide-in");
            img1.classList.add("slide-out");

            img2.classList.remove("slide-in");
            img2.classList.add("slide-out");

            // Wait for the transition, then change images
            setTimeout(() => {
		currentImageIndex1 = (currentImageIndex1 + 1) % imagesCard1.length;
                currentImageIndex2 = (currentImageIndex2 + 1) % imagesCard2.length;

                img1.src = imagesCard1[currentImageIndex1];
                img2.src = imagesCard2[currentImageIndex2];

                // Trigger slide-in effect
                img1.classList.remove("slide-out");
                img1.classList.add("slide-in");

                img2.classList.remove("slide-out");
                img2.classList.add("slide-in");
            }, 500); // Matches the CSS transition duration
        }
    }, 4000); // Change image every 4 seconds
</script>

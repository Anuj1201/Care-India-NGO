# Care India NGO

Care India NGO is a web-based platform dedicated to supporting various social causes in India, with a particular focus on children’s education, elderly care, and assistance for disabled individuals. This project is designed to enable seamless management of NGO activities, including volunteer coordination, donations, and public awareness, through a user-friendly interface.

## Table of Contents
- [Project Overview](#project-overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup and Installation](#setup-and-installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

---

## Project Overview

Care India NGO aims to simplify the management and operations of NGOs by providing a centralized platform for administrators, volunteers, and donors. It enables the organization to handle volunteer information, events, and donations effectively, fostering community involvement in various charitable activities. This project was developed with the goal of increasing transparency, efficiency, and engagement within the NGO.

## Features

- **Volunteer Management**: Admins can view, add, and delete volunteer details, ensuring organized coordination of all registered volunteers.
- **Donation System with Razorpay Integration**: A secure payment gateway is integrated to allow users to make donations online. Donor information (name, email, amount) is stored and displayed on the donations page.
- **User Roles**: Distinct views and access levels for admins (founder) and volunteers, with certain actions restricted to admins.
- **Mission Management**: The founder can add or delete missions displayed on the home page.
- **Family Tree Structure**: An interactive module to visualize the family tree structure of volunteers (optional feature).
- **Dynamic Content**: Smooth animations and interactive elements, such as image sliders and volunteer display cards.

## Technologies Used

- **Backend**: Java (Servlets, JSP), Apache Tomcat Server
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Database**: MySQL
- **Payment Gateway**: Razorpay Integration
- **Tools**: Eclipse, Maven, Git, MySQL Workbench

## Setup and Installation

To run this project locally, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Anuj1201/Care-India-NGO.git

2. **Import the Project in Eclipse**:
   - Open Eclipse, go to **File > Import > Maven > Existing Maven Projects**.
   - Select the project directory and complete the import.

3. **Configure the Database**:
   - Create a MySQL database and import the provided schema.
   - Update the database connection details in `DBConnect.java` to match your local configuration.

4. **Configure Razorpay Integration**:
   - Sign up for a Razorpay account and obtain your API keys.
   - Add the Razorpay API keys in the appropriate configuration file or class, such as `PaymentDAOImpl`, to enable the donation feature.

5. **Run the Project**:
   - Start the Apache Tomcat server.
   - Deploy the project on Tomcat and access it at `http://localhost:8080/Care-India-NGO`.

## Usage

1. **Home Page**: Showcases the NGO’s mission, objectives, and links to join as a volunteer or make a donation.
2. **Join Us**: Visitors can sign up as volunteers, and their details will be stored in the database.
3. **Donations**: When clicking "Donate Now," a dialog box opens to enter donation details. After payment, the donor’s information is saved and displayed on `donations.jsp`.
4. **Admin Controls**:
   - **Manage Volunteers**: Admins can view a list of volunteers with options to delete entries.
   - **Manage Missions**: Admins can add or remove missions from the homepage.
   - **Logout**: Admins can securely log out of the session.

## Project Structure

- **src/main/java/com/admin/servlet**: Contains servlet classes for handling requests.
- **src/main/java/com/admin/DB**: Contains database connection and data access classes.
- **resources/webapp**:
  - **all_components**: Shared resources such as CSS and JSP components.
  - **images**: Stores images used across the site.
  - **WEB-INF**: Contains main JSP pages (index, contact, about, etc.).

## Screenshots

_Include screenshots of the home page, donation form, volunteer management page, and other key features._

## Contributing

We welcome contributions to enhance the Care India NGO project. To contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -m "Description of feature"`).
4. Push the branch (`git push origin feature-branch`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

## Contact

For questions or feedback, feel free to reach out via GitHub.

---

Thank you for supporting our mission!

package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.FounderDAOImpl;
import com.DB.DBConnect;
import com.entity.Volunteer;

@WebServlet("/addVolunteer")
public class AddVolunteerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// Retrieve form data
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String contact = req.getParameter("contact");
		String address = req.getParameter("address");

		// Create a Volunteer object with the form data
		Volunteer volunteer = new Volunteer(name, email, contact, address);

		// Establish a database connection and initialize FounderDAOImpl
		FounderDAOImpl founderDAO = new FounderDAOImpl(DBConnect.getConn());

		HttpSession session = req.getSession();

		if (founderDAO.isVolunteerExists(email)) {
			session.setAttribute("failedMsg", "A volunteer with this email is already Exists!!");
			resp.sendRedirect("join_us.jsp");
		} else {
			// Save volunteer and check if successful
			boolean isSaved = founderDAO.saveVolunteer(volunteer);

			if (isSaved) {
				session.setAttribute("successMsg", "You have joined successfully!");
				// Redirect to a success page or show a success message
				resp.sendRedirect("join_us.jsp");
			} else {
				session.setAttribute("failedMsg", "There was an error!! Please try again.");
				// Redirect to an error page or show an error message
				resp.sendRedirect("join_us.jsp");
			}
		}

	}
}

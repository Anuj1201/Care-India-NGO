package com.admin.servlet;

import com.DAO.FounderDAOImpl;
import com.DB.DBConnect;
import com.entity.Volunteer;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/volunteer")
public class VolunteerListServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		FounderDAOImpl dao = new FounderDAOImpl(DBConnect.getConn());
		
		List<Volunteer> volunteerList = dao.getAllVolunteers();
		session.setAttribute("volunteerList", volunteerList);
		System.out.println("Number of volunteers: " + volunteerList.size()); // Debugging line
		System.out.println(volunteerList);
		request.getRequestDispatcher("volunteer.jsp").forward(request, response);
	}
}

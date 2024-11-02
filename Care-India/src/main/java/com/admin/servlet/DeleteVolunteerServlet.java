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

@WebServlet("/deleteVolunteer")
public class DeleteVolunteerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");

        FounderDAOImpl founderDAO = new FounderDAOImpl(DBConnect.getConn());
        boolean isDeleted = founderDAO.deleteVolunteer(name, email);
        
        HttpSession session = req.getSession();
        if (isDeleted) {
        	session.setAttribute("succMsg", "Volunteer removed successfully");
            resp.sendRedirect("volunteer.jsp"); // Redirect to refresh volunteer list
        } else {
        	session.setAttribute("failedMsg", "Something went wrong");
            resp.sendRedirect("volunteer.jsp");
        }
    }
}

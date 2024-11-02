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
import com.entity.Founder;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			HttpSession session = req.getSession();

			String email = req.getParameter("email");
			String password = req.getParameter("password");

			if ("founder@gmail.com".equals(email) && "1234".equals(password)) {

				Founder founder = new Founder();
				founder.setName("Care India");
				session.setAttribute("userobj", founder);
				resp.sendRedirect("home.jsp");
			} else {

				session.setAttribute("failedMsg", "Invalid Email or Password");
				resp.sendRedirect("founder_login.jsp");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

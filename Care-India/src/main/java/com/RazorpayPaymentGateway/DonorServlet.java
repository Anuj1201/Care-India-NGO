package com.RazorpayPaymentGateway;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import com.DAO.DonorDAOImpl;
import com.DB.DBConnect;
import com.entity.Donors;

@SuppressWarnings("serial")
@WebServlet("/saveDonor")
public class DonorServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String amountStr = request.getParameter("amount");
			String orderId = request.getParameter("orderId");
			String paymentId = request.getParameter("paymentId");

			double amount = Double.parseDouble(amountStr);

			Donors donor = new Donors();
			donor.setName(name);
			donor.setEmail(email);
			donor.setAmount(amount);
			donor.setOrderId(orderId);
			donor.setPaymentId(paymentId);

			DonorDAOImpl donorDAO = new DonorDAOImpl(DBConnect.getConn());
			boolean isSaved = donorDAO.saveDonor(donor);

			// Fetch all donors after saving
			List<Donors> donorList = donorDAO.getAllDonors();
			request.setAttribute("donorList", donorList); // Set donorList as request attribute

			if (isSaved) {
				request.setAttribute("message", "success");
			} else {
				request.setAttribute("message", "failure");
			}

			response.sendRedirect("donors.jsp");

		} catch (NumberFormatException e) {
			e.printStackTrace();
			request.setAttribute("message", "error");
			response.sendRedirect("donors.jsp");
		}
	}
}

package com.RazorpayPaymentGateway;

import org.json.JSONObject;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@SuppressWarnings("serial")
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// Initialize Razorpay client
			RazorpayClient razorpay = new RazorpayClient("rzp_test_EJIbfJyXtr3D6O", "AvEhWadR12VNREeJHONndaqe");

			// Parse the amount and convert to paise
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String amountStr = request.getParameter("amount");
			double amountInPaise = Double.parseDouble(amountStr) * 100; // Convert amount to paise

			//System.out.println(name + " " + email + " " + amountStr);
			
			// Prepare the order parameters
			JSONObject orderRequest = new JSONObject();
			orderRequest.put("amount", amountInPaise);
			orderRequest.put("currency", "INR");
			orderRequest.put("receipt", "order_rcptid_11");
			orderRequest.put("payment_capture", 1); // Automatic capture

			// Create order
			Order order = razorpay.orders.create(orderRequest);

			HttpSession session = request.getSession();
			// Store order details in session
			request.setAttribute("orderId", order.get("id"));
			request.setAttribute("amount", amountStr); // Store the original amount in INR
			request.setAttribute("name", name);// Store name and email here
			request.setAttribute("email", email);

//			System.out.println("Order ID: " + session.getAttribute("orderId"));
//			System.out.println("Amount: " + session.getAttribute("amount"));
//			System.out.println("Name: " + session.getAttribute("name"));
//			System.out.println("Email: " + session.getAttribute("email"));

			// Forward to the payment.jsp page
			RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
			dispatcher.forward(request, response);

		} catch (NumberFormatException e) {
			// Handle invalid amount input
			e.printStackTrace();
			request.setAttribute("failedMsg", "Invalid amount entered. Please enter a valid number.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("join_us.jsp");
			dispatcher.forward(request, response);
		} catch (RazorpayException e) {
			// Handle Razorpay exceptions
			e.printStackTrace();
			request.setAttribute("failedMsg", "Payment processing failed. Please try again.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("join_us.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			// Handle any other exceptions
			e.printStackTrace();
			request.setAttribute("failedMsg", "An unexpected error occurred. Please try again.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("join_us.jsp");
			dispatcher.forward(request, response);
		}
	}
}

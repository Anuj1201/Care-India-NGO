package com.entity;

import java.util.Date;

public class Donors {
	private int id;
	private String name;
	private String email;
	private double amount;
	private String orderId;
	private String paymentId;
	private Date paymentDate;
	
	//Constructor
	public Donors() {
		
	}
	//Constructor with fields
	public Donors(int id, String name, String email, double amount, String orderId, String paymentId,
			Date paymentDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.amount = amount;
		this.orderId = orderId;
		this.paymentId = paymentId;
		this.paymentDate = paymentDate;
	}

	//Getters and Setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
	
	//toString() method
 	@Override
	public String toString() {
		return "Donors [id=" + id + ", name=" + name + ", email=" + email + ", amount=" + amount + ", paymentId="
				+ paymentId + ", orderId=" + orderId + ", paymentDate=" + paymentDate + "]";
	}
	
}

package com.entity;

public class Volunteer {
	private int id;
    private String name;
    private String email;
    private String contact;
    private String address;

    // Constructor, Getters, and Setters
    public Volunteer(String name, String email, String contact, String address) {
    	this.name = name;
        this.email = email;
        this.contact = contact;
        this.address = address;
    }
    
    // Getters and setters here

	public Volunteer() {
		// TODO Auto-generated constructor stub
	}

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

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Volunteer [name=" + name + ", email=" + email + ", contact=" + contact + ", address="
				+ address + "]";
	}
    
	
}

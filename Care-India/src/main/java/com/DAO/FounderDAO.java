package com.DAO;

import java.util.List;

import com.entity.Volunteer;

public interface FounderDAO {

	public boolean saveVolunteer(Volunteer volunteer);
	
	public List<Volunteer> getAllVolunteers();
	
	public boolean deleteVolunteer(String name, String email);
	
	public boolean isVolunteerExists(String email);
}

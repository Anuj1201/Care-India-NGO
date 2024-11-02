package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Volunteer;

public class FounderDAOImpl implements FounderDAO {
	private Connection conn;

	public FounderDAOImpl(Connection conn) {
		this.conn = conn;
	}

	// Method to save volunteer details
	public boolean saveVolunteer(Volunteer volunteer) {
		boolean isSaved = false;
		String sql = "INSERT INTO volunteers (name, email, contact, address) VALUES (?, ?, ?, ?)";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, volunteer.getName());
			ps.setString(2, volunteer.getEmail());
			ps.setString(3, volunteer.getContact());
			ps.setString(4, volunteer.getAddress());

			int rowsInserted = ps.executeUpdate();
			isSaved = rowsInserted > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return isSaved;
	}

	// Method to check if a volunteer already exists based on email
	public boolean isVolunteerExists(String email) {
		boolean exists = false;
		String sql = "SELECT * FROM volunteers WHERE email = ?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, email);

			try (ResultSet rs = ps.executeQuery()) {
				exists = rs.next(); // true if there's at least one result
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return exists;
	}

	// Method to get all volunteers
	public List<Volunteer> getAllVolunteers() {

		List<Volunteer> list = new ArrayList<>();
		Volunteer vol = null;
		try {
			String sql = "select * from volunteers";

			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				vol = new Volunteer();

				vol.setId(rs.getInt(1));
				vol.setName(rs.getString(2));
				vol.setEmail(rs.getString(3));
				vol.setContact(rs.getString(4));
				vol.setAddress(rs.getString(5));

				list.add(vol);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	// Updated delete method
	public boolean deleteVolunteer(String name, String email) {
		boolean status = false;
		try {
			String query = "Delete from volunteers where name=? and email=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);

			int i = ps.executeUpdate();

			if (i == 1) {
				status = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
}

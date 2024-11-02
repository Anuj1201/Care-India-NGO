package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Donors;

public class DonorDAOImpl implements DonorDAO {

	private Connection conn;

	public DonorDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public boolean saveDonor(Donors donor) {
		boolean isSaved = false;
		String query = "INSERT INTO donors (name, email, amount, order_id, payment_id) VALUES (?, ?, ?, ?, ?)";

		try (PreparedStatement pstmt = conn.prepareStatement(query)) {
			pstmt.setString(1, donor.getName());
			pstmt.setString(2, donor.getEmail());
			pstmt.setDouble(3, donor.getAmount());
			pstmt.setString(4, donor.getOrderId());
			pstmt.setString(5, donor.getPaymentId());

			int rowsAffected = pstmt.executeUpdate();
			if (rowsAffected > 0) {
				isSaved = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isSaved;
	}

	public List<Donors> getAllDonors() {
		List<Donors> donorList = new ArrayList<>();
		String query = "SELECT * FROM donors";

		try (PreparedStatement pstmt = conn.prepareStatement(query)) {
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Donors donor = new Donors();
				donor.setId(rs.getInt(1));
				donor.setName(rs.getString(2));
				donor.setEmail(rs.getString(3));
				donor.setAmount(rs.getDouble(4));
				donor.setOrderId(rs.getString(5));
				donor.setPaymentId(rs.getString(6));

				donorList.add(donor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return donorList;
	}
}

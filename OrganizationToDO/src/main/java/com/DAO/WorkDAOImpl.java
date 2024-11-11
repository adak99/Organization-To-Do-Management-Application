package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.WorkData;

public class WorkDAOImpl {

	private Connection conn;

	public WorkDAOImpl(Connection conn) {
		this.conn = conn;
	}

	public boolean addWork(WorkData b) {
		boolean isInsert = false;

		String query = "INSERT INTO work(co_name, description, git_url) VALUES (?, ?, ?)";

		try (PreparedStatement ps = conn.prepareStatement(query)) {
			ps.setString(1, b.getCo_name());
			ps.setString(2, b.getDescription());
			ps.setString(3, b.getGit_url());

			int rowsAffected = ps.executeUpdate();
			if (rowsAffected > 0) {
				isInsert = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return isInsert;
	}

	public List<WorkData> getAllWork() {
		List<WorkData> list = new ArrayList<WorkData>();
		WorkData works = null;

		try {
			String quary = "SELECT *FROM work";
			PreparedStatement ps = conn.prepareStatement(quary);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				works = new WorkData();
				works.setId(rs.getInt("id"));
				works.setCo_name(rs.getString("co_name"));
				works.setDescription(rs.getString("description"));

				list.add(works);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public boolean deleteWork(int id) {
	        boolean isDelete = false;

	        try {
	            String quary = "DELETE FROM work WHERE id=?";
	            PreparedStatement ps = conn.prepareStatement(quary);
	            ps.setInt(1, id);

	            int rowAffected = ps.executeUpdate();

	            if (rowAffected > 0) {
	                isDelete = true;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return isDelete;
	    }
}

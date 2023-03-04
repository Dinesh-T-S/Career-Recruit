package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Apply;


public class ApplyDAO {
	
	private Connection conn;

	public ApplyDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addApply(Apply a) {

		boolean f = false;

		try {

			String sql = "insert into apply(name,qua,email,mark,skills,city,university,cgpa,interest,phonenumber,company,project)values(?,?,?,?,?,?,?,?,?,?,?,?)";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, a.getName());
			ps.setString(2, a.getQua());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getMark());
			ps.setString(5, a.getSkills());
			ps.setString(6, a.getCity());
			ps.setString(7, a.getUniversity());
			ps.setString(8, a.getCgpa());
			ps.setString(9, a.getInterest());
			ps.setString(10, a.getPhonenumber());
			ps.setString(11, a.getCompany());
			ps.setString(12, a.getProject());




			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}

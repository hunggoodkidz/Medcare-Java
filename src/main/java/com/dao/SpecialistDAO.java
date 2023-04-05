package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;
import com.entity.Specialist;
public class SpecialistDAO {

	private Connection conn;
	
	public SpecialistDAO(Connection conn) {
		super();
		this.conn = conn;
		
	}
	
	public boolean addSpecialist(String spec)
	{
		boolean f =false;
		try {
			
			String sql = " insert into specialist(spec_name) value(?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,	spec);
			
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	public boolean updateSpecialist(Specialist d) {
		boolean f = false;

		try {

			String sql = "update specialist set spec_name=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, d.getSpecialistName());
			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	public boolean deleteSpecialist(int id) {
		boolean f = false;
		try {
			String sql = "delete from specialist where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public Specialist getSpecialistById(int id) {

		Specialist d = null;
		try {

			String sql = "select * from specialist where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				d = new Specialist();
				d.setId(rs.getInt(1));
				d.setSpecialistName(rs.getString(2));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
	
		public List<Specialist> getAllSpecialist() {
			List<Specialist> list = new ArrayList<Specialist>();
			Specialist s = null;
	
			try {
				String sql = "select * from specialist";
				PreparedStatement ps = conn.prepareStatement(sql);
	
				ResultSet rs = ps.executeQuery();
	
				while (rs.next()) {
					s = new Specialist();
					s.setId(rs.getInt(1));
					s.setSpecialistName(rs.getString(2));
					list.add(s);
				}
	
			} catch (Exception e) {
				e.printStackTrace();
			}
	
			return list;
		}
}

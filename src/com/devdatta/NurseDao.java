package com.devdatta;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class NurseDao {
	
	Connection con = null;
	public Nurse getNurse()
	{
		Nurse n = new Nurse();
		return n;
	}

	public void addNurse(Nurse n)
	{
		String query = "insert into Nurse values(?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, n.n_id);
			pst.setString(2, n.speciality);
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	
}


class Nurse{
	int n_id;
	String speciality;
}
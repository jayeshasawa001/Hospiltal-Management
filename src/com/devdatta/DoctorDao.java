package com.devdatta;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class DoctorDao {
	
	Connection con = null;
	
	public void connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/","root","");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Doctor getDoctor()
	{
		Doctor d = new Doctor();
		return d;
	}
	
	public void addDoctor(Doctor d)
	{
		
		String query = "insert into Doctor values(?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, d.d_id);
			pst.setString(2, d.speciality);
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}

class Doctor
{
	int d_id;
	String speciality;
	
}


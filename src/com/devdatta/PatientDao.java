package com.devdatta;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class PatientDao {
	Connection con=null;
	public void connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/myfirst","root","");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public Patient getPatient()
	{
		Patient p = new Patient();
		return p;
	}
	
	public void addPatient(Patient p)
	{
		String query = "insert into patient(fname,lname,dob,gender,bgrp,email,city,state,pincode) values(?,?,?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setString(1, p.fname);
			pst.setString(2, p.lname);
			pst.setString(3, p.dob);
			pst.setString(4, p.gender);
			pst.setString(5, p.bgrp);
			pst.setString(6, p.email);
			pst.setInt(7, p.pincode);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void deletePatient(int n)
	{
		String query = "Delete from Employee where pid=?";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, n);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int getPatID()
	{
		int x = 0;
		String query = "select last_insert_id();";
		try {
			PreparedStatement st = (PreparedStatement) con.clientPrepareStatement(query);
			ResultSet rs = st.executeQuery();
			 if(rs.next())
			 {
				 x = rs.getInt(1);
			 }
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return x;
		
	}
	
}
class Patient{
	String fname,lname,dob,gender,bgrp,email,city,state;
	int pincode;
}
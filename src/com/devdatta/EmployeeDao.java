package com.devdatta;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class EmployeeDao {
Connection con = null;
	
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

	public Employee getEmp()
	{
		Employee emp = new Employee();
		return emp;
	}

	public void addEmployee(Employee e)
	{
		
		String query = "insert into Employee(fname,lname,dob,gender,email) values(?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			
			pst.setString(1, e.fname);
			pst.setString(2, e.lname);
			pst.setString(3,e.dob);
			pst.setString(4, e.gender);
			pst.setString(5, e.email);
			
			
			pst.executeUpdate();
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	public int getEmpID()
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

	public void deleteEmployee(int eid)
	{
		String query = "Delete from Employee where e_id=?";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, eid);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}





class Employee
{
	
	String fname;
	String lname;
	String dob;
	String gender;
	String email;
}


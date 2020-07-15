package com.devdatta;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class AppointmentDao {
	
Connection con = null;
	
	public void connect()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/hospital","root","");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public Appointment getAppointment()
	{
		Appointment a = new Appointment();
		return a;
	}

	public void addAppointment(Appointment a)
	{
		String query = "insert into appointment(did,pid,disease,app_date,app_time,app_status,room_no) values(?,?,?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			
			pst.setInt(1, a.d_id);
			pst.setInt(2, a.p_id);
			pst.setString(3,a.disease);
			pst.setString(4, a.date);
			pst.setString(5, a.time);
			pst.setString(6, a.status);
			pst.setInt(7, a.room_no);
			
			
			pst.executeUpdate();
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			System.out.println(e1);
			
		}
	}

}

class Appointment{
	int d_id;
	int p_id;
	String date;
	String time;
	String status;
	String disease;
	int room_no;
}

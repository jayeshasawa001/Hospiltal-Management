package com.devdatta;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class RoomDao {
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

	public Room getRoom()
	{
		Room r = new Room();
		return r;
	}

	public void addRoom(Room r)
	{
		String query = "insert into room(app_id,room_type,availability,start_date,end_date,nid) values(?,?,?,?,?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, r.app_id);
			pst.setString(2, r.room_type);
			pst.setString(3, r.availability);
			pst.setString(4, r.start_date);
			pst.setString(5, r.end_date);
			pst.setInt(6, r.nid);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void deleteRoom(int c)
	{
		String query = "Delete from bill where bill_id=?";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, c);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

class Room
{
	int app_id;
	String room_type, availability;
	String start_date,end_date;
	int nid;
}
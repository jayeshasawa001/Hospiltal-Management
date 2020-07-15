package com.devdatta;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class PatMobDao {
	
	Connection con=null;
	
	public PatMob getPatMobile(){
		PatMob pmpmo = new PatMob();
		return pmpmo;
	}
	public void addPatMobile(PatMob pm)
	{
		String query = "insert into patient_mob_no values(?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, pm.pid);
			pst.setFloat(2, pm.mob_no);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


class PatMob{
	int pid;
	long mob_no;
}

package com.devdatta;


import java.sql.SQLException;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class EmpMobDao {
	Connection con=null;
		
	public EmpMob getEmpMobile(){
		EmpMob empmo = new EmpMob();
		return empmo;
	}
	public void addEmpMobile(EmpMob em)
	{
		String query = "insert into employee_mob_no values(?,?)";
		PreparedStatement pst;
		try {
			pst = (PreparedStatement) con.clientPrepareStatement(query);
			
			pst.setInt(1, em.eid);
			pst.setFloat(2, em.mob_no);
			
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

class EmpMob{
	int eid;
	long mob_no;
}
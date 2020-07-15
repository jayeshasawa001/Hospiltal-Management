package com.devdatta;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDoctor
 */
@WebServlet("/AddDoctor")
public class AddDoctor extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EmployeeDao edao = new EmployeeDao();
		
		Employee e=edao.getEmp();
		edao.connect();
		e.fname = request.getParameter("fname");
		e.lname = request.getParameter("lname");
		e.email = request.getParameter("email");
		e.dob = request.getParameter("dob");
		e.gender = request.getParameter("gender");
		edao.addEmployee(e);
		
		
		PrintWriter out = response.getWriter();
		//out.println("Added"+edao.getEmpID());
		
		EmpMobDao emdao = new EmpMobDao();
		EmpMob emob = new EmpMob();
		emob.eid = edao.getEmpID();
		emob.mob_no = Integer.parseInt(request.getParameter("mobile"));
		emdao.addEmpMobile(emob);
		
		
		
		String type = request.getParameter("Employee");
		
		if(type.equals("Doctor"))
		{
		DoctorDao dao = new DoctorDao();
		Doctor d = dao.getDoctor();
		
		 d.d_id = edao.getEmpID();
		 d.speciality = request.getParameter("Speciality");
		
		
		dao.addDoctor(d);
		}
		else if(type.equals("Nurse"))
		{
			NurseDao ndao = new NurseDao();
			Nurse n = ndao.getNurse();
			n.n_id = edao.getEmpID();
			n.speciality = request.getParameter("Speciality");
			
			ndao.addNurse(n);
		}
		else {
			out.println("Error");
		}
		
		
		
	}

}

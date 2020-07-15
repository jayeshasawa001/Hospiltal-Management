package com.devdatta;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddPatient")
public class AddPatient extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PatientDao pdao = new PatientDao();
		
		Patient p=pdao.getPatient();
		pdao.connect();
		p.fname = request.getParameter("fname");
		p.lname = request.getParameter("lname");
		p.email = request.getParameter("email");
		p.dob = request.getParameter("dob");
		p.gender = request.getParameter("gender");
		p.bgrp = request.getParameter("Blood");
		p.city = request.getParameter("city");
		p.state = request.getParameter("state");
		p.pincode = Integer.parseInt(request.getParameter("pincode"));
		pdao.addPatient(p);
		
		
		PrintWriter out = response.getWriter();
		//out.println("Added"+edao.getEmpID());
		
		PatMobDao ptdao = new PatMobDao();
		PatMob pmob = new PatMob();
		pmob.pid = pdao.getPatID();
		pmob.mob_no= Integer.parseInt(request.getParameter("mobile"));
		ptdao.addPatMobile(pmob);
	}

}

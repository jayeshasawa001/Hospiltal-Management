package com.devdatta;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RedirectTo
 */
@WebServlet("/RedirectTo")
public class RedirectTo extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String btn = request.getParameter("button");
		if(btn.equals("Employee's Records"))
		{
			response.sendRedirect("EmployeDashboard.jsp");
		}
		else if(btn.equals("Patient's Records")) {
			response.sendRedirect("PatientOption.jsp");
		}
		
		else if(btn.equals("Patient's Information"))
		{
			response.sendRedirect("PatientInfo.jsp");
		}
		
		else if(btn.equals("Patient's Registration"))
		{
			response.sendRedirect("Patient_Registration.jsp");
		}
		else if(btn.equals("Patient's Appointment"))
		{
			response.sendRedirect("AppointDashboard.jsp");
		}
		else if(btn.equals("Patient's Bill Information"))
		{
			response.sendRedirect("BillInfo.jsp");
		}
		else if(btn.equals("View Appointments"))
		{
			response.sendRedirect("ViewAppoint.jsp");
		}
		else if(btn.equals("New Appointments")) {
			response.sendRedirect("PatientAppointment.jsp");
		}
	}

}

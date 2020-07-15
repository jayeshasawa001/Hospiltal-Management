package com.devdatta;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddAppointment
 */
@WebServlet("/AddAppointment")
public class AddAppointment extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AppointmentDao adao = new AppointmentDao();
		adao.connect();
		Appointment a = adao.getAppointment();
		
		a.p_id = Integer.parseInt(request.getParameter("p_id"));
		a.d_id = Integer.parseInt(request.getParameter("d_id"));
		a.disease = request.getParameter("disease");
		a.date = request.getParameter("date");
		a.time = request.getParameter("atime");
		a.time=a.time.concat(":00");
		a.room_no = Integer.parseInt(request.getParameter("Room No"));
		a.status = "In-Progress";
		
		adao.addAppointment(a);
		
		PrintWriter out = response.getWriter();
		out.println(a.time);
		out.println("Appointment Booked Succesfully!");
		
	}

}

package Studentmanagement.Controller;

import java.io.IOException;


import Studentmanagement.Entity.Student;
import Studentmanagement.Service.StudentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/register")
public class Register extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student s=new Student();
		s.setId(Integer.parseInt(req.getParameter("id")));
		s.setName(req.getParameter("name"));
		s.setAge(Integer.parseInt(req.getParameter("age")));
		s.setBanch(req.getParameter("branch"));
		StudentService sc=new StudentService();
		int n=sc.Save(s);
		if(n>0) {
			System.out.println("Data is Saved..!");
			resp.sendRedirect("index.jsp");
		}
		else {
			resp.getWriter().print("<h1>Data is not saved ...!</h1><h1>Try Again Later </h1>");
		}
	}

}

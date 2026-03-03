package Studentmanagement.Controller;


import java.io.IOException;
import java.sql.ResultSet;

import Studentmanagement.Entity.Student;
import Studentmanagement.Service.StudentService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/studentlogin")
public class StudentLogin extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 String name= req.getParameter("name");
	 String password=req.getParameter("password");
	 Student s=new Student();
	 s.setName(name);
	 StudentService s1=new StudentService();
	 boolean rs=s1.getData(s);
	 if(rs) {
		HttpSession session= req.getSession();
		session.setAttribute("role","student");
		session.setAttribute("uname",name);
		session.setAttribute("upassword", password);
		RequestDispatcher d= req.getRequestDispatcher("index.jsp");
		d.forward(req, resp);
	 }
	 else {
		 resp.getWriter().print("not a valid user..!");
	 }

	}
}

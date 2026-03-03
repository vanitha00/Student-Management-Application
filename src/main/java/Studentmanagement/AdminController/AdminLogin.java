package Studentmanagement.AdminController;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import Studentmanagement.AdminService.AdminService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 String uname= req.getParameter("uname");
	 String password=req.getParameter("password");
	 AdminService s=new AdminService();
	 boolean b=s.validate(uname,password);
	 if(b) {
		 HttpSession session=req.getSession();
		 session.setAttribute("role", "admin");
		 session.setAttribute("username", uname);
		 session.setAttribute("password", password);
		 resp.sendRedirect("index.jsp");
		 
	 }
	 else {
		 resp.getWriter().print("<h1> not a valid user <br> Try again..</h1>");
	 }
	
	 
	 
	}
}

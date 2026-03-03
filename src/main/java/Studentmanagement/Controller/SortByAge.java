package Studentmanagement.Controller;


import java.io.IOException;
import java.util.List;

import Studentmanagement.Entity.Student;
import Studentmanagement.Service.StudentService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/sortByAge")
public class SortByAge extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudentService s=new StudentService();
		List<Student> list=s.sortByAge();
		if(!list.isEmpty()) {
			req.setAttribute("allStudents", list);
			RequestDispatcher d=req.getRequestDispatcher("DisplayAll.jsp");
		    d.forward(req, resp);
		}
		else {
			resp.getWriter().print("<h1>ther is no data to sort..</h1>");
		}
	}
	

}


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

@WebServlet("/delete")
public class DeleteStudent extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Student s=new Student();
		s.setId(Integer.parseInt(req.getParameter("id")));
		StudentService sc=new StudentService();
		int n=sc.deleteStudent(s);
		if(n!=0) {
			RequestDispatcher d=req.getRequestDispatcher("DisplayAll.jsp");
			List<Student> list=sc.getAll();
			req.setAttribute("allStudents", list);
		    d.forward(req, resp);
			
		}
		else {
			resp.getWriter().print("invalid id..");
		}
	}

}

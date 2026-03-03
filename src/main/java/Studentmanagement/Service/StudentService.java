package Studentmanagement.Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Studentmanagement.Entity.Student;


public class StudentService {
   private static String url="jdbc:postgresql://localhost:5432/student?user=postgres&password=123";
   private static Connection con;
   static {
	   try {
		Class.forName("org.postgresql.Driver");
	    con=DriverManager.getConnection(url);
	    System.out.println(con);
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
   public int Save(Student st) {
	   
	   String sql="insert into student values(?,?,?,?)";
	   int n=0;
	  try {
		System.out.println(con);
		PreparedStatement pst= con.prepareStatement(sql);
		pst.setInt(1, st.getId());
		pst.setString(2,st.getName());
		pst.setInt(3,st.getAge());
		pst.setString(4, st.getBranch());
		n=pst.executeUpdate();
       
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return n;
	   
	   
   }
public static List<Student> getAll() {
	// TODO Auto-generated method stub
	String sql="select * from student";
	List<Student> li= new ArrayList<>();
	  try {
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet s=pst.executeQuery();
		
		while (s.next()) {
		    Student s1 = new Student();
		    s1.setId(s.getInt("id"));
		    s1.setName(s.getString("name"));
		    s1.setAge(s.getInt("age"));
		    s1.setBanch(s.getString("branch"));

		    li.add(s1);
		}
    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return li;
}
public int UpDate(Student s) {
	
	String sql="update student set name=?,age=?,branch=? where id=?";
	   int n=0;
	  try {
		System.out.println(con);
		PreparedStatement pst= con.prepareStatement(sql);
		pst.setInt(4, s.getId());
		pst.setString(1,s.getName());
		pst.setInt(2,s.getAge());
		pst.setString(3, s.getBranch());
		n=pst.executeUpdate();
    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return n;
}
public int deleteStudent(Student s) {
	
	String sql="delete from student where id=?";
	   int n=0;
	  try {
		System.out.println(con);
		PreparedStatement pst= con.prepareStatement(sql);
		pst.setInt(1, s.getId());
		n=pst.executeUpdate();
 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return n;
}
public static List<Student> sortByName() {
	// TODO Auto-generated method stub
	String sql="select * from student order by name";
	List<Student> li= new ArrayList<>();
	  try {
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet s=pst.executeQuery();
		
		while (s.next()) {
		    Student s1 = new Student();
		    s1.setId(s.getInt("id"));
		    s1.setName(s.getString("name"));
		    s1.setAge(s.getInt("age"));
		    s1.setBanch(s.getString("branch"));

		    li.add(s1);
		}
    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return li;
}
public  List<Student>  sortByAge() {
	// TODO Auto-generated method stub
	String sql="select * from student order by age";
	List<Student> li= new ArrayList<>();
	  try {
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet s=pst.executeQuery();
		
		while (s.next()) {
		    Student s1 = new Student();
		    s1.setId(s.getInt("id"));
		    s1.setName(s.getString("name"));
		    s1.setAge(s.getInt("age"));
		    s1.setBanch(s.getString("branch"));

		    li.add(s1);
		}
    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return li;
}
public boolean getData(Student s) {
	// TODO Auto-generated method stub
	String sql="select * from student where name=? ";
	boolean r=false;
	  try {
		PreparedStatement pst= con.prepareStatement(sql);
		pst.setString(1,s.getName());
		ResultSet s1=pst.executeQuery();
		if(s1.next()) {
			r=true;
		}
    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return r;
}
public ResultSet getProfile(String name) {
	// TODO Auto-generated method stub
	String sql="select * from student where name=? ";
	ResultSet s1=null;
	  try {
		PreparedStatement pst= con.prepareStatement(sql);
		pst.setString(1,name);
		s1=pst.executeQuery();
    
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return s1;
}
   
   
}

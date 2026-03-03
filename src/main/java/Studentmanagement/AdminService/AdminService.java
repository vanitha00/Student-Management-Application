package Studentmanagement.AdminService;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Studentmanagement.AdminEntity.Admin;


public class AdminService {
	private static Connection con;
	private static String url="jdbc:postgresql://localhost:5432/student";
	private static String user="postgres";
	private static String password="123";
		static {
			try {
				//1.load and register driver software
				Class.forName("org.postgresql.Driver");
				System.out.println("loaded");
				//2.establishing connection
				con=DriverManager.getConnection(url, user, password)	;
				System.out.println("Connection Established Successfully");
	       }
			catch(ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

		}	
	public int Save(Admin a) {
		
		 String sql="insert into admin values(?,?,?,?,?)";
		  int n=0;
		  try {
			System.out.println(con);
			PreparedStatement pst= con.prepareStatement(sql);
			
			pst.setString(1,a.getFname());
			pst.setString(2,a.getUname());
			pst.setString(3,a.getEmail());
			pst.setString(4,a.getPassword());
			pst.setString(5,a.getPhoneno());
			n=pst.executeUpdate();
		  }
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  return n;
	}
	public static ResultSet getData(Admin a) {
		// TODO Auto-generated method stub
		String sql="select uname,password from admin where uname=? and password=?";
		ResultSet s=null;
		  try {
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,a.getUname());
			pst.setString(2,a.getPassword());
			s=pst.executeQuery();
		
	    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  return s;
	}
	public boolean validate(String uname, String password) {
		// TODO Auto-generated method stub
		String sql="select * from admin where uname=? and password=?";
		boolean valid=false;
		try {
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,uname);
			pst.setString(2,password);
			ResultSet r=pst.executeQuery();
			if(r.next()) {
				System.out.println("data is present");
				valid=true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return valid;
	}
	
}


package Studentmanagement.Entity;

import java.sql.ResultSet;

public class Student {
	private int id;
	private String name;
	private int age;
	private String Branch;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBanch(String banch) {
		Branch = banch;
	}
	
	
	
}
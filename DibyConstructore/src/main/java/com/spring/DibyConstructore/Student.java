package com.spring.DibyConstructore;

public class Student {
   
	private int id;
	private String fname,lname,email;
	public Student(int id, String fname, String lname, String email) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
	}
	public String toString() {
		return "Student [id=" + id + ", fname=" + fname + ", lname=" + lname + ", email=" + email + "]";
	}
	
}

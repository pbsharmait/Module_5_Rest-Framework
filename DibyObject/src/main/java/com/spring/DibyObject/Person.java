package com.spring.DibyObject;

public class Person {
	  private String pname;
	  private Phone phone;
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Phone getPhone() {
		return phone;
	}
	public void setPhone(Phone phone) {
		this.phone = phone;
	}
	  public void callPhone() {
		  System.out.println("Call & Phone");
		  phone.call();
	  }

}

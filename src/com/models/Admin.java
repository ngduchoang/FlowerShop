package com.models;

public class Admin {
	private String UserName_a;
	private String Password_a;
	private String Name_a;
	public String getUserName_a() {
		return UserName_a;
	}
	public void setUserName_a(String userName_a) {
		UserName_a = userName_a;
	}
	public String getPassword_a() {
		return Password_a;
	}
	public void setPassword_a(String password_a) {
		Password_a = password_a;
	}
	public String getName_a() {
		return Name_a;
	}
	public void setName_a(String name_a) {
		Name_a = name_a;
	}
	public Admin(String userName_a, String password_a) {
		super();
		UserName_a = userName_a;
		Password_a = password_a;
	}
	public Admin(String userName_a, String password_a, String name_a) {
		super();
		UserName_a = userName_a;
		Password_a = password_a;
		Name_a = name_a;
	}
	

	
}

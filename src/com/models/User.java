package com.models;

public class User {
	private String UserName;
	private String Password;
	private String Name;
	private int ID;
	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public User(String userName, String password) {
		super();
		UserName = userName;
		Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public User(String userName, String password, String name,int ID) {
		super();
		UserName = userName;
		Password = password;
		Name = name;
		this.ID=ID;
	}
	public User(String userName, String password, String name) {
		super();
		UserName = userName;
		Password = password;
		Name = name;
		}
	public User(int ID,String userName, String name) {
		super();
		this.ID=ID;
		UserName = userName;
		Name = name;
		}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	
	
	
	
}

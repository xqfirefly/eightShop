package com.shop8.domain;

public class Admin {
	private String id;
	private String user_name;
	private String password;
	private int jursdiction;
	
	
	public Admin() {
	}
	public Admin(String user_name,String password) {
		this.user_name = user_name;
		this.password = password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getJursdiction() {
		return jursdiction;
	}
	public void setJursdiction(int jursdiction) {
		this.jursdiction = jursdiction;
	}
	
	
}

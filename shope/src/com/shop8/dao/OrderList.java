package com.shop8.dao;

public class OrderList {
	private int id;
	private String user_id;
	private String pro_id;
	private int state;
	private int address;
	
	public int getAddress() {
		return address;
	}
	public void setAddress(int address) {
		this.address = address;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPro_id() {
		return pro_id;
	}
	public void setPro_id(String pro_id) {
		this.pro_id = pro_id;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}

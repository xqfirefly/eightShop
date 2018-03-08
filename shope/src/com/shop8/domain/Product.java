package com.shop8.domain;

public class Product {
	private String id;
	private String name;
	private int class_id;
	private double price;
	private int surplus_count;
	private int saled_count;
	private String detail;
	private long cdate;
	
	
	public long getCdate() {
		return cdate;
	}
	public void setCdate(long cdate) {
		this.cdate = cdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSurplus_count() {
		return surplus_count;
	}
	public void setSurplus_count(int surplus_count) {
		this.surplus_count = surplus_count;
	}
	public int getSaled_count() {
		return saled_count;
	}
	public void setSaled_count(int saled_count) {
		this.saled_count = saled_count;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
}

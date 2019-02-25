package com.web.dao;

import java.io.Serializable;

public class reader implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String readerid;
	private String name;
	private int age;
	private String sex;
	private String phone;
	
	public String getReaderid() {
		return readerid;
	}
	public void setReaderid(String readerid) {
		this.readerid = readerid;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}

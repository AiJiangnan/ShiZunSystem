package com.mj.ajn.system.pojo;

import java.util.List;

public class Emp {

	private String id;
	private String name;
	private String pwd;
	private String gender;
	private int did;
	private String remark;
	private String dept;
	private List<Role> role;
	private List<Menu> menu;
	
	public Emp() {
		super();
	}

	public Emp(String id, String name, String pwd, String gender, int did, String remark, String dept, List<Role> role,
			List<Menu> menu) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.gender = gender;
		this.did = did;
		this.remark = remark;
		this.dept = dept;
		this.role = role;
		this.menu = menu;
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getDid() {
		return did;
	}

	public void setDid(int did) {
		this.did = did;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public List<Menu> getMenu() {
		return menu;
	}

	public void setMenu(List<Menu> menu) {
		this.menu = menu;
	}

	public List<Role> getRole() {
		return role;
	}

	public void setRole(List<Role> role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Emp [id=" + id + ", name=" + name + ", pwd=" + pwd + ", gender=" + gender + ", did=" + did + ", remark="
				+ remark + ", dept=" + dept + ", role=" + role + ", menu=" + menu + "]";
	}

	

}

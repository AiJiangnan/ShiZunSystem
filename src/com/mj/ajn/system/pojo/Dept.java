package com.mj.ajn.system.pojo;

import java.util.List;

public class Dept {

	private int id;
	private String no;
	private String name;
	private String sname;
	private String remark;
	private List<Emp> elist;
	public Dept() {
		super();
	}
	
	public List<Emp> getElist() {
		return elist;
	}

	public void setElist(List<Emp> elist) {
		this.elist = elist;
	}

	public Dept(int id, String no, String name, String sname, String remark) {
		super();
		this.id = id;
		this.no = no;
		this.name = name;
		this.sname = sname;
		this.remark = remark;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Dept [id=" + id + ", no=" + no + ", name=" + name + ", sname=" + sname + ", remark=" + remark
				+ ", elist=" + elist + "]";
	}

	

}

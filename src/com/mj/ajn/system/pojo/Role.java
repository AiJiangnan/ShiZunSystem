package com.mj.ajn.system.pojo;

public class Role {

	private String id;
	private int sid;
	private String name;
	private String remark;

	public Role() {
		super();
	}

	public Role(String id, int sid, String name, String remark) {
		super();
		this.id = id;
		this.sid = sid;
		this.name = name;
		this.remark = remark;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", sid=" + sid + ", name=" + name + ", remark=" + remark + "]";
	}

}

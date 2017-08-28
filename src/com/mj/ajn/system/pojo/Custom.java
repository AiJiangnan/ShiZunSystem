package com.mj.ajn.system.pojo;

public class Custom {

	private int id;
	private String name;
	private String url;
	private String icon;
	private String remark;

	public Custom() {
		super();
	}

	public Custom(int id, String name, String url, String icon, String remark) {
		super();
		this.id = id;
		this.name = name;
		this.url = url;
		this.icon = icon;
		this.remark = remark;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "Custom [id=" + id + ", name=" + name + ", url=" + url + ", icon=" + icon + ", remark=" + remark + "]";
	}

}

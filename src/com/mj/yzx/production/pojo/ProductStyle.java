package com.mj.yzx.production.pojo;
/**
 * 产品风格
 * 
 * @author yangzexin
 *
 */
public class ProductStyle {
	private int id;
	private String name;
	private String remark;
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
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "ProductStyle [id=" + id + ", name=" + name + ", remark=" + remark + "]";
	}
	
}

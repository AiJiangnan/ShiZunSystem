package com.mj.yzx.production.pojo;
/**
 * 产品系列
 * @author yangzexin
 *
 */
public class ProductSet {
	@Override
	public String toString() {
		return "ProductSet [id=" + id + ", name=" + name + ", remark=" + remark + "]";
	}
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
	
}

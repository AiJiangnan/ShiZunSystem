package com.mj.yzx.production.pojo;

public class Product {
	
	 private int id;//产品ID
	 private String no;//产品型号
	 private String name;//产品名称
	 private String picture;//产品图片
	 private String material;//产品材质
	 private String location;//产品产地
	 private double price;//产品单价
	 private int number;//产品数量
	 private double total;//产品金额
	 private int send;//进口家具在途
	 private String remark;//备注
	 private int cid;//产品类别
	 private int xid;//产品系别
	 private int sid;//产品风格
	 private int zid;//产品规格
	 private ProductSet productSet;//产品系列
	 private ProductSize productSize;//产品尺寸
	 private ProductStyle productStyle;//产品风格
	 private ProductClass productClass;//产品类别
	public ProductSet getProductSet() {
		return productSet;
	}
	public void setProductSet(ProductSet productSet) {
		this.productSet = productSet;
	}
	public ProductSize getProductSize() {
		return productSize;
	}
	public void setProductSize(ProductSize productSize) {
		this.productSize = productSize;
	}
	public ProductStyle getProductStyle() {
		return productStyle;
	}
	public void setProductStyle(ProductStyle productStyle) {
		this.productStyle = productStyle;
	}
	public ProductClass getProductClass() {
		return productClass;
	}
	public void setProductClass(ProductClass productClass) {
		this.productClass = productClass;
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public int getSend() {
		return send;
	}
	public void setSend(int send) {
		this.send = send;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getXid() {
		return xid;
	}
	public void setXid(int xid) {
		this.xid = xid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public int getZid() {
		return zid;
	}
	public void setZid(int zid) {
		this.zid = zid;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", no=" + no + ", name=" + name + ", picture=" + picture + ", material=" + material
				+ ", location=" + location + ", price=" + price + ", number=" + number + ", total=" + total + ", send="
				+ send + ", remark=" + remark + ", cid=" + cid + ", xid=" + xid + ", sid=" + sid + ", zid=" + zid
				+ ", productSet=" + productSet + ", productSize=" + productSize + ", productStyle=" + productStyle
				+ ", productClass=" + productClass + "]";
	}
	 
 
}

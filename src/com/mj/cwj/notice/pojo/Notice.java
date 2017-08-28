package com.mj.cwj.notice.pojo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;

public class Notice implements Serializable {

	private static final long serialVersionUID = -8331555174242157669L;
	private int id;// 公告编号
	private String name;// 公告标题
	private String img;// 公告图片
	private Date datefrom;// 公告的有效日期
	private Date dateto;// 公告的失效日期
	private String content;// 公告的内容
	private Date date;// 浏览的日期
	private int count;// 浏览的次数
	private List<Dept> dList;
	private List<Emp> list;
	private String lookName;

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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getDatefrom() {
		return datefrom;
	}

	public void setDatefrom(Date datefrom) {
		this.datefrom = datefrom;
	}

	public Date getDateto() {
		return dateto;
	}

	public void setDateto(Date dateto) {
		this.dateto = dateto;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public List<Dept> getdList() {
		return dList;
	}

	public void setdList(List<Dept> dList) {
		this.dList = dList;
	}

	public List<Emp> getList() {
		return list;
	}

	public void setList(List<Emp> list) {
		this.list = list;
	}

	public String getLookName() {
		return lookName;
	}

	public void setLookName(String lookName) {
		this.lookName = lookName;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", name=" + name + ", img=" + img + ", datefrom=" + datefrom + ", dateto=" + dateto
				+ ", content=" + content + ", date=" + date + ", count=" + count + "]";
	}

}

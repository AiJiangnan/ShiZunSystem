package com.mj.ym.mission.pojo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;





public class Task {
	
	
private int	id;
private String	name;
/*//@DateTimeFormat(pattern="yyyy/MM/dd")
*/
private Date	timefrom;
/*@DateTimeFormat(pattern="yyyy/MM/dd")*/
private Date	timeto;
private String	pid;
private int	level;
private String	content;
private String	attachment;
private  int Status;
private String pname;
private String dname;
public String getDname() {
	return dname;
}
public void setDname(String dname) {
	this.dname = dname;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
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
public Date getTimefrom() {
	return timefrom;
}
public void setTimefrom(Date timefrom) {
	this.timefrom = timefrom;
}
public Date getTimeto() {
	return timeto;
}
public void setTimeto(Date timeto) {
	this.timeto = timeto;
}

public String getPid() {
	return pid;
}
public void setPid(String pid) {
	this.pid = pid;
}
public int getLevel() {
	return level;
}
public void setLevel(int level) {
	this.level = level;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAttachment() {
	return attachment;
}
public void setAttachment(String attachment) {
	this.attachment = attachment;
}
public int getStatus() {
	return Status;
}
public void setStatus(int status) {
	Status = status;
}
@Override
public String toString() {
	return "Task [id=" + id + ", name=" + name + ", timefrom=" + timefrom + ", timeto=" + timeto + ", pid=" + pid
			+ ", level=" + level + ", content=" + content + ", attachment=" + attachment + ", Status=" + Status
			+ ", pname=" + pname + ", dname=" + dname + "]";
}


}

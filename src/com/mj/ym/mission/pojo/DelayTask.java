package com.mj.ym.mission.pojo;

import java.sql.Date;

import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.pojo.Role;

public class DelayTask {
private int	id;
private int	tid;
private String	reson;
private int	status;
private Date	timereply;
private Date	timedelay;
private String	message;
private String rid;
private Emp emp;
private Role role;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getTid() {
	return tid;
}
public void setTid(int tid) {
	this.tid = tid;
}
public String getReson() {
	return reson;
}
public void setReson(String reson) {
	this.reson = reson;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}
public Date getTimereply() {
	return timereply;
}
public void setTimereply(Date timereply) {
	this.timereply = timereply;
}
public Date getTimedelay() {
	return timedelay;
}
public void setTimedelay(Date timedelay) {
	this.timedelay = timedelay;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public String getRid() {
	return rid;
}
public void setRid(String rid) {
	this.rid = rid;
}
public Emp getEmp() {
	return emp;
}
public void setEmp(Emp emp) {
	this.emp = emp;
}
public Role getRole() {
	return role;
}
public void setRole(Role role) {
	this.role = role;
}
@Override
public String toString() {
	return "DelayTask [id=" + id + ", tid=" + tid + ", reson=" + reson + ", status=" + status + ", timereply="
			+ timereply + ", timedelay=" + timedelay + ", message=" + message + ", rid=" + rid + ", emp=" + emp
			+ ", role=" + role + "]";
}


}

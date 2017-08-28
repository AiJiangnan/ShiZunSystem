package com.mj.ajn.system.pojo;

import java.util.List;

public class Menu {

	private int id;
	private String name;
	private int pid;
	private int sort;
	private int display;
	private List<Menu> submenu;

	public Menu() {
		super();
	}

	public Menu(int id, String name, int pid, int sort, int display, List<Menu> submenu) {
		super();
		this.id = id;
		this.name = name;
		this.pid = pid;
		this.sort = sort;
		this.display = display;
		this.submenu = submenu;
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

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public int getSort() {
		return sort;
	}

	public void setSort(int sort) {
		this.sort = sort;
	}

	public int getDisplay() {
		return display;
	}

	public void setDisplay(int display) {
		this.display = display;
	}

	public List<Menu> getSubmenu() {
		return submenu;
	}

	public void setSubmenu(List<Menu> submenu) {
		this.submenu = submenu;
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", name=" + name + ", pid=" + pid + ", sort=" + sort + ", display=" + display
				+ ", submenu=" + submenu + "]";
	}

}

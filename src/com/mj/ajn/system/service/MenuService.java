package com.mj.ajn.system.service;

import java.util.List;

import com.mj.ajn.system.pojo.Menu;

public interface MenuService {

	/**
	 * 递归查询所有菜单
	 * 
	 * @return
	 */
	List<Menu> selAll();

	/**
	 * 递归查询所有角色的菜单
	 * 
	 * @return
	 */
	List<Menu> selByRid(String rid);

}

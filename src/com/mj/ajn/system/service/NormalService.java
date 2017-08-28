package com.mj.ajn.system.service;

import java.util.List;

import com.mj.ajn.system.pojo.Menu;

public interface NormalService {

	/**
	 * 主页显示的所有主菜单
	 * 
	 * @return
	 */
	List<Menu> selAll();

	/**
	 * 对菜单进行排序
	 * 
	 * @param sorts
	 * @return
	 */
	int updSort(List<Integer> sorts);

	/**
	 * 设置菜单显示
	 * 
	 * @param displays
	 * @return
	 */
	int updDisplay(List<Integer> ids);

}

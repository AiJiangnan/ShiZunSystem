package com.mj.ajn.system.service;

import java.util.List;

import com.mj.ajn.system.pojo.Custom;
import com.mj.commen.pojo.PageInfo;

public interface CustomService {

	/**
	 * 查询所有自定义功能
	 * 
	 * @return
	 */
	List<Custom> selAll();

	/**
	 * 查询所有自定义功能（分页、模糊）
	 * 
	 * @param pageStart
	 * @param pageNumber
	 * @return
	 */
	PageInfo selPageInfo(int pageSize, int pageNumber, String name);

	/**
	 * 插入自定义功能信息
	 * 
	 * @param custom
	 * @return
	 */
	int insCustom(Custom custom);

	/**
	 * 删除ID集合的自定义功能
	 * 
	 * @param ids
	 * @return
	 */
	int delCustomByIds(List<Integer> ids);

	/**
	 * 通过ID显示自定义功能信息
	 * 
	 * @param id
	 * @return
	 */
	Custom selById(int id);

	/**
	 * 通过ID编辑自定义功能信息
	 * 
	 * @param custom
	 * @return
	 */
	int updCustom(Custom custom);

}

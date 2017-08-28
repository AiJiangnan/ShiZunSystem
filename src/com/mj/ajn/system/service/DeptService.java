package com.mj.ajn.system.service;

import java.util.List;

import com.mj.ajn.system.pojo.Dept;
import com.mj.commen.pojo.PageInfo;

public interface DeptService {

	/**
	 * 查询所有部门
	 * 
	 * @return
	 */
	List<Dept> selAll();

	/**
	 * 查询所有部门（分页、模糊）
	 * 
	 * @param pageStart
	 * @param pageNumber
	 * @return
	 */
	PageInfo selPageInfo(int pageSize, int pageNumber, String name);

	/**
	 * 插入部门信息
	 * 
	 * @param dept
	 * @return
	 */
	int insDept(Dept dept);

	/**
	 * 删除ID集合的部门
	 * 
	 * @param ids
	 * @return
	 */
	int delDeptByIds(List<Integer> ids);

	/**
	 * 通过ID显示部门信息
	 * 
	 * @param id
	 * @return
	 */
	Dept selById(int id);

	/**
	 * 通过ID编辑部门信息
	 * 
	 * @param dept
	 * @return
	 */
	int updDept(Dept dept);

}

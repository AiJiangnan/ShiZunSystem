package com.mj.ajn.system.service;

import java.util.List;

import com.mj.ajn.system.pojo.Emp;
import com.mj.commen.pojo.PageInfo;

public interface EmpService {

	/**
	 * 查询所有员工
	 * 
	 * @return
	 */
	List<Emp> selAll();

	/**
	 * 通过ID查询员工信息
	 * 
	 * @param id
	 * @return
	 */
	Emp selById(String id);

	/**
	 * 查询所有员工（分页、模糊）
	 * 
	 * @param pageStart
	 * @param pageNumber
	 * @return
	 */
	PageInfo selPageInfo(int pageSize, int pageNumber, String name);

	/**
	 * 通过ID集合删除员工
	 * 
	 * @param ids
	 * @return
	 */
	int delEmpByIds(List<String> ids);

	/**
	 * 员工登陆
	 * 
	 * @param emp
	 * @return
	 */
	Emp selByEmp(Emp emp);

}

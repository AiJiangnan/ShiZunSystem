package com.mj.ajn.system.service;

import java.util.List;

import com.mj.ajn.system.pojo.Role;
import com.mj.commen.pojo.PageInfo;

public interface RoleService {

	/**
	 * 查询所有角色
	 * 
	 * @return
	 */
	List<Role> selAll();

	/**
	 * 查询所有角色（分页、模糊）
	 * 
	 * @param pageStart
	 * @param pageNumber
	 * @return
	 */
	PageInfo selPageInfo(int pageSize, int pageNumber, String name);

	/**
	 * 插入角色信息
	 * 
	 * @param role
	 * @return
	 */
	int insRole(Role role, List<Integer> mids);

	/**
	 * 通过Role的ID更新菜单
	 * 
	 * @param rid
	 * @param mids
	 * @return
	 */
	int insRoleMenuByRid(String rid, List<Integer> mids);

	/**
	 * 通过Emp的ID更新角色
	 * 
	 * @param eid
	 * @param rids
	 * @return
	 */
	int insRoleEmpByEid(String eid, List<String> rids);

	/**
	 * 删除ID集合的角色
	 * 
	 * @param ids
	 * @return
	 */
	int delRoleByIds(List<String> ids);

	/**
	 * 通过ID显示角色信息
	 * 
	 * @param id
	 * @return
	 */
	Role selById(String id);

	/**
	 * 通过ID编辑角色信息
	 * 
	 * @param role
	 * @return
	 */
	int updRole(Role role);

	/**
	 * 查询菜单ID
	 * 
	 * @param rid
	 * @return
	 */
	List<Integer> selMenuByRid(String rid);

}

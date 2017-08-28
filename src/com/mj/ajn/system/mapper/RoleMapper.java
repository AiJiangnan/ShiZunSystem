package com.mj.ajn.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.ajn.system.pojo.Role;

public interface RoleMapper {

	/**
	 * 查询所有角色
	 * 
	 * @return
	 */
	@Select("select * from role")
	List<Role> selAll();

	/**
	 * 查询角色总数（模糊查询）
	 * 
	 * @return
	 */
	@Select("select count(*) from role where name like #{0}")
	long selCount(String name);

	/**
	 * 分页查询
	 * 
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	@Select("select * from role where name like #{2} order by sid limit #{0},#{1}")
	List<Role> selPageAll(int pageStart, int pageSize, String name);

	/**
	 * 插入角色信息
	 * 
	 * @param role
	 * @return
	 */
	@Insert("insert into role values(#{id},#{sid},#{name},#{remark})")
	int insRole(Role role);

	/**
	 * 插入角色-菜单关联信息
	 * 
	 * @param rid
	 * @param mid
	 * @return
	 */
	@Insert("insert into role_menu values(default,#{0},#{1})")
	int insRoleMenu(String rid, int mid);

	/**
	 * 插入角色-员工关联信息
	 * 
	 * @param eid
	 * @param rid
	 * @return
	 */
	@Insert("insert into role_emp values(default,#{0},#{1})")
	int insRoleEmp(String eid, String rid);

	/**
	 * 通过角色ID查询角色的菜单ID
	 * 
	 * @param rid
	 * @return
	 */
	@Select("select mid from role_menu where rid=#{0}")
	List<Integer> selMenuByRid(String rid);

	/**
	 * 根据ID删除角色
	 * 
	 * @param id
	 * @return
	 */
	@Delete("delete from role where id=#{0}")
	int delById(String id);

	/**
	 * 通过Role的ID删除Role和Menu关联
	 * 
	 * @param Rid
	 * @return
	 */
	@Delete("delete from role_menu where rid=#{0}")
	Integer delByRoleMenuRid(String rid);

	/**
	 * 通过Emp的ID删除Role和Emp关联
	 * 
	 * @param eid
	 * @return
	 */
	@Select("delete from role_emp where eid=#{0}")
	Integer delByRoleEmpEid(String eid);

	/**
	 * 通过Role的ID删除Role和Emp关联
	 * 
	 * @param eid
	 * @return
	 */
	@Select("delete from role_emp where rid=#{0}")
	Integer delByRoleEmpRid(String rid);

	/**
	 * 根据ID查询角色
	 * 
	 * @param id
	 * @return
	 */
	@Select("select * from role where id=#{0}")
	Role selById(String id);

	/**
	 * 根据ID修改角色
	 * 
	 * @param id
	 * @return
	 */
	@Update("update role set sid=#{sid},name=#{name},remark=#{remark} where id=#{id}")
	int updById(Role role);

}

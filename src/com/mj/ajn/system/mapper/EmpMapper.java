package com.mj.ajn.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.pojo.Menu;
import com.mj.ajn.system.pojo.Role;

public interface EmpMapper {

	/**
	 * 查询所有员工
	 * 
	 * @return
	 */
	List<Emp> selAll();

	/**
	 * 通过ID查询员工的信息
	 * 
	 * @param id
	 * @return
	 */
	Emp selById(@Param("id") String id);

	/**
	 * 查询员工总数（模糊查询）
	 * 
	 * @return
	 */
	@Select("select count(*) from emp where name like #{0}")
	long selCount(String name);

	/**
	 * 分页查询
	 * 
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	List<Emp> selPageAll(@Param("pageStart") int pageStart, @Param("pageSize") int pageSize,
			@Param("name") String name);

	/**
	 * 通过员工ID查询员工的角色
	 * 
	 * @param id
	 * @return
	 */
	@Select("select role.* from role,role_emp where role_emp.rid=role.id and role_emp.eid=#{0}")
	List<Role> selRoleById(String id);

	/**
	 * 通过员工ID删除员工
	 * 
	 * @param id
	 * @return
	 */
	@Delete("delete from emp where id=#{0}")
	int delById(String id);

	/**
	 * 通过员工名和密码登陆
	 * 
	 * @param emp
	 * @return
	 */
	@Select("select * from emp where name=#{name} and pwd=#{pwd}")
	Emp selByEmp(Emp emp);

	/**
	 * 通过员工ID查询菜单
	 * 
	 * @param id
	 * @return
	 */
	List<Menu> selMenuByEid(@Param("eid") String eid, @Param("pid") int pid);
}

package com.mj.ajn.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.ajn.system.pojo.Dept;

public interface DeptMapper {

	/**
	 * 查询所有部门
	 * 
	 * @return
	 */
	@Select("select * from dept")
	List<Dept> selAll();

	/**
	 * 查询部门总数（模糊查询）
	 * 
	 * @return
	 */
	@Select("select count(*) from dept where name like #{0}")
	long selCount(String name);

	/**
	 * 分页查询
	 * 
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	@Select("select * from dept where name like #{2} limit #{0},#{1}")
	List<Dept> selPageAll(int pageStart, int pageSize, String name);

	/**
	 * 插入部门信息
	 * 
	 * @param dept
	 * @return
	 */
	@Insert("insert into dept values(default,#{no},#{name},#{sname},#{remark})")
	int insDept(Dept dept);

	/**
	 * 根据ID删除部门
	 * 
	 * @param id
	 * @return
	 */
	@Delete("delete from dept where id=#{0}")
	int delById(int id);

	/**
	 * 根据ID查询部门
	 * 
	 * @param id
	 * @return
	 */
	@Select("select * from dept where id=#{0}")
	Dept selById(int id);

	/**
	 * 根据ID修改部门
	 * 
	 * @param id
	 * @return
	 */
	@Update("update dept set no=#{no},name=#{name},sname=#{sname},remark=#{remark} where id=#{id}")
	int updById(Dept dept);

}

package com.mj.ajn.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.ajn.system.pojo.Custom;

public interface CustomMapper {

	/**
	 * 查询所有自定义功能
	 * 
	 * @return
	 */
	@Select("select * from custom")
	List<Custom> selAll();

	/**
	 * 查询自定义功能总数（模糊查询）
	 * 
	 * @return
	 */
	@Select("select count(*) from custom where name like #{0}")
	long selCount(String name);

	/**
	 * 分页查询
	 * 
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	@Select("select * from custom where name like #{2} limit #{0},#{1}")
	List<Custom> selPageAll(int pageStart, int pageSize, String name);

	/**
	 * 插入自定义功能信息
	 * 
	 * @param custom
	 * @return
	 */
	@Insert("insert into custom values(default,#{name},#{url},#{icon},#{remark})")
	int insCustom(Custom custom);

	/**
	 * 根据ID删除自定义功能
	 * 
	 * @param id
	 * @return
	 */
	@Delete("delete from custom where id=#{0}")
	int delById(int id);

	/**
	 * 根据ID查询自定义功能
	 * 
	 * @param id
	 * @return
	 */
	@Select("select * from custom where id=#{0}")
	Custom selById(int id);

	/**
	 * 根据ID修改自定义功能
	 * 
	 * @param id
	 * @return
	 */
	@Update("update custom set name=#{name},url=#{url},icon=#{icon},remark=#{remark} where id=#{id}")
	int updById(Custom custom);

}

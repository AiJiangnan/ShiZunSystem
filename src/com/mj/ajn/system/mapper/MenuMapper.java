package com.mj.ajn.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.mj.ajn.system.pojo.Menu;

public interface MenuMapper {

	/**
	 * 通过父级ID查询菜单（可递归查）
	 * 
	 * @param pid
	 * @return
	 */
	List<Menu> selByPid(@Param("pid") int pid);

	/**
	 * 通过角色ID查询角色拥有的菜单
	 * 
	 * @param rid
	 * @param pid
	 * @return
	 */
	List<Menu> selByRidPid(@Param("rid") String rid, @Param("pid") int pid);

}

package com.mj.ajn.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.ajn.system.pojo.Menu;

public interface NormalMapper {

	/**
	 * 查询所有的常规菜单
	 * 
	 * @return
	 */
	@Select("select * from menu where pid=0 and id!=2")
	List<Menu> selAll();

	/**
	 * 通过ID更改菜单的排序
	 * 
	 * @param id
	 * @param sort
	 * @return
	 */
	@Update("update menu set sort=#{1} where pid=0 and id=#{0}")
	Integer updSort(int id, int sort);

	/**
	 * 所有菜单不显示
	 * 
	 * @return
	 */
	@Update("update menu set display=0 where pid=0")
	Integer updDisplayNull();

	/**
	 * 通过ID更改显示
	 * 
	 * @param id
	 * @return
	 */
	@Update("update menu set display=1 where id=#{0}")
	Integer updDisplay(int id);

}

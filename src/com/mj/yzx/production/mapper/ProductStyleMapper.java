package com.mj.yzx.production.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.yzx.production.pojo.ProductSet;
import com.mj.yzx.production.pojo.ProductStyle;


public interface ProductStyleMapper {
	/**
	 * 查询所有产品风格
	 * @param pageStart
	 * @param pageSize
	 * @param name
	 * @return
	 */
	@Select ("select * from productstyle where name like #{2} limit #{0},#{1} ")
	List<ProductStyle> selByPage(int pageStart,int pageSize,String name);
	
	@Select ("select * from productstyle")
	List<ProductStyle>  selStyleAll();
	
	/**
	 * 根据ID查询产品风格
	 * @param id
	 * @return
	 */
	@Select("select * from productstyle where  id=#{0}")
	ProductStyle selByStyleId(int id);
	
	/**
	 * 查询产品风格总数
	 * @return
	 */
	@Select("select count(*) from  productstyle where name like #{0}")
	int selCount(String name);
	
	/**
	 * 添加产品风格
	 * @param productStyle
	 * @return
	 */
	@Insert("insert into productstyle values(default,#{name},#{remark})")
	int insProductStyle(ProductStyle productStyle);
	
	/**
	 * 删除产品风格
	 * @param id
	 * @return
	 */
	@Delete("delete from productstyle where id=#{0}")
	int delProductStyleById(int id);
	
	/**
	 * 修改产品风格名称与备注
	 * @param productStyle
	 * @return
	 */
	@Update("update productstyle set name=#{name},remark=#{remark} where id=#{id} ")
	int updProductStyleById(ProductStyle productStyle);
}

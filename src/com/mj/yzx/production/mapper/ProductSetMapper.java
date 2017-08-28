package com.mj.yzx.production.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.yzx.production.pojo.ProductSet;

public interface ProductSetMapper {
	/**
	 * 查询产品系列
	 * @param pageSize
	 * @param pageNumber
	 * @return
	 */
	@Select ("select * from productset where name like #{2} limit #{0},#{1} ")
	List<ProductSet> selByPage(int pageStart,int pageSize,String name);
	
	
	@Select ("select * from productset")
	List<ProductSet>  selSetAll();
	
	/**
	 * 根据产品类型id查询
	 * @param id
	 * @return
	 */
	@Select("select * from productset where  id=#{0}")
	ProductSet selBySetId(int id);
	
	/**
	 * 查询产品系列总数
	 * @return
	 */
	@Select("select count(*) from  productset where name like #{0}")
	int selCount(String name);
	
	/**
	 * 添加产品系列
	 * @param productSet
	 * @return
	 */
	@Insert("insert into productset values(default,#{name},#{remark})")
	int insProductSet(ProductSet productSet);
	
	/**
	 * 删除产品系列
	 * @param id
	 * @return
	 */
	@Delete("delete from productset where id=#{0}")
	int delProductSetById(int id);
	
	/**
	 * 修改产品类型名称与备注
	 * @param productSet
	 * @return
	 */
	@Update("update productset set name=#{name},remark=#{remark} where id=#{id} ")
	int updProductSetById(ProductSet productSet);
}

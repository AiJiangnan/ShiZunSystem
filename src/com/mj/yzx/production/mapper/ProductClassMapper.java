package com.mj.yzx.production.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.mj.yzx.production.pojo.ProductClass;
import com.mj.yzx.production.pojo.ProductSet;



public interface ProductClassMapper {
	
	@Select ("select * from productclass")
	List<ProductClass> selClassAll();
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	@Select("select * from productclass where  id=#{0}")
	ProductClass selByClassId(int id);

}

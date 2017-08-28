package com.mj.yzx.production.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.yzx.production.pojo.ProductSet;
import com.mj.yzx.production.pojo.ProductSize;

public interface ProductSizeMapper {
	
	/**
	 * 查询所有产品尺寸
	 * @param pageStart
	 * @param pageSize
	 * @param name
	 * @return
	 */
	@Select ("select * from productsize where name like #{2} limit #{0},#{1} ")
	List<ProductSize> selByPage(int pageStart,int pageSize,String name);
	
	@Select ("select * from productsize")
	List<ProductSize>  selSizeAll();
	/**
	 * 根据ID查询产品尺寸
	 * @param id
	 * @return
	 */
	@Select("select * from productsize where  id=#{0}")
	ProductSize selBySizeId(int id);
	
	/**
	 * 查询产品尺寸总数
	 * @return
	 */
	@Select("select count(*) from  productsize where name like #{0}")
	int selCount(String name);
	
	/**
	 * 添加产品尺寸
	 * @param productSize
	 * @return
	 */
	@Insert("insert into productsize values(default,#{name},#{remark})")
	int insProductSize(ProductSize productSize);
	
	/**
	 * 删除产品尺寸
	 * @param id
	 * @return
	 */
	@Delete("delete from productsize where id=#{0}")
	int delProductSizeById(int id);
	
	/**
	 * 修改产品尺寸名称与备注
	 * @param productSize
	 * @return
	 */
	@Update("update productsize set name=#{name},remark=#{remark} where id=#{id} ")
	int updProductSizeById(ProductSize productSize);
	

}

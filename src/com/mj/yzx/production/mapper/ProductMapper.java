package com.mj.yzx.production.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.yzx.production.pojo.Product;
import com.mj.yzx.production.pojo.ProductSet;

public interface ProductMapper {
	/**
	 * 查询产品
	 * @param pageSize
	 * @param pageNumber
	 * @return
	 */
	List<Product> selByPage(int pageStart,int pageSize,String name);
	
	/**
	 * 查询产品总数
	 * @return
	 */
	@Select("select count(*) from  product where name like #{0}")
	int selCount(String name);
	
	/**
	 * 根据ID删除产品
	 * @param id
	 * @return
	 */
	@Delete("delete from product where id=#{0}")
	int delProductById(int id);
	
	/**
	 * 根据ID查询产品
	 * @param id
	 * @return
	 */
	Product selProductById(int id);
	
	/**
	 * 查询图片
	 * @param pageStart
	 * @param pageSize
	 * @param name
	 * @return
	 */
	@Select("select picture from product where name like #{2} limit #{0},#{1}")
	List<String> selByPicture(int pageStart,int pageSize,String name);
	
	/**
	 * 添加产品
	 * @param product
	 * @return 
	 */
	@Insert("insert into product values(default,#{no},#{name},#{picture},#{material},#{location},#{price},#{number},#{total},#{send},#{remark},#{cid},#{xid},#{sid},#{zid})")
	int insProduct(Product product);
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * 修改产品
	 * @param productSet
	 * @return
	 */
	/*@Update("update productset set name=#{name},remark=#{remark} where id=#{id} ")
	int updProductSetById(ProductSet productSet);*/
}


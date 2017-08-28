package com.mj.yzx.production.service;

import java.util.List;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.Product;

public interface ProductService {
	/**
	 * 查询产品（分页，模糊）
	 * @param pageSize
	 * @param pageNumber
	 * @param name
	 * @return
	 */
	PageInfo selPage(int pageSize,int pageNumber,String name);
	
	/**
	 * 删除产品
	 * @param id
	 * @return
	 */
	int delProductById(List<Integer> ids);
	
	/**
	 * 根据产品ID查询产品
	 * @param id
	 * @return
	 */
	Product selProductById(int id);
	/**
	 * 查询图片
	 * @param pageSize
	 * @param pageNumber
	 * @param name
	 * @return
	 */
	PageInfo selByPicture(int pageSize,int pageNumber,String name);
	/**
	 * 增加产品
	 * @param product
	 * @return
	 */
	int insProduct(Product product);
}

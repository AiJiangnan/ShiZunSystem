package com.mj.yzx.production.service;


import java.util.List;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.ProductSet;

public interface ProductSetService {
	/**
	 *查看产品系列（分页,模糊）
	 * @return
	 */
	PageInfo selPage1(int pageSize,int pageNumber,String name);
	
	/**
	 * 查询所有产品系列
	 * @return
	 */
	List<ProductSet>  selSetAll();
	/**
	 * 根据产品系列id查询
	 * @param id
	 * @return
	 */
	ProductSet selSetById(int id);
	/**
	 * 添加产品系列
	 * @return
	 */
	int insSet(ProductSet productSet);
	/**
	 * 删除产品系列
	 * @param id
	 * @return
	 */
	int delSet(List<Integer> ids);
	
	/**
	 * 修改产品系列
	 * @param prodectSet
	 * @return
	 */
	int updSet(ProductSet prodectSet);
}

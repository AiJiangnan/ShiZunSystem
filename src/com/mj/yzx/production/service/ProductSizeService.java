package com.mj.yzx.production.service;

import java.util.List;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.ProductSet;
import com.mj.yzx.production.pojo.ProductSize;
import com.mj.yzx.production.pojo.ProductStyle;

public interface ProductSizeService {
	
	/**
	 *查看产品尺寸（分页,模糊）
	 * @return
	 */
	PageInfo selPage3(int pageSize,int pageNumber,String name);
	
	/**
	 * 查询所有产品尺寸
	 * @return
	 */
	List<ProductSize>  selSizeAll();
	/**
	 * 根据产品尺寸id查询
	 * @param id
	 * @return
	 */
	ProductSize selSizeById(int id);
	/**
	 * 添加产品尺寸
	 * @return
	 */
	int insSize(ProductSize productSize);
	/**
	 * 删除产品尺寸
	 * @param id
	 * @return
	 */
	int delSize(List<Integer> ids);
	
	/**
	 * 修改产品尺寸
	 * @param prodectSize
	 * @return
	 */
	int updSize(ProductSize productSize);
}

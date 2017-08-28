package com.mj.yzx.production.service;

import java.util.List;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.ProductSet;
import com.mj.yzx.production.pojo.ProductStyle;

public interface ProductStyleService {
	
	/**
	 *查看产品风格（分页,模糊）
	 * @return
	 */
	PageInfo selPage2(int pageSize,int pageNumber,String name);
	
	/**
	 * 查询所有产品风格
	 * @return
	 */
	List<ProductStyle>  selStyleAll();
	/**
	 * 根据产品风格id查询
	 * @param id
	 * @return
	 */
	ProductStyle selStyleById(int id);
	/**
	 * 添加产品风格
	 * @return
	 */
	int insStyle(ProductStyle productStyle);
	/**
	 * 删除产品风格
	 * @param id
	 * @return
	 */
	int delStyle(List<Integer> ids);
	
	/**
	 * 修改产品风格
	 * @param prodectStyle
	 * @return
	 */
	int updStyle(ProductStyle productStyle);
}

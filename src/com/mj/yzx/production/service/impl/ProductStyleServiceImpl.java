package com.mj.yzx.production.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.mapper.ProductStyleMapper;

import com.mj.yzx.production.pojo.ProductStyle;
import com.mj.yzx.production.service.ProductStyleService;


@Service
public class ProductStyleServiceImpl implements ProductStyleService{
	@Resource
    private ProductStyleMapper productStyleMapper;

	@Override
	public PageInfo selPage2(int pageSize, int pageNumber, String name) {
		int pageStart=pageSize*(pageNumber-1);
		List<ProductStyle> list = productStyleMapper.selByPage(pageStart, pageSize, "%"+name+"%");
		long count=productStyleMapper.selCount("%"+name+"%");
		return new PageInfo(pageSize,pageNumber,(count%pageSize==0?count/pageSize:count/pageSize+1),list);
	}

	@Override
	public ProductStyle selStyleById(int id) {
		return productStyleMapper.selByStyleId(id);
	}

	@Override
	public int insStyle(ProductStyle productStyle) {
		return productStyleMapper.insProductStyle(productStyle);
	}

	@Override
	public int delStyle(List<Integer> ids) {
		int count=0;
		for (Integer id : ids) {
			count+=productStyleMapper.delProductStyleById(id);
			
		}
		return count;
	}

	@Override
	public int updStyle(ProductStyle productStyle) {
		return productStyleMapper.updProductStyleById(productStyle);
	}

	@Override
	public List<ProductStyle> selStyleAll() {
		return productStyleMapper.selStyleAll();
	} 
	
}

package com.mj.yzx.production.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.mapper.ProductSizeMapper;
import com.mj.yzx.production.pojo.ProductSize;
import com.mj.yzx.production.service.ProductSizeService;

@Service
public class ProductSizeServiceImpl implements ProductSizeService{
	@Resource
	private ProductSizeMapper productSizeMapper;

	@Override
	public PageInfo selPage3(int pageSize, int pageNumber, String name) {
		int pageStart=pageSize*(pageNumber-1);
		List<ProductSize> list = productSizeMapper.selByPage(pageStart, pageSize, "%"+name+"%");
		long count=productSizeMapper.selCount("%"+name+"%");
		return new PageInfo(pageSize,pageNumber,(count%pageSize==0?count/pageSize:count/pageSize+1),list);
	}

	@Override
	public ProductSize selSizeById(int id) {
		return productSizeMapper.selBySizeId(id);
	}

	@Override
	public int insSize(ProductSize productSize) {
		return productSizeMapper.insProductSize(productSize);
	}

	@Override
	public int delSize(List<Integer> ids) {
		int count=0;
		for (Integer id : ids) {
			count+=productSizeMapper.delProductSizeById(id);
			
		}
		return count;
	}

	@Override
	public int updSize(ProductSize productSize) {
		return productSizeMapper.updProductSizeById(productSize);
	}

	@Override
	public List<ProductSize> selSizeAll() {
		return productSizeMapper.selSizeAll();
	}
}

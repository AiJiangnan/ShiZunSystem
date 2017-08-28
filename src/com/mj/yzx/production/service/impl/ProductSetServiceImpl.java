package com.mj.yzx.production.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.mapper.ProductSetMapper;
import com.mj.yzx.production.pojo.ProductSet;
import com.mj.yzx.production.service.ProductSetService;

@Service
public class ProductSetServiceImpl implements ProductSetService{
	@Resource
	private ProductSetMapper productSetMapper; 
	@Override
	public PageInfo selPage1(int pageSize,int pageNumber,String name) {

		int pageStart = pageSize * (pageNumber-1);
		List<ProductSet> list = productSetMapper.selByPage(pageStart,pageSize,"%"+name+"%");

		long count = productSetMapper.selCount("%"+name+"%");
		PageInfo pi=new PageInfo();
		pi.setList(list);
		pi.setPageNumber(pageNumber);
		pi.setPageSize(pageSize);
		pi.setTotal(count%pageSize==0?count/pageSize:count/pageSize+1);

		return pi;
	}
	@Override
	public int insSet(ProductSet productSet) {

		return productSetMapper.insProductSet(productSet);
	}
	@Override
	public int delSet(List<Integer> ids) {
		int count=0;
		for (Integer id : ids) {
			  count += productSetMapper.delProductSetById(id);
		}
		return count;
	}
	@Override
	public int updSet(ProductSet productSet) {
		return productSetMapper.updProductSetById(productSet);
	}
	@Override
	public ProductSet selSetById(int id) {
		return productSetMapper.selBySetId(id);
	}
	@Override
	public List<ProductSet> selSetAll() {
		return productSetMapper.selSetAll();
	}


}

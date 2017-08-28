package com.mj.yzx.production.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.mapper.ProductMapper;
import com.mj.yzx.production.pojo.Product;
import com.mj.yzx.production.service.ProductService;
@Service
public class ProductServiceImpl  implements ProductService{
	@Resource
	private ProductMapper productMapper;
	@Override
	public PageInfo selPage(int pageSize, int pageNumber, String name) {
		int pageStart=pageSize*(pageNumber-1);
		List<Product> list = productMapper.selByPage(pageStart, pageSize,"%"+name+"%");
		long count = productMapper.selCount("%"+name+"%");
		return new PageInfo(pageSize,pageNumber,(count%pageSize==0?count/pageSize:count/pageSize+1),list);
	}
	@Override
	public int delProductById(List<Integer> ids) {
		int count=0;
		for (Integer id : ids) {
			count += productMapper.delProductById(id);
		}
		return count;
	}
	@Override
	public Product selProductById(int id) {
		return productMapper.selProductById(id);
	}
	@Override
	public PageInfo selByPicture(int pageSize, int pageNumber, String name) {
		int pageStart=pageSize*(pageNumber-1);
		 List<String> list = productMapper.selByPicture(pageStart, pageSize, "%"+name+"%");
		long count = productMapper.selCount("%"+name+"%");
		return new PageInfo(pageSize,pageNumber,(count%pageSize==0?count/pageSize:count/pageSize+1),list);
	}
	@Override
	public int insProduct(Product product) {
		return productMapper.insProduct(product);
	}
	
	

}

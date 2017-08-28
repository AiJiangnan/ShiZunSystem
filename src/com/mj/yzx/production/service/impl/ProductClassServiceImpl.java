package com.mj.yzx.production.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.yzx.production.mapper.ProductClassMapper;
import com.mj.yzx.production.pojo.ProductClass;
import com.mj.yzx.production.service.ProductClassService;

@Service
public class ProductClassServiceImpl implements ProductClassService{
	@Resource
    private ProductClassMapper productClassMapper; 
	@Override
	public List<ProductClass> selClassAll() {
		return productClassMapper.selClassAll();
	}

}

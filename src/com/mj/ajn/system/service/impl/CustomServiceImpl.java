package com.mj.ajn.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.CustomMapper;
import com.mj.ajn.system.pojo.Custom;
import com.mj.ajn.system.service.CustomService;
import com.mj.commen.pojo.PageInfo;

@Service
public class CustomServiceImpl implements CustomService {

	@Resource
	private CustomMapper customMapper;

	@Override
	public List<Custom> selAll() {
		return customMapper.selAll();
	}

	@Override
	public PageInfo selPageInfo(int pageSize, int pageNumber, String name) {
		long count = customMapper.selCount("%" + name + "%");
		int pageStart = pageSize * (pageNumber - 1);
		List<Custom> list = customMapper.selPageAll(pageStart, pageSize, "%" + name + "%");
		return new PageInfo(pageSize, pageNumber, count % pageSize == 0 ? count / pageSize : count / pageSize + 1,
				list);
	}

	@Override
	public int insCustom(Custom custom) {
		return customMapper.insCustom(custom);
	}

	@Override
	public int delCustomByIds(List<Integer> ids) {
		int count = 0;
		for (Integer id : ids) {
			count += customMapper.delById(id);
		}
		return count;
	}

	@Override
	public Custom selById(int id) {
		return customMapper.selById(id);
	}

	@Override
	public int updCustom(Custom custom) {
		return customMapper.updById(custom);
	}

}

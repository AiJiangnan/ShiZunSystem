package com.mj.ajn.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.NormalMapper;
import com.mj.ajn.system.pojo.Menu;
import com.mj.ajn.system.service.NormalService;

@Service
public class NormalServiceImpl implements NormalService {

	@Resource
	private NormalMapper normalMapper;

	@Override
	public List<Menu> selAll() {
		return normalMapper.selAll();
	}

	@Override
	public int updSort(List<Integer> sorts) {
		int index = 0;
		List<Menu> list = normalMapper.selAll();
		for (int i = 0; i < list.size(); i++) {
			normalMapper.updSort(list.get(i).getId(), sorts.get(i));
		}
		return index;
	}

	@Override
	public int updDisplay(List<Integer> ids) {
		normalMapper.updDisplayNull();
		for (Integer id : ids) {
			normalMapper.updDisplay(id);
		}
		return 0;
	}

}

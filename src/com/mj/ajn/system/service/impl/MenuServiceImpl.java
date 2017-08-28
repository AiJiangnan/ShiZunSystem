package com.mj.ajn.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.MenuMapper;
import com.mj.ajn.system.pojo.Menu;
import com.mj.ajn.system.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {

	@Resource
	private MenuMapper menuMapper;

	@Override
	public List<Menu> selAll() {
		return menuMapper.selByPid(0);
	}

	@Override
	public List<Menu> selByRid(String rid) {
		return menuMapper.selByRidPid(rid, 0);
	}

}

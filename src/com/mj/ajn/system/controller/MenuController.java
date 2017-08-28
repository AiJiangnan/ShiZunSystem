package com.mj.ajn.system.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.ajn.system.pojo.Menu;
import com.mj.ajn.system.service.MenuService;

@Controller
public class MenuController {

	@Resource
	private MenuService menuServiceImpl;

	@RequestMapping("/showMenu")
	@ResponseBody
	public List<Menu> showMenu() {
		return menuServiceImpl.selAll();
	}

	@RequestMapping("/showMenuByRid")
	@ResponseBody
	public List<Menu> showMenuByRid(String rid) {
		return menuServiceImpl.selByRid(rid);
	}

}

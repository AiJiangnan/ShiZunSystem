package com.mj.ajn.system.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.ajn.system.pojo.Menu;
import com.mj.ajn.system.service.NormalService;

@Controller
public class NormalController {

	@Resource
	private NormalService normalServiceImpl;

	@RequestMapping("showNormal")
	@ResponseBody
	public List<Menu> showNormal() {
		return normalServiceImpl.selAll();
	}

	@RequestMapping("updNormal")
	public String updNormal(@RequestParam("sort") List<Integer> sort, @RequestParam("display") List<Integer> display) {
		normalServiceImpl.updSort(sort);
		normalServiceImpl.updDisplay(display);
		return "redirect:xtsz/NormalManage";
	}

}

package com.mj.yzx.production.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.yzx.production.service.ProductClassService;
@Controller
public class ProductClassController {
	@Resource
	private ProductClassService productClassServiceImpl;
	
	@RequestMapping("/classall")
	@ResponseBody
	public List showClassAll(){
		return productClassServiceImpl.selClassAll();
	} 
}

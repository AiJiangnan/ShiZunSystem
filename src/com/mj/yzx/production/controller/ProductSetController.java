package com.mj.yzx.production.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.ProductSet;
import com.mj.yzx.production.service.ProductSetService;
@Controller
public class ProductSetController {
	@Resource
	private ProductSetService productSetServiceImpl;
	
	/**
	 * 查询产品类别(分页)
	 * @param pageSize
	 * @param pageNumber
	 * @param req
	 * @return
	 */
	@RequestMapping("/page1")
	@ResponseBody
	public PageInfo showPage1(int pageSize,int pageNumber,String name){
		return productSetServiceImpl.selPage1(pageSize, pageNumber,name);
	}
	
	
	@RequestMapping("/setall")
	@ResponseBody
	public List showSetAll(){
		return productSetServiceImpl.selSetAll();
	}
	
	/**
	 * 根据ID查询产品系列
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/setbyid")
	public String showSetById(int id,HttpSession session){
		 ProductSet productSet = productSetServiceImpl.selSetById(id);
		 session.setAttribute("productSet",productSet);
		 return "redirect:product/EditProductLine";
	}
	@RequestMapping("/showset")
	public String showSet(int id,HttpSession session){
		 ProductSet productSet = productSetServiceImpl.selSetById(id);
		 session.setAttribute("productSet",productSet);
		 return "redirect:product/ProductLineDetail";
	}
	/**
	 * 添加产品类别
	 * @param req
	 * @return
	 */
	@RequestMapping("/addset")
	public String addSet(ProductSet productset){
		int addSet = productSetServiceImpl.insSet(productset);
		return "redirect:product/LineManage";
	}
	
	/**
	 * 删除产品类别
	 */
	@RequestMapping("/delset")
	public String delSet(@RequestParam("id") List<Integer> ids){
		  int set = productSetServiceImpl.delSet(ids);
		return "redirect:product/LineManage";
	}
	
	/**
	 * 修改产品系列
	 * @param productset
	 * @return
	 */
	@RequestMapping("/updset")
	public String updSet(ProductSet productSet){
		int updSet = productSetServiceImpl.updSet(productSet);
		
		return "redirect:product/LineManage";
	}
}

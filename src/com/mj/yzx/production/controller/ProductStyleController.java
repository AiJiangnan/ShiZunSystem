package com.mj.yzx.production.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.ProductStyle;
import com.mj.yzx.production.service.ProductStyleService;

@Controller
public class ProductStyleController {
	@Resource
	private ProductStyleService productStyleServiceImpl;
	

	/**
	 * 查询产品风格
	 * @param pageSize
	 * @param pageNumber
	 * @param req
	 * @return
	 */
	@RequestMapping("/page2")
	@ResponseBody
	public PageInfo showPage2(int pageSize,int pageNumber,String name){
		return productStyleServiceImpl.selPage2(pageSize, pageNumber,name);
	}
	
	@RequestMapping("/styleall")
	@ResponseBody
	public List showStyleAll(){
		return productStyleServiceImpl.selStyleAll();
	}
	/**
	 * 根据ID查询产品风格
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/stylebyid")
	public String showStyleById(int id,HttpSession session){
		 ProductStyle productStyle = productStyleServiceImpl.selStyleById(id);
		 session.setAttribute("productStyle",productStyle);
		 return "redirect:product/EditProductStyle";
	}
	@RequestMapping("/showstyle")
	public String showStyle(int id,HttpSession session){
		 ProductStyle productStyle = productStyleServiceImpl.selStyleById(id);
		 session.setAttribute("productStyle",productStyle);
		 return "redirect:product/ProductStyleDetail";
	}
	/**
	 * 添加产品风格
	 * @param req
	 * @return
	 */
	@RequestMapping("/addstyle")
	public String addStyle(ProductStyle productStyle){
		int addStyle = productStyleServiceImpl.insStyle(productStyle);
		return "redirect:product/StyleView";
	}
	
	/**
	 * 删除产品风格
	 */
	@RequestMapping("/delstyle")
	public String delStyle(@RequestParam("id") List<Integer> ids){
		  int style = productStyleServiceImpl.delStyle(ids);
		return "redirect:product/StyleView";
	}
	
	/**
	 * 修改产品系列
	 * @param productstyle
	 * @return
	 */
	@RequestMapping("/updstyle")
	public String updStyle(ProductStyle productStyle){
		int updStyle = productStyleServiceImpl.updStyle(productStyle);
		
		return "redirect:product/StyleView";
	}
}

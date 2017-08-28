package com.mj.yzx.production.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.ProductSize;
import com.mj.yzx.production.service.ProductSizeService;


@Controller
public class ProductSizeController {
	@Resource
	private ProductSizeService productSizeServiceImpl;
	/**
	 * 查询产品尺寸
	 * @param pageSize
	 * @param pageNumber
	 * @param req
	 * @return
	 */
	@RequestMapping("/page3")
	@ResponseBody
	public PageInfo showPage3(int pageSize,int pageNumber,String name){
		
		return productSizeServiceImpl.selPage3(pageSize, pageNumber,name);
	}
	

	@RequestMapping("/sizeall")
	@ResponseBody
	public List showSizeAll(){
		return productSizeServiceImpl.selSizeAll();
	}
	/**
	 * 根据ID查询产品尺寸
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/sizebyid")
	public String showSizeById(int id,HttpSession session){
		 ProductSize productSize = productSizeServiceImpl.selSizeById(id);
		 session.setAttribute("productSize",productSize);
		 return "redirect:product/EditProductSpecifi";
	}
	@RequestMapping("/showsize")
	public String showSize(int id,HttpSession session){
		 ProductSize productSize = productSizeServiceImpl.selSizeById(id);
		 session.setAttribute("productSize",productSize);
		 return "redirect:product/ProductSeecifiDetail";
	}
	/**
	 * 添加产品尺寸
	 * @param req
	 * @return
	 */
	@RequestMapping("/addsize")
	public String addSize(ProductSize productSize){
		int addSize = productSizeServiceImpl.insSize(productSize);
		return "redirect:product/SpecificationView";
	}
	
	/**
	 * 删除产品尺寸
	 */
	@RequestMapping("/delsize")
	public String delStyle(@RequestParam("id") List<Integer> ids){
		  int size = productSizeServiceImpl.delSize(ids);
		return "redirect:product/SpecificationView";//
	}
	
	/**
	 * 修改产品系列
	 * @param productSize
	 * @return
	 */
	@RequestMapping("/updsize")
	public String updSize(ProductSize productSize){
		int updSize = productSizeServiceImpl.updSize(productSize);
		
		return "redirect:product/SpecificationView";
	}
}

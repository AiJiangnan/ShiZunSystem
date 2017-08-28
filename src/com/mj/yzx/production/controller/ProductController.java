package com.mj.yzx.production.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mj.commen.pojo.PageInfo;
import com.mj.yzx.production.pojo.Product;
import com.mj.yzx.production.service.ProductService;

@Controller
public class ProductController {
	@Resource
	private ProductService productServiceImpl;
	/**
	 * 显示产品
	 * @param pageSize
	 * @param pageNumber
	 * @param name
	 * @return
	 */
	@RequestMapping("/product")
	@ResponseBody
	public PageInfo showProduct(int pageSize,int pageNumber,String name){
		return productServiceImpl.selPage(pageSize, pageNumber, name);	
	}
	
	/**
	 * 删除产品
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delproduct")
	public String delProduct( @RequestParam("id")List<Integer> ids){
		  productServiceImpl.delProductById(ids);
		return "redirect:product/productManage";
		
	}
	/**
	 * 根据ID显示产品
	 * @param id
	 * @param session
	 * @return
	 */
	@RequestMapping("/productbyid")
	public String showById(int id, HttpSession session){
		Product product = productServiceImpl.selProductById(id);
		session.setAttribute("product", product);
		return "redirect:product/AddProductView";
	}
	
	/**
	 * 查询图片
	 * @param pageSize
	 * @param pageNumber
	 * @param name
	 * @return
	 */
	@RequestMapping("/picture")
	@ResponseBody
	public PageInfo showPicture(int pageSize,int pageNumber,String name){
		return productServiceImpl.selByPicture(pageSize, pageNumber, name);	
	}
	
	/**
	 * 增加产品
	 * @param product
	 * @return
	 */
	@RequestMapping("/addproduct")
	public String addProduct(Product product){
		productServiceImpl.insProduct(product);
		return "redirect:product/productManage";
	}
	
	/**
	 * 上传图片
	 * @param file
	 * @return
	 */
	@RequestMapping("/upload")
	public String upload(MultipartFile  file,HttpServletRequest req,	Product product ){
		String picture = file.getOriginalFilename();
		
		String suffix = picture.substring(picture.lastIndexOf("."));
		String uuid = UUID.randomUUID().toString();
		String path = req.getServletContext().getRealPath("images");
		System.out.println(path);
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path,uuid+suffix));
		} catch (IOException e) {
			e.printStackTrace();
		}
		req.getSession().setAttribute("filename", uuid+suffix);
		return "redirect:product/ProductImage";
	}
}

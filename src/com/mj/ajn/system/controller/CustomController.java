package com.mj.ajn.system.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mj.ajn.system.pojo.Custom;
import com.mj.ajn.system.service.CustomService;
import com.mj.commen.pojo.PageInfo;

@Controller
public class CustomController {

	@Resource
	private CustomService customServiceImpl;

	@RequestMapping("/showCustom")
	@ResponseBody
	public PageInfo showCustom(int pageSize, int pageNumber, String name, HttpServletResponse resp) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return customServiceImpl.selPageInfo(pageSize, pageNumber, name1);
	}

	@RequestMapping("/showCustomAjax")
	@ResponseBody
	public List<Custom> showCustomAjax() {
		return customServiceImpl.selAll();
	}

	@RequestMapping("/addCustom")
	public String addCustom(Custom custom, @RequestParam("img") MultipartFile icon, HttpSession s) {
		String fileName = icon.getOriginalFilename();
		String suffix = fileName.substring(fileName.lastIndexOf("."));
		String path = s.getServletContext().getRealPath("images");
		String uuid = UUID.randomUUID().toString();
		custom.setIcon(uuid + suffix);
		try {
			FileUtils.copyInputStreamToFile(icon.getInputStream(), new File(path, uuid + suffix));
		} catch (IOException e) {
			e.printStackTrace();
		}
		int index = customServiceImpl.insCustom(custom);
		if (index > 0) {
			return "redirect:xtsz/CustomManage";
		}
		return "redirect:xtsz/AddCustom";
	}

	@RequestMapping("/delCustom")
	public String delCustom(@RequestParam("del") List<Integer> ids) {
		customServiceImpl.delCustomByIds(ids);
		return "redirect:xtsz/Branch";
	}

	@RequestMapping("showCustomById")
	public String showById(int id, HttpSession s) {
		s.setAttribute("custom", customServiceImpl.selById(id));
		return "redirect:xtsz/CustomDetail";
	}

	@RequestMapping("editCustomById")
	public String editById(int id, HttpSession s) {
		s.setAttribute("custom", customServiceImpl.selById(id));
		return "redirect:xtsz/EditCustom";
	}

	@RequestMapping("editCustom")
	public String editCustom(Custom custom, @RequestParam("img") MultipartFile icon, HttpSession s) {
		Custom ocustom = (Custom) s.getAttribute("custom");
		if (icon.getOriginalFilename() == "")
			custom.setIcon(ocustom.getIcon());
		else {
			String fileName = icon.getOriginalFilename();
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			String path = s.getServletContext().getRealPath("images");
			String uuid = UUID.randomUUID().toString();
			custom.setIcon(uuid + suffix);
			new File(path, ocustom.getIcon()).delete();
			try {
				FileUtils.copyInputStreamToFile(icon.getInputStream(), new File(path, uuid + suffix));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		customServiceImpl.updCustom(custom);
		return "redirect:xtsz/CustomManage";
	}

}

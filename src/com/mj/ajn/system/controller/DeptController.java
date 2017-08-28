package com.mj.ajn.system.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.service.DeptService;
import com.mj.commen.pojo.PageInfo;

@Controller
public class DeptController {

	@Resource
	private DeptService deptServiceImpl;

	@RequestMapping("/showDept")
	@ResponseBody
	public PageInfo showDept(int pageSize, int pageNumber, String name, HttpServletResponse resp) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return deptServiceImpl.selPageInfo(pageSize, pageNumber, name1);
	}

	@RequestMapping("/addDept")
	public String addDept(Dept dept) {
		int index = deptServiceImpl.insDept(dept);
		if (index > 0) {
			return "redirect:xtsz/Branch";
		}
		return "redirect:xtsz/AddBranch";
	}

	@RequestMapping("/delDept")
	public String delDept(@RequestParam("del") List<Integer> ids) {
		deptServiceImpl.delDeptByIds(ids);
		return "redirect:xtsz/Branch";
	}

	@RequestMapping("showDeptById")
	public String showById(int id, HttpSession s) {
		s.setAttribute("dept", deptServiceImpl.selById(id));
		return "redirect:xtsz/BranchDetail";
	}

	@RequestMapping("editDeptById")
	public String editById(int id, HttpSession s) {
		s.setAttribute("dept", deptServiceImpl.selById(id));
		return "redirect:xtsz/EditBranch";
	}

	@RequestMapping("editDept")
	public String editDept(Dept dept) {
		deptServiceImpl.updDept(dept);
		return "redirect:xtsz/Branch";
	}

}

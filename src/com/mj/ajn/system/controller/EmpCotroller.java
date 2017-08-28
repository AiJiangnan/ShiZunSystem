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

import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.pojo.Role;
import com.mj.ajn.system.service.EmpService;
import com.mj.ajn.system.service.RoleService;
import com.mj.commen.pojo.PageInfo;

@Controller
public class EmpCotroller {

	@Resource
	private EmpService empServiceImpl;
	@Resource
	private RoleService roleServiceImpl;

	@RequestMapping("/showEmp")
	@ResponseBody
	public PageInfo showEmp(int pageSize, int pageNumber, String name, HttpServletResponse resp) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return empServiceImpl.selPageInfo(pageSize, pageNumber, name1);
	}

	@RequestMapping("/delEmp")
	public String delDept(@RequestParam("del") List<String> ids) {
		empServiceImpl.delEmpByIds(ids);
		return "redirect:xtsz/Power";
	}

	@RequestMapping("/showEmpRole")
	@ResponseBody
	public List<Role> showEmpRole() {
		return roleServiceImpl.selAll();
	}

	@RequestMapping("/showEmpAjax")
	@ResponseBody
	public Emp showEmp(String id) {
		return empServiceImpl.selById(id);
	}

	@RequestMapping("showEmpById")
	public String showEmpById(String id, HttpSession s) {
		s.setAttribute("emp", empServiceImpl.selById(id));
		return "redirect:xtsz/AllotPower";
	}

	@RequestMapping("updEmpRole")
	public String updEmpRole(String eid, @RequestParam("role") List<String> rids) {
		roleServiceImpl.insRoleEmpByEid(eid, rids);
		return "redirect:xtsz/Power";
	}

	@RequestMapping("login")
	public String login(Emp emp, HttpSession s) {
		Emp emp2 = empServiceImpl.selByEmp(emp);
		if (emp2 == null)
			return "redirect:/login.jsp";
		s.setAttribute("emp", emp2);
		return "redirect:index-x";
	}

}

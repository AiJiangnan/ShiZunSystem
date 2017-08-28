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

import com.mj.ajn.system.pojo.Role;
import com.mj.ajn.system.service.RoleService;
import com.mj.commen.pojo.PageInfo;

@Controller
public class RoleController {

	@Resource
	private RoleService roleServiceImpl;

	@RequestMapping("/showRole")
	@ResponseBody
	public PageInfo showRole(int pageSize, int pageNumber, String name, HttpServletResponse resp) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return roleServiceImpl.selPageInfo(pageSize, pageNumber, name1);
	}

	@RequestMapping("/addRole")
	public String addRole(Role role, @RequestParam("menu") List<Integer> mids) {
		int index = roleServiceImpl.insRole(role, mids);
		if (index > 0)
			return "redirect:xtsz/Role";
		return "redirect:xtsz/AddRole";
	}

	@RequestMapping("/delRole")
	public String delRole(@RequestParam("del") List<String> ids) {
		roleServiceImpl.delRoleByIds(ids);
		return "redirect:xtsz/Role";
	}

	@RequestMapping("showRoleById")
	public String showById(String id, HttpSession s) {
		s.setAttribute("role", roleServiceImpl.selById(id));
		return "redirect:xtsz/RoleDetail";
	}

	@RequestMapping("editRoleById")
	public String editById(String id, HttpSession s) {
		s.setAttribute("role", roleServiceImpl.selById(id));
		return "redirect:xtsz/EditRole";
	}

	@RequestMapping("editRoleMenu")
	@ResponseBody
	public List<Integer> editRoleMenu(String id) {
		return roleServiceImpl.selMenuByRid(id);
	}

	@RequestMapping("editRole")
	public String editRole(Role role, @RequestParam("menu") List<Integer> mids) {
		roleServiceImpl.updRole(role);
		roleServiceImpl.insRoleMenuByRid(role.getId(), mids);
		return "redirect:xtsz/Role";
	}

}

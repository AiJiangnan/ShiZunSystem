package com.mj.ajn.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.EmpMapper;
import com.mj.ajn.system.mapper.RoleMapper;
import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.pojo.Menu;
import com.mj.ajn.system.service.EmpService;
import com.mj.commen.pojo.PageInfo;

@Service
public class EmpServiceImpl implements EmpService {

	@Resource
	private EmpMapper empMapper;
	@Resource
	private RoleMapper roleMapper;

	@Override
	public List<Emp> selAll() {
		return empMapper.selAll();
	}

	@Override
	public Emp selByEmp(Emp emp) {
		Emp emp2 = empMapper.selByEmp(emp);
		if (emp2 != null) {
			List<Menu> menu = empMapper.selMenuByEid(emp2.getId(), 0);
			emp2.setMenu(menu);
		}
		return emp2;
	}

	@Override
	public PageInfo selPageInfo(int pageSize, int pageNumber, String name) {
		long count = empMapper.selCount("%" + name + "%");
		int pageStart = pageSize * (pageNumber - 1);
		List<Emp> list = empMapper.selPageAll(pageStart, pageSize, "%" + name + "%");
		return new PageInfo(pageSize, pageNumber, count % pageSize == 0 ? count / pageSize : count / pageSize + 1,
				list);
	}

	@Override
	public int delEmpByIds(List<String> ids) {
		int count = 0;
		for (String id : ids) {
			roleMapper.delByRoleEmpEid(id);
			count += empMapper.delById(id);
		}
		return count;
	}

	@Override
	public Emp selById(String id) {
		return empMapper.selById(id);
	}

}

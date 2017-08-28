package com.mj.ajn.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.DeptMapper;
import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.service.DeptService;
import com.mj.commen.pojo.PageInfo;

@Service
public class DeptServiceImpl implements DeptService {

	@Resource
	private DeptMapper deptMapper;

	@Override
	public List<Dept> selAll() {
		return deptMapper.selAll();
	}

	@Override
	public PageInfo selPageInfo(int pageSize, int pageNumber, String name) {
		long count = deptMapper.selCount("%" + name + "%");
		int pageStart = pageSize * (pageNumber - 1);
		List<Dept> list = deptMapper.selPageAll(pageStart, pageSize, "%" + name + "%");
		return new PageInfo(pageSize, pageNumber, count % pageSize == 0 ? count / pageSize : count / pageSize + 1,
				list);
	}

	@Override
	public int insDept(Dept dept) {
		return deptMapper.insDept(dept);
	}

	@Override
	public int delDeptByIds(List<Integer> ids) {
		int count = 0;
		for (Integer id : ids) {
			count += deptMapper.delById(id);
		}
		return count;
	}

	@Override
	public Dept selById(int id) {
		return deptMapper.selById(id);
	}

	@Override
	public int updDept(Dept dept) {
		return deptMapper.updById(dept);
	}

}

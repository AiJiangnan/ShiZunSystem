package com.mj.ajn.system.service.impl;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.RoleMapper;
import com.mj.ajn.system.pojo.Role;
import com.mj.ajn.system.service.RoleService;
import com.mj.commen.pojo.PageInfo;

@Service
public class RoleServiceImpl implements RoleService {

	@Resource
	private RoleMapper roleMapper;

	@Override
	public List<Role> selAll() {
		return roleMapper.selAll();
	}

	@Override
	public PageInfo selPageInfo(int pageSize, int pageNumber, String name) {
		long count = roleMapper.selCount("%" + name + "%");
		int pageStart = pageSize * (pageNumber - 1);
		List<Role> list = roleMapper.selPageAll(pageStart, pageSize, "%" + name + "%");
		return new PageInfo(pageSize, pageNumber, count % pageSize == 0 ? count / pageSize : count / pageSize + 1,
				list);
	}

	@Override
	public int delRoleByIds(List<String> ids) {
		int count = 0;
		for (String id : ids) {
			roleMapper.delByRoleMenuRid(id);
			roleMapper.delByRoleEmpRid(id);
			count += roleMapper.delById(id);
		}
		return count;
	}

	@Override
	public int insRole(Role role, List<Integer> mids) {
		String rid = UUID.randomUUID().toString();
		role.setId(rid);
		int count = roleMapper.insRole(role);
		for (Integer mid : mids) {
			roleMapper.insRoleMenu(rid, mid);
		}
		return count;
	}

	@Override
	public Role selById(String id) {
		return roleMapper.selById(id);
	}

	@Override
	public List<Integer> selMenuByRid(String rid) {
		return roleMapper.selMenuByRid(rid);
	}

	@Override
	public int updRole(Role role) {
		return roleMapper.updById(role);
	}

	@Override
	public int insRoleMenuByRid(String rid, List<Integer> mids) {
		int index = 0;
		roleMapper.delByRoleMenuRid(rid);
		for (Integer mid : mids) {
			index += roleMapper.insRoleMenu(rid, mid);
		}
		return index;
	}

	@Override
	public int insRoleEmpByEid(String eid, List<String> rids) {
		int index = 0;
		roleMapper.delByRoleEmpEid(eid);
		for (String rid : rids) {
			index += roleMapper.insRoleEmp(eid, rid);
		}
		return index;
	}

}

package com.mj.ym.mission.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.service.DeptService;
import com.mj.commen.pojo.PageInfo;
import com.mj.ym.mission.mapper.TaskMapper;
import com.mj.ym.mission.pojo.DelayTask;
import com.mj.ym.mission.pojo.Task;
import com.mj.ym.mission.service.TaskService;
@Service
public class TaskServiceImpl implements TaskService{
	@Resource
	private TaskMapper taskMapper;
	@Resource
	private DeptService deptServiceImpl;
	
	public List<Dept> showDeptByAjax() {
		// TODO Auto-generated method stub
		return deptServiceImpl.selAll();
	}
	@Override
	public List<Emp> showEmp(int did) {
		// TODO Auto-generated method stub
		return taskMapper.selEmp(did);
	}
	@Override
	public int insTask(Task task) {
		// TODO Auto-generated method stub
		return	taskMapper.insTask(task);

	}
	@Override
	public PageInfo showTask(int pageNumber, int pageSize, String tname) {
		// TODO Auto-generated method stub
		PageInfo pi=new PageInfo();
		pi.setPageNumber(pageNumber);
		pi.setPageSize(pageSize);
		pi.setList(taskMapper.selByPage((pageNumber-1)*pageSize, pageSize,tname));
		long count =taskMapper.selCountByPageInfo(tname);
		pi.setTotal(count%pageSize==0?count/pageSize:count/pageSize+1);
		return pi;
	}
	@Override
	public long selCountByPageInfo(String tname) {
		// TODO Auto-generated method stub
		return taskMapper.selCountByPageInfo(tname);
	}
	@Override
	public Task showTaskById(int id) {
		// TODO Auto-generated method stub
		
		return taskMapper.selTaskById(id);
	}
	@Override
	public int updateTask(Task task) {
		// TODO Auto-generated method stub
		return taskMapper.updateTask(task);
	}
	@Override
	public int updateTaskStatus(Task task) {
		// TODO Auto-generated method stub
		return taskMapper.updateStatus(task);
	}
	@Override
	public int delTask(int id) {
		// TODO Auto-generated method stub
		return taskMapper.delTask(id);
	}
	@Override
	public List<Task> selTaskByPid(int pid) {
		// TODO Auto-generated method stub
		return taskMapper.selTaskByPid(pid);
	}
	@Override
	public int insDelayTask(DelayTask task) {
		// TODO Auto-generated method stub
		return taskMapper.insDelayTask(task);
	}
	@Override
	public PageInfo showDelayPage(int pageNumber,int pageSize,String tname) {
		// TODO Auto-generated method stub
		
		int pageStart=(pageNumber-1)*pageSize;
		long count = taskMapper.selCountByDelay(tname);
		List<DelayTask> delayTask = taskMapper.selDelayTask(pageStart, pageSize, tname);
		PageInfo p= new PageInfo(pageSize, pageNumber, count, delayTask);
		return p;
	}
	@Override
	public Task selTaskByID(int id) {
		// TODO Auto-generated method stub
		return taskMapper.selTaskByID(id);
	}
	@Override
	public DelayTask selDelayByID(int id) {
		// TODO Auto-generated method stub
		return taskMapper.selDelayByID(id);
	}
	@Override
	public int updateDel(DelayTask del) {
		// TODO Auto-generated method stub
		return taskMapper.updateDel(del);
	}
	@Override
	public int updateTaskTime(Task task) {
		// TODO Auto-generated method stub
		return taskMapper.updateTaskTime(task);
	}
	
}

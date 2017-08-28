package com.mj.ym.mission.service;

import java.util.List;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.commen.pojo.PageInfo;
import com.mj.ym.mission.pojo.DelayTask;
import com.mj.ym.mission.pojo.Task;



public interface TaskService {
	/**
	 * 显示部门
	 * @return
	 */
	List<Dept> showDeptByAjax();
	
	/**
	 * 显示所属部门的成员
	 * @return
	 */
	List<Emp> showEmp(int did);
	/**
	 * 插入任务数据
	 * @param task
	 * @return
	 */
	int insTask(Task task);
	/**
	 * 显示主页面任务列表
	 * @param pageNumber
	 * @param pageSize
	 * @param tname
	 * @return
	 */
	PageInfo showTask(int pageNumber,int pageSize,String tname);
	/**
	 * 查询总共页数
	 * @param tname
	 * @return
	 */
	long selCountByPageInfo (String tname);
	
	/**
	 * 通过id找到相应任务
	 * @param id
	 * @return
	 */
	Task showTaskById(int id);
	/**
	 * 更改任务
	 * @param task
	 * @return
	 */
	int  updateTask(Task task);
	
	/**
	 * 更改任务状态
	 * @param task
	 * @return
	 */
	int updateTaskStatus(Task task);
	/**
	 * 通过id删除任务
	 * @param id
	 * @return
	 */
	
	int delTask(int id);
	/**
	 * 通过员工id查找当前员工任务
	 * @param pid
	 * @return
	 */
	List<Task> selTaskByPid(int pid);
	/**
	 * 增加延期任务
	 * @param task
	 * @return
	 */
	int insDelayTask(DelayTask task);
	/**
	 * 遍历延期任务
	 * @return
	 */
	PageInfo showDelayPage(int pageNumber,int pageSize,String tname);
	
	
	Task selTaskByID(int id);
	DelayTask selDelayByID(int id);
	
	int  updateDel(DelayTask del);
	
	 int updateTaskTime(Task task);
}

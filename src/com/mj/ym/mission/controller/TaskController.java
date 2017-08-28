package com.mj.ym.mission.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.commen.pojo.PageInfo;
import com.mj.ym.mission.pojo.DelayTask;
import com.mj.ym.mission.pojo.Task;
import com.mj.ym.mission.service.TaskService;


@Controller
public class TaskController {
	@Resource
	private TaskService taskServiceImpl;
	@RequestMapping("showDeptByAjax")
	@ResponseBody
	public List<Dept> showDeptByAjax(){
		List<Dept> dept = taskServiceImpl.showDeptByAjax();
		
		return dept;
	}
	@RequestMapping("showEmpByAjax")
	@ResponseBody
	public List<Emp> showEmp(int did){
		return taskServiceImpl.showEmp(did);
	}
	/**
	 * 新增任务并返回。
	 * @param task
	 * @param file
	 * @param req
	 * @return
	 */
	@RequestMapping("insTask")
	public String insTask(Task task,MultipartFile file,HttpServletRequest req){
		String fileName=UUID.randomUUID().toString()+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
		String path=req.getServletContext().getRealPath("file")+"/"+fileName;
	
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		task.setAttachment(fileName);
		int index=taskServiceImpl.insTask(task);
		if(index>0){
			return "redirect:/task/TaskAllot";
		}else{
			return "redirect:/task/AddTask";
		}
	}
	@RequestMapping("showTaskPage")
	@ResponseBody
	public PageInfo showTaskPage(int pageNumber,int pageSize,String tname){
	
		return taskServiceImpl.showTask(pageNumber, pageSize, tname);
	}
	/**
	 * 通过id查找任务，并返回界面
	 * @param id
	 * @param req
	 * @return
	 */
	@RequestMapping("updTask")
	public String showTaskById(int id,HttpServletRequest req){
		Task task=taskServiceImpl.showTaskById(id);
		req.getSession().setAttribute("task", task);
		return  "redirect:/task/UpdTask" ;
	} 
	/**
	 * 通过id找到相应任务
	 * @param id
	 * @param req
	 * @return
	 */
	@RequestMapping("selTask")
	public String selTaskById(int id,HttpServletRequest req){
		Task task=taskServiceImpl.showTaskById(id);
		req.getSession().setAttribute("task", task);
		return  "redirect:/task/TaskDetail";
	} 
	/**
	 * 更改任务
	 * @param task
	 * @param file
	 * @param req
	 * @param hs
	 * @return
	 */
	@RequestMapping("updTaskById")
	public String upTask(Task task,MultipartFile file,HttpServletRequest req,HttpSession hs){
		Task t =(Task) hs.getAttribute("task");
		if(file.getOriginalFilename()!=""){
		new File(req.getServletContext().getRealPath("file")+"/"+t.getAttachment()).delete();
		String fileName=UUID.randomUUID().toString()+file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
		String path=req.getServletContext().getRealPath("file")+"/"+fileName;
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	
		task.setAttachment(fileName);
		}else{
			task.setAttachment(t.getAttachment());
		}
		
		int index=taskServiceImpl.updateTask(task);
		if(index>0){
			return "redirect:/task/TaskAllot";
		}else{
			return "redirect:/task/AddTask";
		}
	}
	/**
	 * 更改状态
	 * @param task
	 * @return
	 */
	@RequestMapping("updStatus")
	public String updStatus(Task task){
		taskServiceImpl.updateTaskStatus(task);
		return "redirect:/task/TaskAllot";
	}
	/**
	 * 删除任务
	 * @param del
	 * @return
	 */
	@RequestMapping("delTask")
	public String showDelTask(int[] del){
		for (int i = 0; i < del.length; i++) {
			taskServiceImpl.delTask(del[i]);
		}
		return "redirect:/task/TaskAllot";
	}
	/**
	 * 默认使用id为1的员工，需要修改。 
	 * @param hs
	 * @return
	 */
	@RequestMapping("addDelayTask")
	public String addDelayTask(HttpSession hs){
		List<Task> selTaskByPid = taskServiceImpl.selTaskByPid(1);
		hs.setAttribute("delaytask", selTaskByPid);
		
		return "redirect:/task/AdddelayTask";
	}
	/**
	 * 插入拖延任务表
	 * @param task
	 * @return
	 */
	@RequestMapping("insDelayTask")
	public String insDelayTask(DelayTask task){
		taskServiceImpl.insDelayTask(task);
		return "redirect:/task/DelayTaskApply";
	}
	@RequestMapping("showDelayPage")
	@ResponseBody
	public PageInfo selDelayTask(int pageNumber,int pageSize,String tname){
		
		 return taskServiceImpl.showDelayPage(pageNumber,pageSize, tname);
	}
	@RequestMapping("resp")
	public String selTaskDelById(int id,HttpSession hs){
		DelayTask delay = taskServiceImpl.selDelayByID(id);
		Task task = taskServiceImpl.selTaskByID(id);
	
		hs.setAttribute("delay", delay);
		hs.setAttribute("task", task);
		return "redirect:/task/ReplayTask";
	}
	@RequestMapping("updDel")
	public String updDel(DelayTask delayTask){
		delayTask.setRid("1");
		System.out.println(delayTask);
		if(taskServiceImpl.updateDel(delayTask)>0){
			
			Task task = taskServiceImpl.selTaskByID(delayTask.getId());
		
			task.setTimeto(delayTask.getTimedelay());
			taskServiceImpl.updateTaskTime(task);
		return "redirect:/task/DelayTask";
		}else{
			return "redirect:/task/replayTask";
		}
	}
}

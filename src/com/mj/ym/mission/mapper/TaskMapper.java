package com.mj.ym.mission.mapper;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.pojo.Role;
import com.mj.ym.mission.pojo.DelayTask;
import com.mj.ym.mission.pojo.Task;


public interface TaskMapper {
	/**
	 * 查询部门
	 * @return
	 */
	@Select("select * from dept")
	List<Dept> seldept();
/**
 * 通过部门id查询员工
 * @param did
 * @return
 */
	@Select("SELECT * from emp where did=#{0}")
	List<Emp> selEmp(int did);
/**
 * 插入任务
 * @param task
 * @return
 */

	@Insert("insert into task values (default,#{name},#{timefrom},#{timeto},#{pid},#{level},#{content},#{attachment},#{status})")
	int insTask(Task task);
	/**
	 * 通过页数查找任务
	 * @param pageStart
	 * @param pageSize
	 * @param tname
	 * @return
	 */
	 List<Task> selByPage(int pageStart,int pageSize,@Param("tname")String tname);
	 /**
	  * 查找页数
	  * @param tname
	  * @return
	  */
	 long selCountByPageInfo(@Param("tname")String tname);
	 /**
	  * 通过id查找当前任务
	  * @param id
	  * @return
	  */
	 @Select("SELECT t.*,e.`name` pname,d.`name`  dname  from task t,dept d,emp e WHERE t.pid=e.id AND e.did=d.id AND t.id=#{0} ")
	 Task selTaskById(int id);
	 /**
	  * 更改任务
	  * @param task
	  * @return
	  */
	 @Update("update task set name=#{name},timefrom=#{timefrom},timeto=#{timeto},pid=#{pid},level=#{level},content=#{content},attachment=#{attachment} where id=#{id}")
	int updateTask(Task task);
	 
	 
	 
	 @Update("update task set status=#{status} where id=#{id}")
	 int updateStatus(Task task);
	 
	 
	 @Delete("DELETE FROM task WHERE id=#{0}")
	 int delTask(int id);
	 
	 
	 @Select("select t.*,e.`name` pname FROM task t,emp e WHERE t.pid=e.id and e.id=#{0}")
	 List<Task>  selTaskByPid(int pid);
	 @Insert("insert into delay values (default,#{tid},#{reson},#{status},#{timereply},#{timedelay},#{message},#{rid})")
	 int  insDelayTask(DelayTask delayTask);
	 /**
	  * 通过任务id查找员工id
	  * @param tid
	  * @return
	  */
	 @Select("SELECT e.* FROM task t,emp e WHERE t.pid=e.id AND t.id=#{0}")
	 Emp selEmpByTid(int tid);
	 @Select("select  r.* FROM role r,role_emp re WHERE r.id=re.rid AND re.eid=#{0}")
	 Role selRoleByRid(int rid);
	 long selCountByDelay(@Param("tname")String tname);
	 
	 List<DelayTask> selDelayTask(int pageStart,int pageSize,@Param("tname")String tname);
	 @Select("SELECT t.*,e.name pname from task t,delay d,emp e WHERE t.id=d.tid and e.id=t.pid  AND d.id=#{0}")
	 Task selTaskByID(int id);
	 @Select("Select * from delay where id=#{0}")
	 DelayTask selDelayByID(int id);
	 
	 
	 @Update("update delay set status=#{status}, timereply=SYSDATE(),timedelay=#{timedelay},message=#{message},rid=#{rid} where id=#{id}")
	int  updateDel(DelayTask del);
	 
	 
	 @Update("update task set timeto=#{timeto} where id=${id}")
	 int updateTaskTime(Task task);
}






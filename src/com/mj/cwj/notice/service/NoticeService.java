package com.mj.cwj.notice.service;

import java.util.List;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.commen.pojo.PageInfo;
import com.mj.cwj.notice.pojo.Notice;
import com.mj.cwj.notice.pojo.NoticeClass;

public interface NoticeService {
	List<NoticeClass> selAll();
	//查询出所有的部门
	List<Dept> selAllDept();
	//根据部门的id查找出所有的员工
	List<Emp> selEmpByDid(int id);
	
	//添加公告
	
	int addNotice(Notice notice);
	/**
	 * 查询所有广告类型（分页、模糊）
	 * 
	 * @param pageStart
	 * @param pageNumber
	 * @return
	 */

	PageInfo show(int pageSize, int pageNumber, String name);
	/**
	 * 
	 * 
	 * 编辑查找对应的名字的信息
	 * @param name1
	 * @return
	 */
	Notice selByName(String name1);
	//更改信息
	int UpdateNotice(Notice notice);
	int toDelete(List<String> names);
	//根据name修改公告的浏览的次数
	//int updCount(String name,String lookName);
	List<Notice> showNotice();
}

package com.mj.cwj.notice.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.commen.pojo.PageInfo;
import com.mj.cwj.notice.pojo.NoticeClass;
import com.mj.cwj.notice.service.NoticeClassService;
//增加公告类型
@Controller
public class NoticeClassController {
	
	@Resource
	private  NoticeClassService noticeClassServiceImpl;
	@RequestMapping("add")
	public String addNoticeClass(NoticeClass noticeClass){
		
		
		int index=noticeClassServiceImpl.addNoticeClass(noticeClass);
		
		if(index>0){
			
			return"redirect:notice/NoticeClass";
		}else{
			return "redirect:notice/adderror";
		}
	}
	//显示全部的公告类别的信息
	@RequestMapping("/notice/showAll")
	@ResponseBody
	public PageInfo showDept(int pageSize, int pageNumber, String name, HttpServletResponse resp) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return noticeClassServiceImpl.show(pageSize, pageNumber, name1);
	}

	//删除选中的公告类别信息
	@RequestMapping("/delNoticeClass")
	public String delDept(@RequestParam("del") List<String> names) {
		noticeClassServiceImpl.toDelete(names);
		return"redirect:notice/NoticeClass";
		
	}
	//2.0  --编辑公告的类型
	//2.1---查找
	@RequestMapping("UpdateByname")
	public String UpdateByname(String name, HttpSession s) {
		String name1=null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		s.setAttribute("noticeClass", noticeClassServiceImpl.selByName(name1));
		
		return "redirect:notice/UpdateNoticeClass";
	}
	//2.2编辑数据库中的公告类型的信息
	@RequestMapping("UpdateNoticeClass")
	public String UpdateNoticeClass(NoticeClass noticeClass) {
		System.out.println(noticeClass+"===============================");
		String name1=null;
		try {
			name1 = new String(noticeClass.getName().getBytes("iso8859-1"), "utf-8");
			
			System.out.println(name1);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		noticeClassServiceImpl.UpdateNoticeClass(noticeClass);
		
		return "redirect:notice/NoticeClass";
	}

	//查看公告的类型
	@RequestMapping("showNoticeClassByName")
	public String showByName(String name, HttpSession s) {
		String name1=null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		s.setAttribute("noticeClass", noticeClassServiceImpl.selByName(name1));
		return "redirect:notice/NoticeClassDetail";
	}
	
	

}

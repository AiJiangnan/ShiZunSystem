package com.mj.cwj.notice.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.commen.pojo.PageInfo;
import com.mj.cwj.notice.pojo.Notice;
import com.mj.cwj.notice.pojo.NoticeClass;
import com.mj.cwj.notice.service.NoticeService;

@Controller
public class NoticeController {
	@Resource
	private NoticeService noticeServiceImpl;

	@RequestMapping("/showNoticeAll")
	@ResponseBody
	public List<NoticeClass> selAll() {
		return noticeServiceImpl.selAll();
	}

	@RequestMapping("/showAllDept")
	@ResponseBody
	public List<Dept> selAllDept() {
		return noticeServiceImpl.selAllDept();
	}

	@RequestMapping("/selEmpByDid")
	@ResponseBody
	public List<Emp> selEmpByDid(int did) {
		return noticeServiceImpl.selEmpByDid(did);
	}

	@RequestMapping("/addNotice")
	// 图片的上传和添加公告
	public String addNotice(String datefrom1, String dateto1, Notice notice, MultipartFile file,
			HttpServletRequest req) {

		DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		Date datefrom = null;
		Date dateto = null;
		try {
			datefrom = new Date(df.parse(datefrom1).getTime());
			dateto = new Date(df.parse(dateto1).getTime());
		} catch (ParseException e1) {
			e1.printStackTrace();
		}

		String fileName = UUID.randomUUID().toString()
				+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String path = req.getServletContext().getRealPath("images") + "/" + fileName;
		try {

			FileUtils.copyInputStreamToFile(file.getInputStream(), new File(path));
		} catch (IOException e) {
			e.printStackTrace();
		}
		// 只能取到webapps文件夹下的内容
		notice.setImg(fileName);
		notice.setDatefrom(datefrom);
		notice.setDateto(dateto);
		int index = noticeServiceImpl.addNotice(notice);

		if (index > 0) {

			return "redirect:notice/Notice";
		} else {
			return "redirect:notice/adderror";
		}
	}

	// 显示所有的公告信息
	@RequestMapping("/selAllNotice")
	@ResponseBody
	public PageInfo showNotice(int pageSize, int pageNumber, String name, HttpServletResponse resp) {
		String name1 = null;

		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		return noticeServiceImpl.show(pageSize, pageNumber, name1);
	}

	// 2.0 --编辑公告的
	// 2.1---查找
	@RequestMapping("/UpdateNoticeByname")
	public String UpdateByname(String name, HttpSession s) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Notice notice = noticeServiceImpl.selByName(name1);
		System.out.println(notice.toString());
		s.setAttribute("notice", noticeServiceImpl.selByName(name1));

		return "redirect:notice/UpdateNotice";
	}

	// 2.2编辑数据库中的公告类型的信息
	@RequestMapping("UpdateNotice")
	public String UpdateNoticeClass(Notice notice) {
		// System.out.println(noticeClass+"===============================");
		String name1 = null;
		try {
			name1 = new String(notice.getName().getBytes("iso8859-1"), "utf-8");

			System.out.println(name1);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		noticeServiceImpl.UpdateNotice(notice);

		return "redirect:notice/Notice";
	}

	// 查看公告的信息
	@RequestMapping("showNoticeByName")
	public String showByName(String name, HttpSession s) {
		String name1 = null;
		try {
			name1 = new String(name.getBytes("iso8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		s.setAttribute("notice", noticeServiceImpl.selByName(name1));
		return "redirect:notice/NoticeShowDetail";
	}

	// 删除公告
	@RequestMapping("/delNotice")
	public String delDept(@RequestParam("del") List<String> names) {
		noticeServiceImpl.toDelete(names);
		return "redirect:notice/Notice";

	}

	@RequestMapping("showNotice")
	public String showNotice(Model model) {
		model.addAttribute("list", noticeServiceImpl.showNotice());
		return "redirect:notice/NoticeCount";
	}

}

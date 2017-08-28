package com.mj.cwj.notice.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mj.ajn.system.mapper.DeptMapper;
import com.mj.ajn.system.pojo.Dept;
import com.mj.ajn.system.pojo.Emp;
import com.mj.commen.pojo.PageInfo;
import com.mj.cwj.notice.mapper.NoticeMapper;
import com.mj.cwj.notice.pojo.Notice;
import com.mj.cwj.notice.pojo.NoticeClass;
import com.mj.cwj.notice.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Resource
	private NoticeMapper noticeMapper;
	@Resource
	private DeptMapper deptMapper;

	@Override
	public List<Emp> selEmpByDid(int id) {
		return noticeMapper.selEmpByDid(id);
	}

	@Override
	public List<NoticeClass> selAll() {
		return noticeMapper.selAll();
	}

	@Override
	public List<Dept> selAllDept() {
		return deptMapper.selAll();
	}

	@Override
	public int addNotice(Notice notice) {
		return noticeMapper.addNotice(notice);
	}

	@Override
	public PageInfo show(int pageSize, int pageNumber, String name) {
		long count = noticeMapper.selCount("%" + name + "%");
		int pageStart = pageSize * (pageNumber - 1);
		List<Notice> list = noticeMapper.show(pageStart, pageSize, "%" + name + "%");
		return new PageInfo(pageSize, pageNumber, count % pageSize == 0 ? count / pageSize : count / pageSize + 1,
				list);
	}

	@Override
	public Notice selByName(String name1) {
		return noticeMapper.selByName(name1);
	}

	@Override
	public int UpdateNotice(Notice notice) {
		return noticeMapper.updateNotice(notice);
	}

	@Override
	public int toDelete(List<String> names) {
		int count = 0;
		for (String name : names) {
			count += noticeMapper.toDelete(name);
		}
		return count;
	}

	@Override
	public List<Notice> showNotice() {
		return noticeMapper.selAllNotice();
	}

}

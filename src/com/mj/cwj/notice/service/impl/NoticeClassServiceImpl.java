package com.mj.cwj.notice.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.mj.commen.pojo.PageInfo;
import com.mj.cwj.notice.mapper.NoticeClassMapper;
import com.mj.cwj.notice.pojo.NoticeClass;
import com.mj.cwj.notice.service.NoticeClassService;

@Service
public class NoticeClassServiceImpl implements NoticeClassService {
	@Resource
	private NoticeClassMapper noticeClassMapper;

	@Override
	public int addNoticeClass(NoticeClass noticeClass) {
		return noticeClassMapper.addNoticeClass(noticeClass);
	}
	
	
	
	


	@Override
	public int toDelete(List<String> names) {
		int count = 0;
		for (String name : names) {
			count += noticeClassMapper.toDelete(name);
		}
		return count;
	}



	@Override
	public NoticeClass selByName(String name) {
		// TODO Auto-generated method stub
		return  noticeClassMapper.selByName(name);
	}



	@Override
	public int UpdateNoticeClass(NoticeClass noticeClass) {
		// TODO Auto-generated method stub
		return noticeClassMapper.UpdateNoticeClass(noticeClass) ;
	}



	@Override
	public PageInfo show(int pageSize, int pageNumber, String name) {
		long count = noticeClassMapper.selCount("%" + name + "%");
		int pageStart = pageSize * (pageNumber - 1);
		List<NoticeClass> list = noticeClassMapper.show(pageStart, pageSize, "%" + name + "%");
		return new PageInfo(pageSize, pageNumber, count % pageSize == 0 ? count / pageSize : count / pageSize + 1,
				list);
	}



	

}

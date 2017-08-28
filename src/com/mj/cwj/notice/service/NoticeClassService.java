package com.mj.cwj.notice.service;

import java.util.List;

import com.mj.commen.pojo.PageInfo;
import com.mj.cwj.notice.pojo.NoticeClass;

public interface NoticeClassService {
	int addNoticeClass(NoticeClass noticeClass);

	
	/**
	 * 查询所有广告类型（分页、模糊）
	 * 
	 * @param pageStart
	 * @param pageNumber
	 * @return
	 */

	PageInfo show(int pageSize, int pageNumber, String name);


	int toDelete(List<String> names);




	NoticeClass selByName(String name);




	int UpdateNoticeClass(NoticeClass noticeClass);


	


	
	

	


	}

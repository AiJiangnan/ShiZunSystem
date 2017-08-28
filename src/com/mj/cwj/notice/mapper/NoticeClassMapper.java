package com.mj.cwj.notice.mapper;



import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.cwj.notice.pojo.NoticeClass;

public interface NoticeClassMapper {
	@Insert("insert into noticeclass values(default,#{name},#{remark})")
	public int addNoticeClass(NoticeClass noticeClass);
	
	@Delete("delete from noticeclass where name=#{name}")
	public int toDelete(String name);
	@Select("select * from noticeclass")
	public List<NoticeClass> selByPage(int i, int pageSize);
	
	@Select("select * from NoticeClass where name=#{name}")
	public NoticeClass selByName(String name);
	@Update("update NoticeClass set name=#{name},remark=#{remark} where name=#{name}")
	public int UpdateNoticeClass(NoticeClass noticeClass);
	/**
	 * 查询部门总数（模糊查询）
	 * 
	 * @return
	 */
	@Select("select count(*) from NoticeClass where name like #{0}")
	long selCount(String name);
	/**
	 * 分页查询
	 * 
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	@Select("select * from NoticeClass where name like #{2} limit #{0},#{1}")
	public List<NoticeClass> show(int pageStart, int pageSize, String name);
	
}

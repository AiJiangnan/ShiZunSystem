package com.mj.cwj.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mj.ajn.system.pojo.Emp;
import com.mj.cwj.notice.pojo.Notice;
import com.mj.cwj.notice.pojo.NoticeClass;

public interface NoticeMapper {

	@Select("select * from NoticeClass")
	List<NoticeClass> selAll();

	@Select("select * from emp where did=#{0}")
	List<Emp> selEmpByDid(int id);

	@Insert("insert into notice values(default,#{img},#{name},#{datefrom},#{dateto},#{content},#{date},#{count},#{lookName})")
	int addNotice(Notice notice);

	@Select("select * from notice")
	List<Notice> selAllNotice();

	/**
	 * 查询公告总数（模糊查询）
	 * 
	 * @return
	 */
	@Select("select count(*) from Notice where name like #{0}")
	long selCount(String name);

	/**
	 * 分页查询
	 * 
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	@Select("select * from Notice where name like #{2} limit #{0},#{1}")
	public List<Notice> show(int pageStart, int pageSize, String name);

	@Select("select * from Notice where name=#{name}")
	public Notice selByName(String name);

	@Update("update Notice set name=#{name},datefrom=#{datefrom},dateto=#{dateto},content=#{content} where name=#{name}")
	int updateNotice(Notice notice);

	@Delete("delete from notice where name=#{name}")
	int toDelete(String name);

	// 公告统计更改浏览的次数
	@Select("select * from notice")
	List<Notice> showNotice();

}

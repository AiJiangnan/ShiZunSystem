package com.mj.ajn.system.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mj.ajn.system.mapper.EmpMapper;
import com.mj.ajn.system.mapper.MenuMapper;
import com.mj.ajn.system.pojo.Emp;
import com.mj.ajn.system.pojo.Role;
import com.mj.ajn.system.service.MenuService;
import com.mj.ajn.system.service.RoleService;
import com.mj.ajn.system.service.impl.MenuServiceImpl;
import com.mj.ajn.system.service.impl.RoleServiceImpl;
import com.mj.cwj.notice.service.NoticeService;
import com.mj.cwj.notice.service.impl.NoticeServiceImpl;

/**
 * 示例代码，创建别的类后可删除
 * 
 * @author 艾江南
 *
 */
public class Test {

	public static void main(String[] args) {
		//@SuppressWarnings("resource")
//		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
//		NoticeService ms=ac.getBean("NoticeServiceImpl",NoticeServiceImpl.class);
//		ms.selAllDept();
//		System.out.println(ms);
		//RoleService rs = ac.getBean("roleServiceImpl", RoleServiceImpl.class);
		//MenuService ms = ac.getBean("menuServiceImpl", MenuServiceImpl.class);
		//MenuMapper mm = ac.getBean("menuMapper", MenuMapper.class);
	//	EmpMapper em = ac.getBean("empMapper", EmpMapper.class);
		// List<Role> l1 = rs.selAll();
		// for (Role role : l1) {
		// System.out.println(role);
		// }

		// PageInfo pi = rs.selPageInfo(1, 2, "");
		// List<Menu> list = ms.selByRidPid("1", 0);
//		 List<Emp> list = em.selAll();
//		List<Role> list = rs.selAll();
	//	Emp emp = em.selById("1");
		//System.out.println(emp);
//		for (Object l : list) {
//			System.out.println(l);
//		}
	}

}

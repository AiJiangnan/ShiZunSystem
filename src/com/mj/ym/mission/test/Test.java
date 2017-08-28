package com.mj.ym.mission.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mj.commen.pojo.PageInfo;
import com.mj.ym.mission.pojo.Task;
import com.mj.ym.mission.service.impl.TaskServiceImpl;



public class Test {
	public static void main(String[] args) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		String[] names = ac.getBeanDefinitionNames();

	for (String string : names) {
		System.out.println(string);
	}
	TaskServiceImpl bean = ac.getBean("taskServiceImpl",TaskServiceImpl.class);
	Task login = bean.showTaskById(8);
	System.out.println(login);
}
}

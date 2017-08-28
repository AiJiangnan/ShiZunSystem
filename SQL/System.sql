--1.员工表：emp
--- ID：id
--- 员工姓名：name
--- 员工密码：pwd
--- 员工性别：gender
--- 部门ID：did（外）
drop table if exists emp;
create table emp(
	id varchar(50) primary key comment 'ID',
	name varchar(30) not null comment '员工姓名',
	pwd varchar(30) not null comment '员工密码',
	gender varchar(5) comment '员工性别',
	did int(10) comment '部门iD',
	remark varchar(300) comment '备注',
	constraint fk_did foreign key (did) references dept(id)
) comment '员工表';

select * from emp;
desc emp;

insert into emp values(1,'张三','123456','男',1,'备注1');
insert into emp values(2,'李四','123456','男',2,'备注2');
insert into emp values(3,'王五','123456','男',3,'备注3');
insert into emp values(4,'测试','123456','测',4,'测试');
--
--2.部门表：dept
--- ID：id
--- 部门编号：no
--- 部门名称：name
--- 部门简称：sname
--- 备注：remark
drop table if exists dept;
create table dept(
	id int(10) primary key auto_increment comment 'ID',
	no varchar(20) not null comment '部门编号',
	name varchar(30) not null comment '部门名称',
	sname varchar(30) comment '部门简称',
	remark varchar(300) comment '备注'
) comment '部门表';

select * from dept;
desc dept;

insert into dept values(default,'1001','人事部','HR','主管公司人事');
insert into dept values(default,'1002','财务部','GA','主管公司财务');
insert into dept values(default,'1003','销售部','SD','主管公司销售');
--
--3.菜单表：menu
--- ID：id
--- 菜单名称：name
--- 父菜单ID：pid
--- 排序：sort
--- 是否显示：display
create table menu(
	id int(10) primary key auto_increment comment 'ID',
	name varchar(30) not null comment '菜单名称',
	pid int(10) not null comment '父菜单ID',
	sort int(10) comment '排序',
	display int(2) comment '是否显示'
) comment '菜单表';

select * from menu;

insert into menu values(default,'人事行政管理',0,0,1);
insert into menu values(default,'系统公告',	0,0,1);
insert into menu values(default,'知识管理',	0,0,1);
insert into menu values(default,'任务管理',	0,0,1);
insert into menu values(default,'销售管理',	0,0,1);
insert into menu values(default,'项目管理',	0,0,1);
insert into menu values(default,'统计分析',	0,0,1);
insert into menu values(default,'系统设置',	0,0,1);
insert into menu values(default,'产品资料管理',0,0,1);

insert into menu values(default,'人事管理',	1,0,1);
insert into menu values(default,'行政管理',	1,0,1);
insert into menu values(default,'公告类别',	2,0,1);
insert into menu values(default,'公告管理',	2,0,1);
insert into menu values(default,'公告统计',	2,0,1);
insert into menu values(default,'公告查看',	2,0,1);
insert into menu values(default,'项目档案管理',3,0,1);
insert into menu values(default,'项目心得',	3,0,1);
insert into menu values(default,'图片管理',	3,0,1);
insert into menu values(default,'常见问题',	3,0,1);
insert into menu values(default,'培训资料',	3,0,1);
insert into menu values(default,'其它资料',	3,0,1);
insert into menu values(default,'个人资料',	3,0,1);
insert into menu values(default,'知识审核',	3,0,1);
insert into menu values(default,'日程查看',	4,0,1);
insert into menu values(default,'任务创建',	4,0,1);
insert into menu values(default,'任务接受查看',4,0,1);
insert into menu values(default,'任务下发查看',4,0,1);
insert into menu values(default,'任务延期申请',4,0,1);
insert into menu values(default,'任务延期审批',4,0,1);
insert into menu values(default,'任务转移',	4,0,1);
insert into menu values(default,'任务转移审批',4,0,1);
insert into menu values(default,'任务成果提交',4,0,1);
insert into menu values(default,'订单管理',	5,0,1);
insert into menu values(default,'客户管理',	5,0,1);
insert into menu values(default,'项目信息查看',6,0,1);
insert into menu values(default,'项目任务分配',6,0,1);
insert into menu values(default,'项目进度查询',6,0,1);
insert into menu values(default,'项目进度验收',6,0,1);
insert into menu values(default,'项目归档审核',6,0,1);
insert into menu values(default,'客户订单统计',7,0,1);
insert into menu values(default,'客户收款统计',7,0,1);
insert into menu values(default,'任务完成度',	7,0,1);
insert into menu values(default,'项目完成度',	7,0,1);
insert into menu values(default,'部门管理',	8,0,1);
insert into menu values(default,'审批文档流程管理',8,0,1);
insert into menu values(default,'角色管理',	8,0,1);
insert into menu values(default,'权限管理',	8,0,1);
insert into menu values(default,'系统参数设置',8,0,1);
insert into menu values(default,'常规功能管理',8,0,1);
insert into menu values(default,'自定义功能管理',8,0,1);
insert into menu values(default,'产品系列管理',9,0,1);
insert into menu values(default,'产品风格管理',9,0,1);
insert into menu values(default,'产品规格管理',9,0,1);
insert into menu values(default,'产品管理',	9,0,1);
insert into menu values(default,'产品查看',	9,0,1);
insert into menu values(default,'个人收藏夹查看',9,0,1);
insert into menu values(default,'产品展示管理',9,0,1);

--
--3.角色表：role
--- ID：id
--- 排序ID：sid
--- 角色名称：name
--- 备注：remark
drop table if exists role;
create table role(
	id varchar(50) primary key comment 'ID',
	sid int(10) comment '排序ID',
	name varchar(30) comment '角色名称',
	remark varchar(300) comment '备注'
) comment '备注';

select * from role;

insert into role values(1,1,'超级管理员','拥有至高无上的权限');
insert into role values(2,2,'管理员','一人之下，万人之上');
insert into role values(3,3,'测试','测试');
insert into role values(4,4,'测试','测试');
insert into role values(5,5,'测试','测试');

--
--4.角色-员工表：role_emp
--- ID：id
--- 角色ID：rid（外）
--- 员工ID：eid（外）
select * from emp;
delete from emp where id=1005;
select * from role;
select * from role_emp;
drop table if exists role_emp;
create table role_emp(
	id int(10) primary key auto_increment comment 'ID',
	eid varchar(50) not null comment '员工ID',
	rid varchar(50) not null comment '角色ID',
	constraint fk_re_eid foreign key (eid) references emp(id),
	constraint fk_re_rid foreign key (rid) references role(id)
) comment '角色-员工关联表';

insert into role_emp values(1,'1','1');
insert into role_emp values(2,'2','4');
insert into role_emp values(3,'2','5');

--
--5.角色-菜单表：role_menu
--- ID：id
--- 角色ID：rid（外）
--- 菜单ID：mid（外）
drop table if exists role_menu;
create table role_menu(
	id int(10) primary key auto_increment comment 'ID',
	rid varchar(50) not null comment '角色ID',
	mid int(10) not null comment '菜单ID',
	constraint fk_rid foreign key (rid) references role(id),
	constraint fk_mid foreign key (mid) references menu(id)
) comment '角色-菜单关联表';

select * from role_menu;

insert into role_menu values(default,1,1);
insert into role_menu values(default,1,2);
insert into role_menu values(default,1,3);
insert into role_menu values(default,1,4);
insert into role_menu values(default,1,5);
insert into role_menu values(default,1,6);
insert into role_menu values(default,1,7);
insert into role_menu values(default,1,8);
insert into role_menu values(default,1,9);
insert into role_menu values(default,1,10);
insert into role_menu values(default,1,11);
insert into role_menu values(default,1,12);
insert into role_menu values(default,1,13);
insert into role_menu values(default,1,14);
insert into role_menu values(default,1,15);
insert into role_menu values(default,1,16);
insert into role_menu values(default,1,17);
insert into role_menu values(default,1,18);
insert into role_menu values(default,1,19);
insert into role_menu values(default,1,20);
insert into role_menu values(default,1,21);
insert into role_menu values(default,1,22);
insert into role_menu values(default,1,23);
insert into role_menu values(default,1,24);
insert into role_menu values(default,1,25);
insert into role_menu values(default,1,26);
insert into role_menu values(default,1,27);
insert into role_menu values(default,1,28);
insert into role_menu values(default,1,29);
insert into role_menu values(default,1,30);
insert into role_menu values(default,1,31);
insert into role_menu values(default,1,32);
insert into role_menu values(default,1,33);
insert into role_menu values(default,1,34);
insert into role_menu values(default,1,35);
insert into role_menu values(default,1,36);
insert into role_menu values(default,1,37);
insert into role_menu values(default,1,38);
insert into role_menu values(default,1,39);
insert into role_menu values(default,1,40);
insert into role_menu values(default,1,41);
insert into role_menu values(default,1,42);
insert into role_menu values(default,1,43);
insert into role_menu values(default,1,44);
insert into role_menu values(default,1,45);
insert into role_menu values(default,1,46);
insert into role_menu values(default,1,47);
insert into role_menu values(default,1,48);
insert into role_menu values(default,1,49);
insert into role_menu values(default,1,50);
insert into role_menu values(default,1,51);
insert into role_menu values(default,1,52);
insert into role_menu values(default,1,53);
insert into role_menu values(default,1,54);
insert into role_menu values(default,1,55);
insert into role_menu values(default,1,56);
insert into role_menu values(default,1,57);
insert into role_menu values(default,2,1);
insert into role_menu values(default,2,2);
insert into role_menu values(default,2,10);
insert into role_menu values(default,2,11);
insert into role_menu values(default,2,12);
insert into role_menu values(default,2,13);
insert into role_menu values(default,2,14);
insert into role_menu values(default,2,15);

--
--6.自定义功能表：custom
--- ID：id
--- 标题：name
--- 链接：url
--- 图标：icon
--- 备注：remark
create table custom(
	id int(10) primary key auto_increment comment 'ID',
	name varchar(30) not null comment '标题',
	url varchar(100) not null comment '链接',
	icon varchar(100) not null comment '图标',
	remark varchar(300) comment '备注'
) comment '自定义功能表';

select * from custom;

insert into custom values(default,'邮件提醒','#','icon_05.png','自定义功能备注');
insert into custom values(default,'地图','#','icon_07.png','自定义功能备注');
insert into custom values(default,'下载','#','icon_18.png','下载功能备注');

--
--7.审批文档流程管理：flow
--- ID：id
--- 审批编号：no
--- 审批名称审批流程：name
--- 相关文档：docs
--- 第一层审批：role1（rid外）
--- 第二层审批：role2（rid外）
--- 第三层审批：role3（rid外）
--- 添加于：from
--- 是否特殊：special
--- 请假的天数和报销的金额最小值：mix
--- 请假的天数和报销的金额最大值：max
--- 备注：remark
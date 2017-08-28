--产品系列表：productset
--产品系列ID：id
--产品系列名称：name
--备注：remark
create table productset(
	id int(10) primary key auto_increment comment 'ID',
	name varchar(50) comment '产品系列名称',
	remark varchar(300) comment '备注'
) comment '产品系列表';

select * from productset;

insert into productset values(default,'沙发系别','产品系别备注01');
insert into productset values(default,'茶几系别','产品系别备注02');
insert into productset values(default,'橱柜系别','产品系别备注03');

--产品风格表：productstyle
--产品风格ID:id
--产品风格名称：name
--备注：remark
create table productstyle(
id int(10) primary key auto_increment comment 'ID',
name varchar(50) comment '产品风格名称',
remark varchar(300) comment '备注'
) comment '产品风格表';

select * from productstyle;
insert into productstyle values(default,'中国风','产品风格备注01');
insert into productstyle values(default,'欧美风','产品风格备注02');
insert into productstyle values(default,'小日本风','产品风格备注03');
insert into productstyle values(default,'韩国风','产品风格备注04');


--产品类别表：productclass
--产品类别ID:id
--产品类别名称：name
--备注：remark
create table productclass(
id int(10) primary key auto_increment comment 'ID',
name varchar(50) comment '产品类别名称',
remark varchar(300) comment '备注'
) comment '产品类别表';

select * from productclass;

insert into productclass values(default,'家具','产品类别备注01');
insert into productclass values(default,'饰品','产品类别备注02');



--产品规格表：productsize
--产品规格ID :id
--产品规格：name
--备注：remark
create table productsize(
id int(10) primary key auto_increment comment 'ID',
name varchar(50) comment '产品规格',
remark varchar(300) comment '备注'
) comment '产品规格表';

select * from productsize;
insert into productsize values(default,'100x100','产品规格备注01');
insert into productsize values(default,'200x200','产品规格备注02');
insert into productsize values(default,'300x300','产品规格备注03');
insert into productsize values(default,'400x400','产品规格备注04');
insert into productsize values(default,'500x500','产品规格备注05');
insert into productsize values(default,'600x600','产品规格备注06');




--产品表：product
--产品ID：id
--产品型号：no
--产品名称：name
--产品图片：picture
--产品类别：cid（外）
--产品系别：xid(外)
--产品风格：sid（外）
--产品规格：zid（外）
--产品材质：material
--产品产地：location
--产品单价：price
--产品数量：number
--产品金额：total
--进口家具在途：send
--备注：remark
create table product(
id int(10) primary key auto_increment comment 'ID',
no varchar(30) not null comment '产品型号',
name varchar(50) not null comment '产品名称',
picture varchar(50) comment '图片名称',
material varchar(30) comment '产品材质',
location varchar(90) comment '产品产地',
price double comment '产品单价',
number int(5) comment '产品数量',
total double comment '产品金额',
send tinyint comment '进口家具在途',
remark varchar(300) comment '备注',
cid int(10) comment '产品类型ID',
xid int(10) comment '产品系别ID',
sid int(10) comment '产品风格ID',
zid int(10) comment '产品规格ID',
constraint fk_cid foreign key (cid) references productclass(id),
constraint fk_xid foreign key (xid) references productset(id),
constraint fk_sid foreign key (sid) references productstyle(id),
constraint fk_zid foreign key (zid) references productsize(id)
) comment '产品表';
select * from product;
--drop table product;
insert into product values(default,'1001','至尊沙发','bj_01.gif','其他','北京','100',100,'10000',1,'产品备注01',1,2,3,4);
insert into product values(default,'1002','至尊沙发','bjt.gif','其他','西安','20',100,'2000',0,'产品备注01',2,3,1,2);


--收藏夹管理表：favorite
--收藏夹信息ID：id
--产品ID：pid（外）
--用户ID：uid（外）
create table favorite(
	id int(10) primary key auto_increment comment 'ID',
	pid int(10) comment '产品ID',
	uid varchar(50) comment '用户ID',
	constraint fk_pid foreign key (pid) references product(id),
	constraint fk_uid foreign key (uid) references emp(id)
) comment '收藏夹管理表';
select * from favorite;

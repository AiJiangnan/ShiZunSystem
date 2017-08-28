select * from dept;
select count(*) from dept;
select * from dept where name like '%部%' limit 0,2;
select * from dept limit 2,2;
delete from dept where id=24;
update dept set no='1007',name='aaa',sname='bbb',remark='ddd' where id=13;

select * from role;
select * from role_menu;

select * from role order by sid limit 0,2;

select menu.*,role.id
from role,role_menu,menu
where role.id=role_menu.rid
and menu.id=role_menu.mid
and role.id=2
and menu.pid=0;

select * from emp;
select * from dept;
select emp.*,dept.name dept from emp,dept where emp.did=dept.id;
select emp.*,dept.name dept from emp,dept where emp.did=dept.id and emp.id=1;

select emp.*,dept.name
from emp,dept
where emp.did=dept.id
and (emp.name like '%人%'
or dept.name like '%人%');

select * from role_emp;
select * from role;

select role.* from role,role_emp where role_emp.rid=role.id and role_emp.eid=2;

and role_emp=emp.eid

delete from role_emp where eid=3;
delete from role_emp where eid='3';

select * from menu where pid=0 and id!=2;

select * from emp;
select * from role;
select * from role_emp;
select * from role_menu;
select * from menu;

select distinct menu.*
from emp,role,role_emp,role_menu,menu
where emp.id=role_emp.eid
and role.id=role_emp.rid
and role_menu.rid=role.id
and menu.id=role_menu.mid
and emp.id=1
and menu.pid=0;

select * from custom where name like '%自%' or  like '%自%';

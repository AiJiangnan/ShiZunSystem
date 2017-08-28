drop table if exists delay;
CREATE TABLE `delay` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '延期',
  `tid` int(10) DEFAULT NULL COMMENT '延期任务id',
  `reson` varchar(50) DEFAULT NULL COMMENT '原因',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `timereply` datetime DEFAULT NULL COMMENT '批复时间',
  `timedelay` datetime DEFAULT NULL COMMENT '延期时间',
  `message` varchar(50) DEFAULT NULL COMMENT '意见',
  `rid` varchar(50) DEFAULT NULL COMMENT '回复人id',
  PRIMARY KEY (`id`),
  KEY `for_tid` (`tid`),
  KEY `for_rid` (`rid`),
  CONSTRAINT `for_rid` FOREIGN KEY (`rid`) REFERENCES `emp` (`id`),
  CONSTRAINT `for_tid` FOREIGN KEY (`tid`) REFERENCES `task` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


--建立任务表
drop table if exists task;
CREATE TABLE `task` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `name` varchar(50) NOT NULL COMMENT '任务标题',
  `timefrom` datetime NOT NULL COMMENT '起始时间',
  `timeto` datetime NOT NULL COMMENT '结束时间',
  `pid` varchar(50) NOT NULL COMMENT '员工id',
  `level` int(15) NOT NULL COMMENT '紧急程度',
  `content` varchar(150) DEFAULT NULL COMMENT '内容',
  `attachment` varchar(50) DEFAULT NULL COMMENT '附件',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `fk_pid_emp` (`pid`),
  CONSTRAINT `fk_pid_emp` FOREIGN KEY (`pid`) REFERENCES `emp` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
--添加一个员工
insert into emp values('6','王六','123456','男',1,'备注4');
create table `t_user` (
  `id` int(10) unsigned not null auto_increment,
  `username` varchar(50) not null default '' COMMENT '用户名',
  `password` varchar(50) not null default '' COMMENT '密码',
  `sex` tinyint(4) not null default '0' COMMENT '性别 0=女 1=男 ',
  `deleted` tinyint(4) unsigned not null default '0' COMMENT '删除标志，默认0不删除，1删除',
  `update_time` timestamp not null default CURRENT_TIMESTAMP on
update
	CURRENT_TIMESTAMP COMMENT '更新时间',
	`create_time` timestamp not null default CURRENT_TIMESTAMP COMMENT '创建时间',
	primary key (`id`)
) ENGINE = InnoDB auto_increment = 1 default CHARSET = utf8 COMMENT = '用户表';
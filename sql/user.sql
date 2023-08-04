/*用户表：包括用户ID、用户名、密码*/
/**
  为什么要用索引？

使用索引后减少了存储引擎需要扫描的数据量，加快查询速度
索引可以把随机I/O变为顺序I/O
索引可以帮助我们对所搜结果进行排序以避免使用磁盘临时表
  **/

CREATE TABLE IF NOT EXISTS 'user' (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
    `username` varchar(35) DEFAULT '' COMMENT '用户名',
    `password` varchar(60) NOTNULL DEFAULT '' COMMENT '密码',
    PRIMARY KEY(`id`),
    UNIQUE KEY `user_pk2`(`username`) USING BTREE
)ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
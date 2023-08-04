/*消息表：包括消息ID、接收用户id、发送用户id、消息内容、消息发送时间*/
SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';
SET NAMES utf8mb4;

CREATE TABLE IF NOT EXIST `message` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `to_user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
    `from_user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
    `content` text NOT NULL DEFAULT '',
    `time` Datetime NOT NULL DEFAULT '0000-00-00 00:00:00', /*会不会太冗长了*/
    PRIMARY KEY(`id`)
)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT '消息表'
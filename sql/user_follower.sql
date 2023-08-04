/*关注表：包括用户ID、关注的人的id、是否为特别关注*/
CREATE TABLE IF NOT EXIST 'user_follow' (
                                            `user_id` bigint NOT NULL,
                                            `follow_id` bigint NOT NULL,
                                            `follow_flag` tinyint(1) NOT NULL /*是否为特别关注？*/
    PRIMARY KEY(`user_id`,`follow_id`)
    )ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT '被关注表'
USE `AnsibleForms`;
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_AnsibleForms_users_natural_key` (`username`),
    KEY `FK_users_group` (`group_id`),
    CONSTRAINT `FK_users_group` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

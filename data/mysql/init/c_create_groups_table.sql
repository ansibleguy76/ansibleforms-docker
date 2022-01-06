USE `AnsibleForms`;
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uk_AnsibleForms_groups_natural_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

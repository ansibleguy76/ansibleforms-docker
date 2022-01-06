USE `AnsibleForms`;
DROP TABLE IF EXISTS `credentials`;
CREATE TABLE `credentials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `user` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `host` varchar(250) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_AnsibleForms_credentials_natural_key` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

USE `AnsibleForms`;
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens` (
  `username` varchar(250) NOT NULL,
  `username_type` varchar(5) NOT NULL,
  `refresh_token` text DEFAULT NULL,
  PRIMARY KEY (`username`,`username_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

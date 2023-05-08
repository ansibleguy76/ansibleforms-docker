USE `AnsibleForms`;
DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens` (
  `username` varchar(250) NOT NULL,
  `username_type` varchar(10) NOT NULL,
  `refresh_token` text DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

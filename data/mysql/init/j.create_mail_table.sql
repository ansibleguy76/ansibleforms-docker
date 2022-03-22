USE `AnsibleForms`;
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `server` varchar(250) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `secure` tinyint(4) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `from` varchar(250) DEFAULT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

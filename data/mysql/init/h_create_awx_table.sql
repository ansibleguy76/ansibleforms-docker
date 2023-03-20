USE `AnsibleForms`;
DROP TABLE IF EXISTS `awx`;
CREATE TABLE `awx` (
  `uri` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `token` text NOT NULL,
  `password` text NOT NULL,
  `ignore_certs` tinyint(4) DEFAULT NULL,
  `ca_bundle` text DEFAULT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

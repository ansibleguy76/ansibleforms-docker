USE `AnsibleForms`;
DROP TABLE IF EXISTS `awx`;
CREATE TABLE `awx` (
  `uri` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

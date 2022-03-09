USE `AnsibleForms`;
DROP TABLE IF EXISTS `job_output`;
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` varchar(250) DEFAULT NULL,
  `target` varchar(250) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `start` datetime NOT NULL DEFAULT current_timestamp(),
  `end` datetime DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  `job_type` varchar(20) DEFAULT NULL,
  `extravars` mediumtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
CREATE TABLE `job_output` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `output` longtext DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `output_type` varchar(10) NOT NULL,
  `job_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_job_output_jobs` (`job_id`),
  CONSTRAINT `FK_job_output_jobs` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1650 DEFAULT CHARSET=utf8;

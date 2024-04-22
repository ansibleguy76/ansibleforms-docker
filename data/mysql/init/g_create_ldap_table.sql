USE `AnsibleForms`;
DROP TABLE IF EXISTS `ldap`;
CREATE TABLE `ldap` (
  `server` varchar(250) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `ignore_certs` tinyint(4) DEFAULT NULL,
  `enable_tls` tinyint(4) DEFAULT NULL,
  `cert` text DEFAULT NULL,
  `ca_bundle` text DEFAULT NULL,
  `bind_user_dn` varchar(250) DEFAULT NULL,
  `bind_user_pw` text DEFAULT NULL,
  `search_base` varchar(250) DEFAULT NULL,
  `username_attribute` varchar(250) DEFAULT NULL,
  `groups_attribute` varchar(250) DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `is_advanced` tinyint(4) DEFAULT NULL,
  `groups_search_base` varchar(250) DEFAULT NULL,
  `group_class` varchar(250) DEFAULT NULL,
  `group_member_attribute` varchar(250) DEFAULT NULL,
  `group_member_user_attribute` varchar(250) DEFAULT NULL,
  `mail_attribute` varchar(250) DEFAULT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


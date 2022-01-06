USE `AnsibleForms`;
INSERT INTO AnsibleForms.groups(name) VALUES('admins');
INSERT INTO AnsibleForms.awx(uri,token) VALUES('','');
INSERT INTO AnsibleForms.users(username,password,group_id) VALUES('admin','$2b$10$Z/W0HXNBk2aLR4yVLkq5L..C8tXg.G.o1vkFr8D2lw8JSgWRCNiCa',1);
INSERT INTO AnsibleForms.ldap(server,port,ignore_certs,enable_tls,cert,ca_bundle,bind_user_dn,bind_user_pw,search_base,username_attribute,enable) VALUES('',389,1,0,'','','','','','sAMAccountName',0);

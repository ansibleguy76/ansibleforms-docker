USE `AnsibleForms`;
INSERT INTO AnsibleForms.azuread(client_id,secret_id,enable,groupfilter) VALUES('','',0,'');
INSERT INTO AnsibleForms.oidc(issuer, client_id,secret_id,enabled,groupfilter) VALUES('', '','',0,'');
INSERT INTO AnsibleForms.groups(name) VALUES('admins');
INSERT INTO AnsibleForms.awx(uri,token,username,password,ignore_certs,use_credentials,ca_bundle) VALUES('','','','',0,0,'');
INSERT INTO AnsibleForms.users(username,password,email,group_id) VALUES('admin','$2b$10$Z/W0HXNBk2aLR4yVLkq5L..C8tXg.G.o1vkFr8D2lw8JSgWRCNiCa','',1);
INSERT INTO AnsibleForms.ldap(server,port,ignore_certs,enable_tls,cert,ca_bundle,bind_user_dn,bind_user_pw,search_base,username_attribute,groups_attribute,enable,is_advanced,groups_search_base,group_class,group_member_attribute,group_member_user_attribute) VALUES('',389,1,0,'','','','','','sAMAccountName','memberOf',0,0,'','','','');
INSERT INTO AnsibleForms.settings(mail_server,mail_port,mail_secure,mail_username,mail_password,mail_from,url,forms_yaml) VALUES('',25,0,'','','','','');

-- 04-05-2023
/*Data for the table `app_profile_option` */
INSERT  INTO `app_profile_option`(`option_id`,`module_id`,`app_config_module_id`,`option_name`,`option_desc`,`option_data_type`,`allow_user_override`,`current_value`,`default_value`,`apply_to_devices`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (NULL,1,1,'APP_SERVER_URL','App Server URL','varchar','1','http://192.168.65.37:8080/appserver/rest','http://192.168.65.249:8080/middleware/rest',0,1,1,'2012-11-30 00:00:00',1,NOW()) (NULL,1,1,'SMTP_USER_NAME','SMTP User Name','varchar','1','source.test@corpus.com','source.test@corpus.com',0,1,1,NOW(),NULL,NULL),(NULL,1,1,'SMTP_STARTTLS_ENABLE','SMTP STARTTLS Enable','boolean','1','true','true',0,1,1,NOW(),NULL,NULL);,(NULL,1,1,'FROM_EMAIL_PASSWORD','From Email Password','varchar','1','Corpus@123','Corpus@123',0,1,1,NOW(),NULL,NULL),(NULL,1,1,'SMTP_PORT','SMTP Port','varchar','1','587','587',0,1,1,NOW(),NULL,NULL),(NULL,1,1,'SMTP_HOST_NAME','SMTP Host Name','varchar','1','smtp-mail.outlook.com','smtp-mail.outlook.com',0,1,1,NOW(),NULL,NULL),(NULL,1,1,'FROM_EMAIL_ADDRESS','From Email Address','varchar','1','corpusdevalert@gmail.com','corpusdevalert@gmail.com',0,1,1,NOW(),NULL,NULL),(NULL,1,1,'FTP_SERVER_DOMAIN','FTP_SERVER_DOMAIN','varchar','1','hydapp.corpus.com','hydapp.corpus.com',0,1,0,NOW(),NULL,NULL),(NULL,1,1,'FTP_SERVER_PORT','FTP_SERVER_PORT','varchar','1','21','21',0,1,0,NOW(),NULL,NULL),(NULL,1,1,'FTP_USERNAME','FTP_USERNAME','varchar','1','indsys','indsys',0,1,0,NOW(),NULL,NULL),(NULL,1,1,'FTP_PASSWORD','FTP_PASSWORD','varchar','1','Ind$y$##','Ind$y$##',0,1,0,NOW(),NULL,NULL),(12,1,1,'DOWNLOAD_PATH','DOWNLOAD_PATH','varchar','1','/home/corpus/digital','/home/corpus/digital',0,2,0,'2012-12-12 00:00:00',NULL,NULL),(13,1,1,'CONTENT_UPLOAD_PATH','Content Upload Path','varchar','1','/home/apache-tomcat-7.0.32/webapps/content','/home/apache-tomcat-7.0.32/webapps/content',0,1,1,'2013-01-07 18:35:03',NULL,NULL);
/*Data for the table `notification_template_master` */
INSERT  INTO `notification_template_master`(`id`,`code`,`name`,`place_holders`,`created_by`,`created_date`) VALUES (1,'USER_AUTH_PASSWORD_RESET','User Auth Password Reset','#TITLE#,#FIRST_NAME#,#USER_NAME#,#PASSWORD#',1,NOW()),(2,'USER_AUTH_PASSWORD_RESEND','User Auth Password Resend','#TITLE#,#FIRST_NAME#,#USER_NAME#,#PASSWORD#',1,NOW()),(3,'USER_AUTH_CHANGE_PASSWORD','User Auth Change Password','#TITLE#,#FIRST_NAME#,#USER_NAME#',1,NOW()),(4,'USER_AUTH_CREDENTIALS_NEW','User Auth Credentials New','#TITLE#,#FIRST_NAME#,#USER_NAME#,#PASSWORD#',1,NOW()),(5,'OTP_NOTIFICATION','OTP Notification','#FRANCHISE_NAME#,#OTP#,#DATE_TIME#',1,NOW()),(6,'USER_AUTH_PASSWORD_RESET_CODE','User Auth Password Reset Code','#TITLE#,#FIRST_NAME#,#PASSWORD_RESET_CODE#,#PASSWORD_RESET_LINK#',1,NOW()),(7,'LOGIN_OTP_NOTIFICATION','Login OTP Notification','#OTP#,#DATE_TIME#',1,NOW()),(8,'APP_USER_PASSWORD','App user password Creation','#USER_NAME#,#LINK#',1,NOW());
/*Data for the table `language` */
INSERT  INTO `language`(`id`,`code`,`name`,`iso_code`,`iso2`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (1,'HINDI','Hindi','hin','hi',1,'2013-06-25 12:32:51',1,'2020-07-10 15:15:00'),(2,'ENGLISH','English','eng','en',1,'2013-06-25 12:33:11',NULL,NULL),(3,'TELUGU','Telugu','Tel','te',1,'2016-04-06 00:00:00',NULL,NULL),(4,'TAMIL','Tamil','Tam','ta',23,'2016-07-30 09:50:52',NULL,NULL),(5,'KANNADA','Kannada','kan','kn',23,'2016-10-06 16:41:30',NULL,NULL),(6,'ORIYA','Oriya','ori','or',23,'2016-10-06 17:28:21',NULL,NULL),(7,'MARATHI','Marathi','Mar','mr',23,'2016-10-06 17:39:15',1,'2018-09-05 15:49:34'),(8,'Others','Others','Others',NULL,23,'2016-10-08 17:28:19',NULL,NULL),(9,'MALAYALAM','Malayalam','MAL','ml',1,'2016-12-27 11:11:53',NULL,NULL),(10,'GUJRATI','Gujrati','GUJ','gu',1,'2016-12-27 11:12:28',NULL,NULL),(11,'NEPALI','NEPALI','NEP',NULL,1,'2016-12-27 11:12:50',NULL,NULL),(12,'PUNJABI','Punjabi','PUN','pa',1,'2016-12-27 11:13:16',NULL,NULL),(13,'BHOJPURI','Bhojpuri','BHO','hr',1,'2016-12-27 11:13:54',NULL,NULL),(14,'BANGALA','BANGALA','BAN',NULL,1,'2016-12-27 11:14:20',1,'2020-07-12 23:58:49'),(15,'URDU','URDU','URD',NULL,1,'2016-12-27 11:14:34',NULL,NULL),(16,'gujarati','english','eng1',NULL,59,'2017-11-14 14:06:24',59,'2017-11-14 14:07:04'),(17,'testdemo','testdemo','testdemo',NULL,1,'2020-07-12 23:59:28',NULL,NULL),(18,'BENGALI','Bengali','Ben','bn',1,'2020-08-10 12:57:19',NULL,NULL),(19,'Instrumental','Instrumental','Ins',NULL,1,'2020-08-10 12:57:20',NULL,NULL),(20,'Persian','Persian','Per',NULL,1,'2021-01-18 15:31:14',NULL,NULL),(21,'Pushto; Pashto','Pushto; Pashto','Pus',NULL,1,'2021-01-18 15:31:24',NULL,NULL),(22,'Odia','Odia','Odi',NULL,1,'2021-01-18 15:31:28',NULL,NULL),(23,'Rajasthani','Rajasthani','Raj',NULL,1,'2021-01-18 15:31:28',NULL,NULL),(24,'Nagpuri','Nagpuri','Nag',NULL,1,'2021-06-29 14:54:47',NULL,NULL),(25,'hr','hr','hr',NULL,1,'2021-06-29 17:50:44',NULL,NULL),(26,'kn','kn','kn',NULL,1,'2021-06-29 17:50:45',NULL,NULL),(27,'bn','bn','bn',NULL,1,'2021-06-29 17:50:46',NULL,NULL),(28,'mr','mr','mr',NULL,1,'2021-06-29 17:50:48',NULL,NULL),(29,'pa','pa','pa',NULL,1,'2021-06-29 17:50:48',NULL,NULL),(30,'ml','ml','ml',NULL,1,'2021-06-29 17:50:48',NULL,NULL),(31,'Assamese','Assamese','Ass',NULL,1,'2021-07-28 11:47:22',NULL,NULL),(32,'Korean','Korean','Kor',NULL,42,'2021-07-28 16:21:20',NULL,NULL),(33,'as','as','as',NULL,1,'2021-08-09 16:09:21',NULL,NULL),(34,'hv','hv','hv',NULL,1,'2021-08-09 16:09:23',NULL,NULL),(35,'Spanish','Spanish','Spa',NULL,42,'2021-09-16 14:12:02',NULL,NULL),(36,'Haryanvi','Haryanvi','Har',NULL,42,'2021-09-16 14:12:23',NULL,NULL),(37,'pu','pu','pu',NULL,42,'2021-09-16 14:12:51',NULL,NULL);
/*Data for the table `priority` */
INSERT  INTO `priority`(`id`,`code`,`name`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (1,'HIGH','High',166,'2013-09-23 17:15:08',NULL,NULL),(2,'MEDIUM','Medium',166,'2013-09-23 17:15:08',NULL,NULL),(3,'LOW','Low',166,'2013-09-23 17:15:08',NULL,NULL);
/*Data for the table `message_type` */
INSERT  INTO `message_type`(`id`,`code`,`name`,`status`,`created_by`,`created_date`) VALUES (1,'ALERT','Alert',1,166,'2013-09-23 17:15:12'),(2,'WARNING','Warning',1,166,'2013-09-23 17:15:12'),(3,'MESSAGE','Message Box',1,166,'2014-02-20 12:45:57');
/*Data for the table `notification_category` */
INSERT  INTO `notification_category`(`id`,`code`,`description`,`created_by`,`created_date`) VALUES (1,'SEND_PASSWORD_MODULE','Send Password',1,NOW()),(2,'RESET_PASSWORD_MODULE','Reset Password',1,NOW()),(3,'CHANGE_PASSWORD_MODULE','Change Password',1,NOW()),(4,'USER_AUTH_MODULE','User Authentication Module',1,NOW()),(5,'OTP_NOTIFICATION','OTP Notification',1,NOW());
/*Data for the table `user_app_profile_mapping` */
INSERT  INTO `user_app_profile_mapping`(`user_app_profile_mapping_id`,`app_profile_option_id`,`user_id`,`app_profile_option_value`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (NULL,(SELECT apo.`option_id` FROM app_profile_option apo WHERE apo.`option_name`='APP_SERVER_URL'),(SELECT au.`user_id` FROM app_user au WHERE au.`user_name`='admin'),(SELECT apo.`current_value` FROM app_profile_option apo WHERE apo.`option_name`='APP_SERVER_URL'),(SELECT au.`user_id` FROM app_user au WHERE au.`user_name`='admin'),NOW(),NULL,NULL);
/*Data for the table `notification_template_details` */
INSERT  INTO `notification_template_details`(`id`,`notification_template_master_id`,`language_id`,`email_subject`,`email_content`,`sms_content`,`stb_content`,`is_email_enabled`,`is_sms_enabled`,`is_stb_enabled`,`message_type_id`,`priority_type_id`,`notification_cat_id`,`ext_sms_template_id`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (NULL,1,2,'Password Reset Requested','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been reset. \nYour credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been reset. \nYour credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been reset. \nYour credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin',1,1,0,3,1,2,NULL,1,'2020-05-28 17:46:36',NULL,NULL),(NULL,2,2,'Password Resend Requested','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been resend. \n Your credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been resend. \n Your credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been resend. \n Your credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin',1,1,0,3,1,1,NULL,1,'2020-05-28 17:46:36',NULL,NULL),(NULL,3,2,'Password Changed','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been Changed. \nYour UserName is : #USER_NAME# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been Changed. \nYour UserName is : #USER_NAME# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been Changed. \nYour UserName is : #USER_NAME# \n\n Regards,\n admin',1,1,0,3,1,3,NULL,1,'2020-05-28 17:46:36',NULL,NULL),(NULL,4,2,'Device Login Credentials','Dear #TITLE# #FIRST_NAME#, \n\n Your Login Credentials are as below. \n UserName : #USER_NAME# \n Password : #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, you are successfully registered. Your userid is #USER_NAME# password is #PASSWORD# thanks.','Dear #TITLE# #FIRST_NAME#, you are successfully registered. Your userid is #USER_NAME# password is #PASSWORD# thanks.',1,1,0,3,1,4,NULL,1,'2020-05-28 17:46:36',NULL,NULL),(NULL,5,2,'OTP','OTP for #FRANCHISE_NAME# APP  registration is #OTP#  generated at #DATE_TIME# . Thank you.','OTP for #FRANCHISE_NAME# APP  registration is #OTP#  generated at #DATE_TIME# . Thank you.','OTP for #FRANCHISE_NAME# APP  registration is #OTP#  generated at #DATE_TIME# . Thank you.',1,1,0,3,1,5,NULL,1,'2020-05-28 17:46:36',NULL,NULL),(NULL,6,2,'Password Reset Code','Dear #TITLE# #FIRST_NAME#, \n\n\nYour password reset code generated. \nYour Password reset code is : #PASSWORD_RESET_CODE# \nReset code Url: #PASSWORD_RESET_LINK#\n\n\nRegards,\nadmin','Dear #TITLE# #FIRST_NAME#, \n\n\nYour password reset code generated. \nYour Password reset code is : #PASSWORD_RESET_CODE# \nReset code Url: #PASSWORD_RESET_LINK#\n\n\nRegards,\nadmin','Dear #TITLE# #FIRST_NAME#, \n\n\nYour password reset code generated. \nYour Password reset code is : #PASSWORD_RESET_CODE# \nReset code Url: #PASSWORD_RESET_LINK#\n\n\nRegards,\nadmin',1,1,0,3,1,3,NULL,1,'2020-05-28 17:46:36',NULL,NULL),(NULL,7,2,'Login OTP','To proceed on Asianet Mobile TV plus Please use OTP #OTP#','To proceed on Asianet Mobile TV plus Please use OTP #OTP#','To proceed on Asianet Mobile TV plus Please use OTP #OTP#',1,1,0,3,1,5,'4',1,'2020-05-28 17:46:36',42,'2021-09-08 15:52:43'),(NULL,8,2,'App User Password Request','Dear #USER_NAME#,\r\n\r\nYour PASSWORD request\r\n\r\n#LINK#\r\n\r\nThanks.\r\n','','',1,0,0,3,2,1,NULL,1,'2020-07-21 13:59:54',NULL,NULL);

-- Dynamic Menu scripts
DELETE FROM app_menu;
DELETE FROM app_role_privilege_mapping;
DELETE FROM app_privilege;
DELETE FROM app_action;

/*Data for the table `app_action` */
INSERT  INTO `app_action`(`action_id`,`action_code`,`action_desc`,`action_class`,`help_file_path`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (1,'APP_USER','Application User','appUserView',NULL,1,1,'2012-11-12 11:56:40',NULL,NULL),(2,'APP_ROLE','Application Role','appRoleView',NULL,1,1,'2012-11-12 11:56:40',NULL,NULL);

/*Data for the table `app_privilege` */
INSERT  INTO `app_privilege`(`privilege_id`,`privilege_code`,`privilege_desc`,`status`,`action_id`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (NULL,'VIEW','Application User View',1,1,1,NOW(),NULL,NULL),(NULL,'ADD','Application User Add',1,1,1,NOW(),NULL,NULL),(NULL,'EDIT','Application User Edit',1,1,1,NOW(),NULL,NULL),(NULL,'VIEW','Application Role View',1,2,1,NOW(),NULL,NULL),(NULL,'ADD','Application Role Add',1,2,1,NOW(),NULL,NULL),(NULL,'EDIT','Application Role Edit',1,2,1,NOW(),NULL,NULL);

/*Data for the table `app_menu` */
INSERT  INTO `app_menu`(`menu_id`,`menu_code`,`menu_desc`,`image`,`status`,`action_id`,`has_sub_menu`,`parent_menu_id`,`display_order`,`created_by`,`created_date`,`modified_by`,`modified_date`) VALUES (NULL,'APP_USER','Application User',NULL,1,1,0,0,1,1,NOW(),NULL,NULL),(NULL,'APP_ROLE','Application Role',NULL,1,2,0,0,2,1,NOW(),NULL,NULL),;
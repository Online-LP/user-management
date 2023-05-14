/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.3.13-MariaDB : Database - user-management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `app_action` */

DROP TABLE IF EXISTS `app_action`;

CREATE TABLE `app_action` (
  `action_id` int(11) NOT NULL AUTO_INCREMENT,
  `action_code` varchar(64) NOT NULL,
  `action_desc` varchar(64) NOT NULL,
  `action_class` varchar(256) DEFAULT NULL,
  `help_file_path` varchar(512) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  UNIQUE KEY `UK_535j6qq1oi4ehi73gcy4xu5er` (`action_code`),
  UNIQUE KEY `UK535j6qq1oi4ehi73gcy4xu5er` (`action_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_action` */

-- insert  into `app_action`(`action_id`,`action_code`,`action_desc`,`action_class`,`help_file_path`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (NULL,'APP_USER','Application User','appUserView',NULL,1,1,NOW(),NULL,NULL),(NULL,'APP_ROLE','Application Role','appRoleView',NULL,1,1,NOW(),NULL,NULL);

/*Table structure for table `app_config_module` */

DROP TABLE IF EXISTS `app_config_module`;

CREATE TABLE `app_config_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

/*Data for the table `app_config_module` */

-- insert  into `app_config_module`(`id`,`code`,`name`,`created_by`,`created_date`) values (null,'UMS','UMS',1,NOW());

/*Table structure for table `app_menu` */

DROP TABLE IF EXISTS `app_menu`;

CREATE TABLE `app_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_code` varchar(64) NOT NULL,
  `menu_desc` varchar(64) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  `has_sub_menu` tinyint(4) NOT NULL,
  `parent_menu_id` int(11) DEFAULT NULL,
  `display_order` tinyint(4) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  UNIQUE KEY `UK_q7kbr1gqueapbc7ft5e1ryqqi` (`menu_code`),
  UNIQUE KEY `UKq7kbr1gqueapbc7ft5e1ryqqi` (`menu_code`),
  KEY `FK2a2rin695qyo2kmuataqniohd` (`action_id`),
  CONSTRAINT `FK2a2rin695qyo2kmuataqniohd` FOREIGN KEY (`action_id`) REFERENCES `app_action` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_menu` */

/*Table structure for table `app_privilege` */

DROP TABLE IF EXISTS `app_privilege`;

CREATE TABLE `app_privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_code` varchar(32) NOT NULL,
  `privilege_desc` varchar(64) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`),
  UNIQUE KEY `UK_tgts316oi5wdw1lrm9cdvu1fd` (`privilege_desc`),
  UNIQUE KEY `UKtgts316oi5wdw1lrm9cdvu1fd` (`privilege_desc`),
  KEY `FKkoh5csyp5x2iat8rlyfwehf1t` (`action_id`),
  CONSTRAINT `FKkoh5csyp5x2iat8rlyfwehf1t` FOREIGN KEY (`action_id`) REFERENCES `app_action` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_privilege` */

-- insert  into `app_privilege`(`privilege_id`,`privilege_code`,`privilege_desc`,`status`,`action_id`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (15,'VIEW','Application User View',1,1,1,'2023-05-12 22:37:55.000000',NULL,NULL),(16,'ADD','Application User Add',1,1,1,'2023-05-12 22:37:55.000000',NULL,NULL),(17,'EDIT','Application User Edit',1,1,1,'2023-05-12 22:37:55.000000',NULL,NULL),(18,'VIEW','Application Role View',1,2,1,'2023-05-12 22:37:55.000000',NULL,NULL),(19,'ADD','Application Role Add',1,2,1,'2023-05-12 22:37:55.000000',NULL,NULL),(20,'EDIT','Application Role Edit',1,2,1,'2023-05-12 22:37:55.000000',NULL,NULL);

/*Table structure for table `app_profile_option` */

DROP TABLE IF EXISTS `app_profile_option`;

CREATE TABLE `app_profile_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(100) NOT NULL,
  `option_desc` varchar(100) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `current_value` varchar(500) NOT NULL,
  `default_value` varchar(500) NOT NULL,
  `app_config_module_id` int(11) DEFAULT NULL,
  `option_data_type` varchar(10) DEFAULT NULL,
  `allow_user_override` char(1) DEFAULT NULL,
  `apply_to_devices` tinyint(1) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `UK_fvp0ngu7h0iwd7w9vt58qglke` (`option_name`),
  UNIQUE KEY `UKfvp0ngu7h0iwd7w9vt58qglke` (`option_name`),
  KEY `FKddcpw0hmwj3h2imea09nh7xvm` (`app_config_module_id`),
  CONSTRAINT `FKddcpw0hmwj3h2imea09nh7xvm` FOREIGN KEY (`app_config_module_id`) REFERENCES `app_config_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_profile_option` */

-- insert  into `app_profile_option`(`option_id`,`option_name`,`option_desc`,`module_id`,`current_value`,`default_value`,`app_config_module_id`,`option_data_type`,`allow_user_override`,`apply_to_devices`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,'IMAGE_UPLOAD_PATH','Image Upload Path',1,'/home/apache-tomcat-7.0.32/webapps/content/images','/home/apache-tomcat-7.0.32/webapps/content/images',1,'varchar','1',0,1,1,'2013-01-26 00:00:00.000000',NULL,NULL),(2,'FTP_SERVER_DOMAIN','FTP_SERVER_DOMAIN',1,'hydapp.corpus.com','hydapp.corpus.com',1,'varchar','1',0,1,0,'2012-12-10 11:02:42.000000',NULL,NULL),(3,'FTP_SERVER_PORT','FTP_SERVER_PORT',1,'21','21',1,'varchar','1',0,1,0,'2012-12-10 11:02:42.000000',NULL,NULL),(4,'FTP_USERNAME','FTP_USERNAME',1,'indsys','indsys',1,'varchar','1',0,1,0,'2012-12-10 11:02:42.000000',NULL,NULL),(5,'FTP_PASSWORD','FTP_PASSWORD',1,'Ind$y$##','Ind$y$##',1,'varchar','1',0,1,0,'2012-12-10 11:02:42.000000',NULL,NULL),(6,'FROM_EMAIL_ADDRESS','From Email Address',1,'corpusdevalert@gmail.com','corpusdevalert@gmail.com',1,'varchar','1',0,1,1,'2015-04-20 12:18:43.000000',NULL,NULL),(7,'FROM_EMAIL_PASSWORD','From Email Password',1,'Corpus@123','Corpus@123',1,'varchar','1',0,1,1,'2015-04-20 12:18:46.000000',NULL,NULL),(8,'SMTP_PORT','SMTP Port',1,'587','587',1,'varchar','1',0,1,1,'2015-04-20 12:18:48.000000',NULL,NULL),(9,'SMTP_HOST_NAME','SMTP Host Name',1,'smtp.gmail.com','smtp.gmail.com',1,'varchar','1',0,1,1,'2015-04-20 12:18:51.000000',NULL,NULL),(10,'SMTP_USER_NAME','SMTP User Name',1,'corpusdevalert@gmail.com','corpusdevalert@gmail.com',1,'varchar','1',0,1,1,'2015-12-04 18:40:36.000000',NULL,NULL),(11,'SMTP_STARTTLS_ENABLE','SMTP STARTTLS Enable',1,'false','false',1,'boolean','1',0,1,1,'2015-12-04 18:40:41.000000',NULL,NULL),(12,'DOWNLOAD_PATH','DOWNLOAD_PATH',1,'/home/corpus/digital','/home/corpus/digital',1,'varchar','1',0,2,0,'2012-12-12 00:00:00.000000',NULL,NULL),(13,'CONTENT_UPLOAD_PATH','Content Upload Path',1,'/home/apache-tomcat-7.0.32/webapps/content','/home/apache-tomcat-7.0.32/webapps/content',1,'varchar','1',0,1,1,'2013-01-07 18:35:03.000000',NULL,NULL),(14,'CONTENT_URL_PATH','Content URL Path',1,'http://192.168.65.37:8080/content','http://192.168.65.37:8080/content',1,'varchar','1',0,1,1,'2013-01-07 18:35:03.000000',NULL,NULL),(16,'APP_SERVER_URL','App Server URL',1,'http://192.168.65.37:8080/appserver/rest','http://192.168.65.249:8080/middleware/rest',1,'varchar','1',0,1,1,'2012-11-30 00:00:00.000000',1,'2023-05-05 11:09:15.000000');

/*Table structure for table `app_role` */

DROP TABLE IF EXISTS `app_role`;

CREATE TABLE `app_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(16) NOT NULL,
  `role_desc` varchar(64) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `un_app_role_code` (`role_code`),
  UNIQUE KEY `UKtb401hjiwjsyonw2201mdvckq` (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_role` */

-- insert  into `app_role`(`role_id`,`role_code`,`role_desc`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,'admin','admin1',1,1,'2023-05-02 15:29:18',166,'2023-05-12 11:08:08'),(43,'TESTROLE','Test Role',1,1,'2023-05-12 00:22:25',NULL,NULL);

/*Table structure for table `app_role_privilege_mapping` */

DROP TABLE IF EXISTS `app_role_privilege_mapping`;

CREATE TABLE `app_role_privilege_mapping` (
  `role_privilege_mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`role_privilege_mapping_id`),
  UNIQUE KEY `UKjff8y2lc5mnsy03ykfp4eurdm` (`role_id`,`privilege_id`),
  KEY `FK2xjt95980l7kvtutk6iurta02` (`privilege_id`),
  CONSTRAINT `FK2xjt95980l7kvtutk6iurta02` FOREIGN KEY (`privilege_id`) REFERENCES `app_privilege` (`privilege_id`),
  CONSTRAINT `FKqjeonrg94bl60t6u2nblsfk7k` FOREIGN KEY (`role_id`) REFERENCES `app_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_role_privilege_mapping` */

-- insert  into `app_role_privilege_mapping`(`role_privilege_mapping_id`,`role_id`,`privilege_id`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,1,15,1,1,'2023-05-12 22:44:30.000000',NULL,NULL),(2,1,16,1,1,'2023-05-12 22:45:10.000000',NULL,NULL),(3,1,17,1,1,'2023-05-12 22:45:57.000000',NULL,NULL),(4,1,18,1,1,'2023-05-12 22:46:11.000000',NULL,NULL),(5,1,19,1,1,'2023-05-12 22:46:32.000000',NULL,NULL),(6,1,20,1,1,'2023-05-12 22:46:51.000000',NULL,NULL);

/*Table structure for table `app_user` */

DROP TABLE IF EXISTS `app_user`;

CREATE TABLE `app_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL,
  `display_name` varchar(64) DEFAULT NULL,
  `user_password` varchar(128) DEFAULT NULL,
  `api_key` varchar(128) NOT NULL,
  `session_id` varchar(128) DEFAULT NULL,
  `email_id` varchar(64) DEFAULT NULL,
  `mobile_no` varchar(16) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remarks` varchar(512) DEFAULT NULL,
  `reset_token` varchar(128) DEFAULT NULL,
  `reset_token_expiry_time` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `un_app_user_name` (`user_name`),
  UNIQUE KEY `UKcpt2jpnop7mcpds1sv2i5629w` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_user` */

-- insert  into `app_user`(`user_id`,`user_name`,`display_name`,`user_password`,`api_key`,`session_id`,`email_id`,`mobile_no`,`status`,`remarks`,`reset_token`,`reset_token_expiry_time`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (166,'admin','admin','$2a$10$nCcPXKLXXY.Ic6XHXjRstuNelpssnzPzNO4ILMXzyTBPO9s0NmdnG','839d4d3b-c04b-4fc7-b554-bf5b581c5263',NULL,'onlinelearning162@gmail.com','9867205329',1,'restapiremarks','d2e715c0-dc6f-4f50-a792-adff0a5bcd39:1683022386310','2023-05-02 16:03:06',1,'2023-05-02 15:43:06',1,'2023-05-02 15:43:06'),(167,'maroti','Maroti','$2a$10$xrG1rPjzGjiq5EeMHRURQODeO6cACWK0l5vZIKYQJgfHaZ4H0/s82','782b97b7-b03e-47d7-8965-421e2b77fd96',NULL,'onlinelearning162@gmail.com','9867205329',1,'New App User','',NULL,1,'2023-05-02 17:38:09',NULL,'2023-05-11 20:56:58'),(168,'subham','subham','','80ce7e74-5654-4e7b-b6ff-5ed8c0033e4f',NULL,'onlinelearning162@gmail.com','9867205329',1,'New App User','7e7d1a21-1323-410c-a3d7-f8a156675272:1683819292733','2023-05-11 21:24:52',1,'2023-05-11 21:04:52',1,'2023-05-11 21:04:52');

/*Table structure for table `app_user_login_failed_attempts` */

DROP TABLE IF EXISTS `app_user_login_failed_attempts`;

CREATE TABLE `app_user_login_failed_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_session_id` varchar(256) DEFAULT NULL,
  `app_user_id` int(11) NOT NULL,
  `failed_attempts` int(11) DEFAULT NULL,
  `last_login_time` datetime(6) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_2nhlds58qbnfh95841ddomqs5` (`app_user_id`),
  UNIQUE KEY `UK2nhlds58qbnfh95841ddomqs5` (`app_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_user_login_failed_attempts` */

-- insert  into `app_user_login_failed_attempts`(`id`,`active_session_id`,`app_user_id`,`failed_attempts`,`last_login_time`,`modified_date`) values (1,NULL,166,0,'2023-05-13 00:56:08.000000','2023-05-13 00:56:08.000000');

/*Table structure for table `app_user_role_mapping` */

DROP TABLE IF EXISTS `app_user_role_mapping`;

CREATE TABLE `app_user_role_mapping` (
  `user_role_mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_role_mapping_id`),
  KEY `fk_aurm_userid` (`user_id`),
  KEY `fk_aurm_roleid` (`role_id`),
  CONSTRAINT `fk_aurm_roleid` FOREIGN KEY (`role_id`) REFERENCES `app_role` (`role_id`),
  CONSTRAINT `fk_aurm_userid` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_user_role_mapping` */

-- insert  into `app_user_role_mapping`(`user_role_mapping_id`,`user_id`,`role_id`,`status`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (217,166,43,1,1,'2023-05-02 15:43:07',NULL,NULL),(218,167,1,1,1,'2023-05-02 17:38:09',NULL,NULL),(219,168,1,1,1,'2023-05-11 21:04:52',NULL,NULL);

/*Table structure for table `label_text` */

DROP TABLE IF EXISTS `label_text`;

CREATE TABLE `label_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdby` int(11) NOT NULL,
  `createddate` datetime(6) NOT NULL,
  `labeltext` varchar(30) DEFAULT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfx13ocdw2b7v21rx4s0lttpj3` (`language_id`),
  CONSTRAINT `FKfx13ocdw2b7v21rx4s0lttpj3` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `label_text` */

/*Table structure for table `language` */

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(36) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `iso2` varchar(2) DEFAULT NULL,
  `iso_code` varchar(32) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `name` varchar(36) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `language` */

-- insert  into `language`(`id`,`code`,`created_by`,`created_date`,`iso2`,`iso_code`,`modified_by`,`modified_date`,`name`) values (1,'HINDI',1,'2013-06-25 12:32:51.000000','hi','hin',1,'2020-07-10 15:15:00.000000','Hindi'),(2,'ENGLISH',1,'2013-06-25 12:33:11.000000','en','eng',NULL,NULL,'English'),(3,'TELUGU',1,'2016-04-06 00:00:00.000000','te','Tel',NULL,NULL,'Telugu'),(4,'TAMIL',23,'2016-07-30 09:50:52.000000','ta','Tam',NULL,NULL,'Tamil'),(5,'KANNADA',23,'2016-10-06 16:41:30.000000','kn','kan',NULL,NULL,'Kannada'),(6,'ORIYA',23,'2016-10-06 17:28:21.000000','or','ori',NULL,NULL,'Oriya'),(7,'MARATHI',23,'2016-10-06 17:39:15.000000','mr','Mar',1,'2018-09-05 15:49:34.000000','Marathi'),(8,'Others',23,'2016-10-08 17:28:19.000000',NULL,'Others',NULL,NULL,'Others'),(9,'MALAYALAM',1,'2016-12-27 11:11:53.000000','ml','MAL',NULL,NULL,'Malayalam'),(10,'GUJRATI',1,'2016-12-27 11:12:28.000000','gu','GUJ',NULL,NULL,'Gujrati'),(11,'NEPALI',1,'2016-12-27 11:12:50.000000',NULL,'NEP',NULL,NULL,'NEPALI'),(12,'PUNJABI',1,'2016-12-27 11:13:16.000000','pa','PUN',NULL,NULL,'Punjabi'),(13,'BHOJPURI',1,'2016-12-27 11:13:54.000000','hr','BHO',NULL,NULL,'Bhojpuri'),(14,'BANGALA',1,'2016-12-27 11:14:20.000000',NULL,'BAN',1,'2020-07-12 23:58:49.000000','BANGALA'),(15,'URDU',1,'2016-12-27 11:14:34.000000',NULL,'URD',NULL,NULL,'URDU'),(16,'gujarati',59,'2017-11-14 14:06:24.000000',NULL,'eng1',59,'2017-11-14 14:07:04.000000','english'),(17,'testdemo',1,'2020-07-12 23:59:28.000000',NULL,'testdemo',NULL,NULL,'testdemo'),(18,'BENGALI',1,'2020-08-10 12:57:19.000000','bn','Ben',NULL,NULL,'Bengali'),(19,'Instrumental',1,'2020-08-10 12:57:20.000000',NULL,'Ins',NULL,NULL,'Instrumental'),(20,'Persian',1,'2021-01-18 15:31:14.000000',NULL,'Per',NULL,NULL,'Persian'),(21,'Pushto; Pashto',1,'2021-01-18 15:31:24.000000',NULL,'Pus',NULL,NULL,'Pushto; Pashto'),(22,'Odia',1,'2021-01-18 15:31:28.000000',NULL,'Odi',NULL,NULL,'Odia'),(23,'Rajasthani',1,'2021-01-18 15:31:28.000000',NULL,'Raj',NULL,NULL,'Rajasthani'),(24,'Nagpuri',1,'2021-06-29 14:54:47.000000',NULL,'Nag',NULL,NULL,'Nagpuri'),(25,'hr',1,'2021-06-29 17:50:44.000000',NULL,'hr',NULL,NULL,'hr'),(26,'kn',1,'2021-06-29 17:50:45.000000',NULL,'kn',NULL,NULL,'kn'),(27,'bn',1,'2021-06-29 17:50:46.000000',NULL,'bn',NULL,NULL,'bn'),(28,'mr',1,'2021-06-29 17:50:48.000000',NULL,'mr',NULL,NULL,'mr'),(29,'pa',1,'2021-06-29 17:50:48.000000',NULL,'pa',NULL,NULL,'pa'),(30,'ml',1,'2021-06-29 17:50:48.000000',NULL,'ml',NULL,NULL,'ml'),(31,'Assamese',1,'2021-07-28 11:47:22.000000',NULL,'Ass',NULL,NULL,'Assamese'),(32,'Korean',42,'2021-07-28 16:21:20.000000',NULL,'Kor',NULL,NULL,'Korean'),(33,'as',1,'2021-08-09 16:09:21.000000',NULL,'as',NULL,NULL,'as'),(34,'hv',1,'2021-08-09 16:09:23.000000',NULL,'hv',NULL,NULL,'hv'),(35,'Spanish',42,'2021-09-16 14:12:02.000000',NULL,'Spa',NULL,NULL,'Spanish'),(36,'Haryanvi',42,'2021-09-16 14:12:23.000000',NULL,'Har',NULL,NULL,'Haryanvi'),(37,'pu',42,'2021-09-16 14:12:51.000000',NULL,'pu',NULL,NULL,'pu');

/*Table structure for table `message_type` */

DROP TABLE IF EXISTS `message_type`;

CREATE TABLE `message_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lkdrmpmq8pwcat2q77n97ul9e` (`code`),
  UNIQUE KEY `UKlkdrmpmq8pwcat2q77n97ul9e` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message_type` */

-- insert  into `message_type`(`id`,`code`,`created_by`,`created_date`,`name`,`status`) values (1,'ALERT',166,'2013-09-23 17:15:12.000000','Alert',1),(2,'WARNING',166,'2013-09-23 17:15:12.000000','Warning',1),(3,'MESSAGE',166,'2014-02-20 12:45:57.000000','Message Box',1);

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(256) NOT NULL,
  `message` varchar(256) NOT NULL,
  `sms_message` varchar(256) DEFAULT NULL,
  `priority_id` int(11) NOT NULL,
  `message_type_id` int(11) NOT NULL,
  `notification_sms_cat_id` int(11) NOT NULL,
  `has_attachment` bit(1) DEFAULT NULL,
  `attachment_path` varchar(128) DEFAULT NULL,
  `ref_key` varchar(32) NOT NULL,
  `ref_value` varchar(32) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKimc3tew5w65am4nydfybvyf3j` (`message_type_id`),
  KEY `FKg67lpggcutr8y1425o9amfxp` (`notification_sms_cat_id`),
  KEY `FK2osvd7jwwiay8y7hx9ehgln26` (`priority_id`),
  CONSTRAINT `FK2osvd7jwwiay8y7hx9ehgln26` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`),
  CONSTRAINT `FKg67lpggcutr8y1425o9amfxp` FOREIGN KEY (`notification_sms_cat_id`) REFERENCES `notification_category` (`id`),
  CONSTRAINT `FKimc3tew5w65am4nydfybvyf3j` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notification` */

-- insert  into `notification`(`id`,`subject`,`message`,`sms_message`,`priority_id`,`message_type_id`,`notification_sms_cat_id`,`has_attachment`,`attachment_path`,`ref_key`,`ref_value`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (7,'App User Password Request','Dear maroti,\r\n\r\nYour PASSWORD request\r\n\r\nhttp://localhost:9090/user-management/#/createnewPassword?username=maroti&token=0cae1d46-9bfa-4408-8d55-a21b5fda956d:1683817922167\r\n\r\nThanks.\r\n','',2,3,1,NULL,NULL,'APP_USER_ID','167',167,'2023-05-11 20:42:02.000000',NULL,NULL),(8,'App User Password Request','Dear maroti,\r\n\r\nYour PASSWORD request\r\n\r\nhttp://localhost:9090/user-management/#/createnewPassword?username=maroti&token=7863d148-8c8f-4d87-aede-1483b82d7a5c:1683818778946\r\n\r\nThanks.\r\n','',2,3,1,NULL,NULL,'APP_USER_ID','167',167,'2023-05-11 20:56:19.000000',NULL,NULL),(9,'App User Password Request','Dear subham,\r\n\r\nYour PASSWORD request\r\n\r\nhttp://localhost:9090//user-management/#/createnewPassword?username=subham&token=7e7d1a21-1323-410c-a3d7-f8a156675272:1683819292733\r\n\r\nThanks.\r\n','',2,3,1,NULL,NULL,'APP_USER_ID','168',168,'2023-05-11 21:04:52.000000',NULL,NULL);

/*Table structure for table `notification_category` */

DROP TABLE IF EXISTS `notification_category`;

CREATE TABLE `notification_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `description` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_b9ykbn517uq97715cdqq6kf2b` (`code`),
  UNIQUE KEY `UKb9ykbn517uq97715cdqq6kf2b` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notification_category` */

-- insert  into `notification_category`(`id`,`code`,`created_by`,`created_date`,`description`) values (1,'SEND_PASSWORD_MODULE',1,'2023-05-05 14:59:50.000000','Send Password'),(2,'RESET_PASSWORD_MODULE',1,'2023-05-05 14:59:50.000000','Reset Password'),(3,'CHANGE_PASSWORD_MODULE',1,'2023-05-05 14:59:50.000000','Change Password'),(4,'USER_AUTH_MODULE',1,'2023-05-05 14:59:50.000000','User Authentication Module'),(5,'OTP_NOTIFICATION',1,'2023-05-05 14:59:50.000000','OTP Notification');

/*Table structure for table `notification_details` */

DROP TABLE IF EXISTS `notification_details`;

CREATE TABLE `notification_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `mac_address` varchar(64) DEFAULT NULL,
  `sms_status` tinyint(4) NOT NULL,
  `email_status` tinyint(4) NOT NULL,
  `stb_status` tinyint(4) NOT NULL,
  `resend_count` int(11) DEFAULT NULL,
  `sms_response` varchar(128) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhvjvveyf2h7llqmwr8niiubso` (`notification_id`),
  CONSTRAINT `FKhvjvveyf2h7llqmwr8niiubso` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notification_details` */

-- insert  into `notification_details`(`id`,`notification_id`,`mac_address`,`sms_status`,`email_status`,`stb_status`,`resend_count`,`sms_response`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (7,7,'marotiuppe891@gmail.com',0,1,0,NULL,NULL,167,'2023-05-11 20:42:02.000000',NULL,NULL),(8,8,'marotiuppe891@gmail.com',0,1,0,NULL,NULL,167,'2023-05-11 20:56:19.000000',NULL,NULL),(9,9,'shubham@gmail.com',0,1,0,NULL,NULL,168,'2023-05-11 21:04:52.000000',NULL,NULL);

/*Table structure for table `notification_template_details` */

DROP TABLE IF EXISTS `notification_template_details`;

CREATE TABLE `notification_template_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_subject` varchar(256) NOT NULL,
  `email_content` varchar(256) NOT NULL,
  `sms_content` varchar(256) NOT NULL,
  `language_id` int(11) NOT NULL,
  `is_email_enabled` int(11) NOT NULL,
  `is_sms_enabled` int(11) NOT NULL,
  `message_type_id` int(11) DEFAULT NULL,
  `priority_type_id` int(11) DEFAULT NULL,
  `ext_sms_template_id` varchar(32) DEFAULT NULL,
  `notification_cat_id` int(11) DEFAULT NULL,
  `notification_template_master_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `is_stb_enabled` int(11) NOT NULL,
  `stb_content` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe29frb5rdkqi9qyqyn6fewyac` (`language_id`),
  KEY `FKg0k2u4atom9d5jcrm32kl78x8` (`message_type_id`),
  KEY `FK5e0nl2juirat8fc7k38cyi28e` (`notification_cat_id`),
  KEY `FKno225r0f7mf4qneeqwfyceau7` (`notification_template_master_id`),
  KEY `FKo9c5wka56cxydyubswxno9knh` (`priority_type_id`),
  CONSTRAINT `FK5e0nl2juirat8fc7k38cyi28e` FOREIGN KEY (`notification_cat_id`) REFERENCES `notification_category` (`id`),
  CONSTRAINT `FKe29frb5rdkqi9qyqyn6fewyac` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `FKg0k2u4atom9d5jcrm32kl78x8` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`),
  CONSTRAINT `FKno225r0f7mf4qneeqwfyceau7` FOREIGN KEY (`notification_template_master_id`) REFERENCES `notification_template_master` (`id`),
  CONSTRAINT `FKo9c5wka56cxydyubswxno9knh` FOREIGN KEY (`priority_type_id`) REFERENCES `priority` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notification_template_details` */

-- insert  into `notification_template_details`(`id`,`email_subject`,`email_content`,`sms_content`,`language_id`,`is_email_enabled`,`is_sms_enabled`,`message_type_id`,`priority_type_id`,`ext_sms_template_id`,`notification_cat_id`,`notification_template_master_id`,`created_by`,`created_date`,`modified_by`,`modified_date`,`is_stb_enabled`,`stb_content`) values (9,'Password Reset Requested','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been reset. \nYour credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been reset. \nYour credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin',2,1,1,3,1,NULL,2,1,1,'2020-05-28 17:46:36',NULL,NULL,0,''),(10,'Password Resend Requested','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been resend. \n Your credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been resend. \n Your credentials are \n UserName: #USER_NAME# \n Password: #PASSWORD# \n\n Regards,\n admin',2,1,1,3,1,NULL,1,2,1,'2020-05-28 17:46:36',NULL,NULL,0,''),(11,'Password Changed','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been Changed. \nYour UserName is : #USER_NAME# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, \n\n Your password has been Changed. \nYour UserName is : #USER_NAME# \n\n Regards,\n admin',2,1,1,3,1,NULL,3,3,1,'2020-05-28 17:46:36',NULL,NULL,0,''),(12,'Device Login Credentials','Dear #TITLE# #FIRST_NAME#, \n\n Your Login Credentials are as below. \n UserName : #USER_NAME# \n Password : #PASSWORD# \n\n Regards,\n admin','Dear #TITLE# #FIRST_NAME#, you are successfully registered. Your userid is #USER_NAME# password is #PASSWORD# thanks.',2,1,1,3,1,NULL,4,4,1,'2020-05-28 17:46:36',NULL,NULL,0,''),(13,'OTP','OTP for #FRANCHISE_NAME# APP  registration is #OTP#  generated at #DATE_TIME# . Thank you.','OTP for #FRANCHISE_NAME# APP  registration is #OTP#  generated at #DATE_TIME# . Thank you.',2,1,1,3,1,NULL,5,5,1,'2020-05-28 17:46:36',NULL,NULL,0,''),(14,'Password Reset Code','Dear #TITLE# #FIRST_NAME#, \n\n\nYour password reset code generated. \nYour Password reset code is : #PASSWORD_RESET_CODE# \nReset code Url: #PASSWORD_RESET_LINK#\n\n\nRegards,\nadmin','Dear #TITLE# #FIRST_NAME#, \n\n\nYour password reset code generated. \nYour Password reset code is : #PASSWORD_RESET_CODE# \nReset code Url: #PASSWORD_RESET_LINK#\n\n\nRegards,\nadmin',2,1,1,3,1,NULL,3,6,1,'2020-05-28 17:46:36',NULL,NULL,0,''),(15,'Login OTP','To proceed on Asianet Mobile TV plus Please use OTP #OTP#','To proceed on Asianet Mobile TV plus Please use OTP #OTP#',2,1,1,3,1,'4',5,7,1,'2020-05-28 17:46:36',42,'2021-09-08 15:52:43',0,''),(16,'App User Password Request','Dear #USER_NAME#,\r\n\r\nYour PASSWORD request\r\n\r\n#LINK#\r\n\r\nThanks.\r\n','',2,1,0,3,2,NULL,1,8,1,'2020-07-21 13:59:54',NULL,NULL,0,'');

/*Table structure for table `notification_template_master` */

DROP TABLE IF EXISTS `notification_template_master`;

CREATE TABLE `notification_template_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `name` varchar(128) NOT NULL,
  `place_holders` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_bmabwc71c2kfbs9np14l6mgt7` (`code`),
  UNIQUE KEY `UK_mk8t4ec21o1mij4ncqfcqyjkd` (`name`),
  UNIQUE KEY `UKbmabwc71c2kfbs9np14l6mgt7` (`code`),
  UNIQUE KEY `UKmk8t4ec21o1mij4ncqfcqyjkd` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notification_template_master` */

-- insert  into `notification_template_master`(`id`,`code`,`created_by`,`created_date`,`name`,`place_holders`) values (1,'USER_AUTH_PASSWORD_RESET',1,'2023-05-05 00:10:10.000000','User Auth Password Reset','#TITLE#,#FIRST_NAME#,#USER_NAME#,#PASSWORD#'),(2,'USER_AUTH_PASSWORD_RESEND',1,'2023-05-05 00:10:10.000000','User Auth Password Resend','#TITLE#,#FIRST_NAME#,#USER_NAME#,#PASSWORD#'),(3,'USER_AUTH_CHANGE_PASSWORD',1,'2023-05-05 00:10:10.000000','User Auth Change Password','#TITLE#,#FIRST_NAME#,#USER_NAME#'),(4,'USER_AUTH_CREDENTIALS_NEW',1,'2023-05-05 00:10:10.000000','User Auth Credentials New','#TITLE#,#FIRST_NAME#,#USER_NAME#,#PASSWORD#'),(5,'OTP_NOTIFICATION',1,'2023-05-05 00:10:10.000000','OTP Notification','#FRANCHISE_NAME#,#OTP#,#DATE_TIME#'),(6,'USER_AUTH_PASSWORD_RESET_CODE',1,'2023-05-05 00:10:10.000000','User Auth Password Reset Code','#TITLE#,#FIRST_NAME#,#PASSWORD_RESET_CODE#,#PASSWORD_RESET_LINK#'),(7,'LOGIN_OTP_NOTIFICATION',1,'2023-05-05 00:10:10.000000','Login OTP Notification','#OTP#,#DATE_TIME#'),(8,'APP_USER_PASSWORD',1,'2023-05-05 00:10:10.000000','App user password Creation','#USER_NAME#,#LINK#');

/*Table structure for table `priority` */

DROP TABLE IF EXISTS `priority`;

CREATE TABLE `priority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `priority` */

-- insert  into `priority`(`id`,`code`,`created_by`,`created_date`,`modified_by`,`modified_date`,`name`) values (1,'HIGH',166,'2013-09-23 17:15:08.000000',NULL,NULL,'High'),(2,'MEDIUM',166,'2013-09-23 17:15:08.000000',NULL,NULL,'Medium'),(3,'LOW',166,'2013-09-23 17:15:08.000000',NULL,NULL,'Low');

/*Table structure for table `transaction_history` */

DROP TABLE IF EXISTS `transaction_history`;

CREATE TABLE `transaction_history` (
  `tran_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(64) NOT NULL,
  `catagory` varchar(45) DEFAULT NULL,
  `change_log` varchar(9000) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`tran_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transaction_history` */

-- insert  into `transaction_history`(`tran_history_id`,`action`,`catagory`,`change_log`,`created_by`,`created_date`,`customer_id`,`modified_by`,`modified_date`) values (1,'Create Appuser','AppUser',' Appuser Created Successfully with Details :: UserName : resta2, Display Name :  resta MobileNo : 9999999999, Email : restapi1@gmail.com',1,'2023-05-02 15:43:07.000000',NULL,NULL,NULL),(2,'Create Appuser','AppUser',' Appuser Created Successfully with Details :: UserName : maroti, Display Name :  Maroti MobileNo : 8796305329, Email : marotiuppe891@gmail.com',1,'2023-05-02 17:38:09.000000',NULL,NULL,NULL),(3,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-03 20:15:18.000000',NULL,NULL,NULL),(4,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-03 20:17:17.000000',NULL,NULL,NULL),(5,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-04 23:05:05.000000',NULL,NULL,NULL),(6,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-04 23:33:17.000000',NULL,NULL,NULL),(7,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 12:47:52.000000',NULL,NULL,NULL),(8,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 14:12:44.000000',NULL,NULL,NULL),(9,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 17:42:01.000000',NULL,NULL,NULL),(10,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 17:54:01.000000',NULL,NULL,NULL),(11,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 17:56:31.000000',NULL,NULL,NULL),(12,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 18:00:27.000000',NULL,NULL,NULL),(13,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-05 18:25:14.000000',NULL,NULL,NULL),(14,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-11 20:20:00.000000',NULL,NULL,NULL),(15,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-11 20:40:55.000000',NULL,NULL,NULL),(16,'Update Appuser','AppUser',' Appuser Password Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-11 20:42:02.000000',NULL,NULL,NULL),(17,'Forgot Password','AppUser',' Appuser Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-11 20:56:18.000000',NULL,NULL,NULL),(18,'Reset Password','AppUser',' Appuser Updated Successfully with Details :: UserName : maroti, Display Name :  Maroti ,MobileNo : 8796305329, Email : marotiuppe891@gmail.com',167,'2023-05-11 20:56:58.000000',NULL,NULL,NULL),(19,'Create Appuser','AppUser',' Appuser Created Successfully with Details :: UserName : subham, Display Name :  subham MobileNo : 8796305329, Email : shubham@gmail.com',1,'2023-05-11 21:04:52.000000',NULL,NULL,NULL),(20,'Create AppRole','AppRole',' AppRole Created Successfully with Details :: RoleCode : TESTROLE, Description :  Test Role, Status : Active',1,'2023-05-12 00:22:25.000000',NULL,NULL,NULL),(21,'Update AppRole','AppRole',' AppRole Updated Successfully with Details :: RoleCode : admin, Description :  admin1, Status : Active',166,'2023-05-12 11:08:08.000000',NULL,NULL,NULL);

/*Table structure for table `user_app_profile_mapping` */

DROP TABLE IF EXISTS `user_app_profile_mapping`;

CREATE TABLE `user_app_profile_mapping` (
  `user_app_profile_mapping_id` int(11) NOT NULL AUTO_INCREMENT,
  `app_profile_option_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `app_profile_option_value` varchar(500) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`user_app_profile_mapping_id`),
  UNIQUE KEY `UKrrkr8twvg6krrfx92v5k4chsi` (`user_id`,`app_profile_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_app_profile_mapping` */

-- insert  into `user_app_profile_mapping`(`user_app_profile_mapping_id`,`app_profile_option_id`,`user_id`,`app_profile_option_value`,`created_by`,`created_date`,`modified_by`,`modified_date`) values (1,1,166,'/home/apache-tomcat-7.0.32/webapps/content/images',166,'2023-05-05 11:45:30.000000',NULL,NULL),(2,2,166,'hydapp.corpus.com',166,'2023-05-05 11:46:02.000000',NULL,NULL),(3,3,166,'21',166,'2023-05-05 11:46:13.000000',NULL,NULL),(4,4,166,'indsys',166,'2023-05-05 11:46:21.000000',NULL,NULL),(5,5,166,'Ind$y$##',166,'2023-05-05 11:46:28.000000',NULL,NULL),(6,6,166,'corpusdevalert@gmail.com',166,'2023-05-05 11:46:36.000000',NULL,NULL),(7,7,166,'Corpus@123',166,'2023-05-05 11:46:56.000000',NULL,NULL),(8,8,166,'587',166,'2023-05-05 11:47:03.000000',NULL,NULL),(9,9,166,'smtp.gmail.com',166,'2023-05-05 11:47:09.000000',NULL,NULL),(10,10,166,'corpusdevalert@gmail.com',166,'2023-05-05 11:47:16.000000',NULL,NULL),(11,11,166,'false',166,'2023-05-05 11:47:23.000000',NULL,NULL),(12,12,166,'/home/corpus/digital',166,'2023-05-05 11:47:31.000000',NULL,NULL),(13,13,166,'/home/apache-tomcat-7.0.32/webapps/content',166,'2023-05-05 11:47:37.000000',NULL,NULL),(14,14,166,'http://192.168.65.37:8080/content',166,'2023-05-05 11:47:44.000000',NULL,NULL),(15,16,166,'http://192.168.65.37:8080/appserver/rest',166,'2023-05-05 11:47:51.000000',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

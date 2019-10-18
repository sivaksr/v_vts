/*
SQLyog Community v11.52 (64 bit)
MySQL - 10.1.32-MariaDB : Database - vts
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vts` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vts`;

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone_number` varchar(250) DEFAULT NULL,
  `vehicle_number` varchar(250) DEFAULT NULL,
  `chasis_number` varchar(250) DEFAULT NULL,
  `form_police_station` varchar(250) DEFAULT NULL,
  `to_police_station` varchar(250) DEFAULT NULL,
  `document` varchar(250) DEFAULT NULL,
  `msg` longtext,
  `status` int(12) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`c_id`,`user_id`,`name`,`phone_number`,`vehicle_number`,`chasis_number`,`form_police_station`,`to_police_station`,`document`,`msg`,`status`,`created_at`,`updated_at`,`created_by`) values (1,2,'pal','9874563211','1323552','12336223','pal@gmail.com','pal@gmail.com','1571307554.docx','adfsdgd',1,'2019-10-17 12:19:14','2019-10-17 12:19:14',2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `mobile_number` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `org_password` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `region` text,
  `profile_pic` varchar(250) DEFAULT NULL,
  `status` int(12) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`u_id`,`name`,`email`,`mobile_number`,`password`,`org_password`,`address`,`region`,`profile_pic`,`status`,`created_at`,`updated_at`,`created_by`) values (1,'siva','ram@gmail.com','8099010155','e10adc3949ba59abbe56e057f20f883e','123456','kurnool','kutpally area',NULL,1,'2019-10-17 16:01:54','2019-10-16 12:20:09',0),(2,'siva','siva@gmail.com','8099010155','e10adc3949ba59abbe56e057f20f883e','123456','hyderabad','gachiboli',NULL,1,'2019-10-17 16:02:09','2019-10-17 11:48:50',0);

/*Table structure for table `vehicles` */

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `v_id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) DEFAULT NULL,
  `vehicle_number` varchar(250) DEFAULT NULL,
  `owner_name` varchar(250) DEFAULT NULL,
  `chasis_number` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `ps_region` varchar(250) DEFAULT NULL,
  `vehicle_type` varchar(250) DEFAULT NULL,
  `status` int(12) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(12) DEFAULT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `vehicles` */

insert  into `vehicles`(`v_id`,`user_id`,`vehicle_number`,`owner_name`,`chasis_number`,`city`,`ps_region`,`vehicle_type`,`status`,`created_at`,`updated_at`,`created_by`) values (1,1,'123456','ram','46655','hyd','kukatpally','Found Vehicle',1,'2019-10-18 08:23:11','2019-10-18 08:23:11',1),(2,1,'123456','siva','46655','hyd','kukatpally','Lost Vehicle',1,'2019-10-18 08:23:40','2019-10-18 08:23:40',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

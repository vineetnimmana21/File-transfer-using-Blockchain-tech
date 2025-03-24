/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - data_storage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`data_storage` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `data_storage`;

/*Table structure for table `accessor_register` */

DROP TABLE IF EXISTS `accessor_register`;

CREATE TABLE `accessor_register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `pic` text,
  `status` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `accessor_register` */

insert  into `accessor_register`(`id`,`username`,`password`,`mobile`,`mail`,`domain`,`gender`,`pic`,`status`) values (1,'madhuri','madhu','7788666657','1croreprojects.javateam@gmail.com','engineering','female','Tulips.jpg','Authorized'),(3,'brock','1234','9864646587','1croreprojects.javateam@gmail.com','history','male','Jellyfish.jpg','Authorized'),(4,'lakshman','1234','1234567890','1croreprojects.javateam@gmail.com','engineering','male','download111.jpg','Authorized'),(5,'ashwin','1234','1234567890','1croreprojects.javateam@gmail.com','engineering','male','img22.jpg','Authorized');

/*Table structure for table `key_request` */

DROP TABLE IF EXISTS `key_request`;

CREATE TABLE `key_request` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `oid` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `ekey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `key_request` */

insert  into `key_request`(`id`,`oid`,`oname`,`ekey`,`skey`) values (1,'1','padmasri','36776','878EDA4AA91C31EB'),(7,'6','ram','89474','FA67D886B2C01A55'),(8,'7','pavan','87221','17A47F0835DACCAD');

/*Table structure for table `owner_register` */

DROP TABLE IF EXISTS `owner_register`;

CREATE TABLE `owner_register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `domain` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `pic` text,
  `status` varchar(200) DEFAULT 'waiting',
  `estatus` varchar(200) DEFAULT 'waiting',
  `sstatus` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `owner_register` */

insert  into `owner_register`(`id`,`username`,`password`,`mobile`,`mail`,`domain`,`gender`,`pic`,`status`,`estatus`,`sstatus`) values (1,'padmasri','padma','9688429477','1croreprojects.javateam@gmail.com','history','female','Penguins.jpg','Authorized','Accepted','Accepted'),(4,'rock','1234','0099887766','1croreprojects.javateam@gmail.com','engineering','male','Desert.jpg','Authorized','Accepted','Accepted'),(5,'vivek','1234','1234567890','1croreprojects.javateam@gmail.com','engineering','male','download.jpg','Authorized','Accepted','Accepted'),(6,'ram','1234','1234567890','1croreprojects.javateam@gmail.com','engineering','male','download.jpg','Authorized','Accepted','Accepted'),(7,'pavan','1234','1234567890','1croreprojects.javateam@gmail.com','engineering','male','gal1.jpg','Authorized','Accepted','Accepted');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'waiting'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`id`,`name`,`mail`,`fname`,`fkey`,`status`) values ('1','madhuri','1croreprojects.javateam@gmail.com','New Text Document.txt','7810','Send'),('4','lakshman','1croreprojects.javateam@gmail.com','abc.txt','9930','Send'),('5','ashwin','1croreprojects.javateam@gmail.com','abc.txt','7095','Send');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `oid` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `ekey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `page` varchar(200) DEFAULT NULL,
  `symtoms` varchar(200) DEFAULT NULL,
  `diseases` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `fname` text,
  `hash` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'safe',
  `coowner` varchar(200) DEFAULT 'not-accept',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`id`,`oid`,`oname`,`ekey`,`skey`,`pname`,`page`,`symtoms`,`diseases`,`fkey`,`date`,`fname`,`hash`,`status`,`coowner`) values (17,'6','ram','FA67D886B2C01A55','89474','tejas','23','high fever','Malaria','9930','09/11/19','abc.txt','4043','Attacked','not-accept'),(18,'7','pavan','17A47F0835DACCAD','87221','darshan','23','high fever','Degue','7095','09/11/19','abc.txt','7410','Attacked','accept');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

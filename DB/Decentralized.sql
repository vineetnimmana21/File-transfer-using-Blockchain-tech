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
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `pic` text,
  `status` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `accessor_register` */

insert  into `accessor_register`(`id`,`username`,`password`,`mobile`,`mail`,`dob`,`gender`,`pic`,`status`) values (8,'Abi','1234','8473836389','otpsendermessage@gmail.com','12/09/1998','male','b1.jpg','Authorized'),(9,'Maran','1234','1234787770','otpsendermessage@gmail.com','12/06/1999','male','ENC.png','Authorized'),(10,'Deepa','deepa','8786867876','deepa@gmail.com','14/09/2000','female','aaa.jpg','Authorized');

/*Table structure for table `key_request` */

DROP TABLE IF EXISTS `key_request`;

CREATE TABLE `key_request` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `oid` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `ekey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `key_request` */

insert  into `key_request`(`id`,`oid`,`oname`,`ekey`,`skey`) values (9,'8','Gokul','94275','E51D345F34481596'),(10,'9','Magesh','93168','2AEEA71464003B6E'),(11,'8','Gokul','94832','A9A39AA4F4F149CF'),(12,'12','karthi','33153','F618B8D37B07ED67'),(13,'13','Lakshmi','5874','EF72BE09DC67B55F');

/*Table structure for table `owner_register` */

DROP TABLE IF EXISTS `owner_register`;

CREATE TABLE `owner_register` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `pic` text,
  `status` varchar(200) DEFAULT 'waiting',
  `estatus` varchar(200) DEFAULT 'waiting',
  `sstatus` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `owner_register` */

insert  into `owner_register`(`id`,`username`,`password`,`mobile`,`mail`,`dob`,`gender`,`pic`,`status`,`estatus`,`sstatus`) values (7,'pavan','1234','1234567890','otpsendermessage@gmail.com','engineering','male','gal1.jpg','Authorized','Accepted','Accepted'),(8,'Gokul','1234','9899645643','otpsendermessage@gmail.com','12/09/1999','male','b3.jpg','Authorized','Accepted','Accepted'),(9,'Magesh','1234','8656456546','otpsendermessage@gmail.com','12/09/1998','male','ENC.png','Authorized','Accepted','Accepted'),(12,'karthi','karthi','7890625432','karthik@gmail.com','12/09/1998','male','ENC.png','Authorized','Accepted','Accepted'),(13,'Lakshmi','lakshmi','9873957495','lakshmi@gmail.com','14/07/98','female','admin.png','Authorized','Accepted','Accepted');

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

insert  into `request`(`id`,`name`,`mail`,`fname`,`fkey`,`status`) values ('9','Maran','otpsendermessage@gmail.com','READ ME.txt','6274','Send'),('9','Maran','otpsendermessage@gmail.com','READ ME.txt','6274','Send');

/*Table structure for table `request1` */

DROP TABLE IF EXISTS `request1`;

CREATE TABLE `request1` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) DEFAULT NULL,
  `pname` varchar(222) DEFAULT NULL,
  `fname` varchar(222) DEFAULT NULL,
  `diseases` varchar(222) DEFAULT NULL,
  `symtoms` varchar(222) DEFAULT NULL,
  `fkey` varchar(222) DEFAULT NULL,
  `status` varchar(222) DEFAULT 'Waiting',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `request1` */

insert  into `request1`(`sno`,`username`,`pname`,`fname`,`diseases`,`symtoms`,`fkey`,`status`) values (4,'Deepa','Lakshmi','Application.txt','EF72BE09DC67B55F','5874','5321','Send');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `oid` varchar(200) DEFAULT NULL,
  `oname` varchar(200) DEFAULT NULL,
  `ekey` varchar(200) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `page` varchar(200) DEFAULT NULL,
  `symtoms` varchar(200) DEFAULT NULL,
  `diseases` varchar(200) DEFAULT NULL,
  `fkey` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `network` varchar(200) DEFAULT NULL,
  `node` varchar(200) DEFAULT NULL,
  `fname` text,
  `hash` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT 'safe',
  `coowner` varchar(200) DEFAULT 'not-accept',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`id`,`oid`,`oname`,`ekey`,`skey`,`pname`,`ip`,`page`,`symtoms`,`diseases`,`fkey`,`date`,`network`,`node`,`fname`,`hash`,`status`,`coowner`) values (24,'13','Lakshmi','EF72BE09DC67B55F','5874','Lakshmi','192.168.1.53','App','5874','EF72BE09DC67B55F','5321','23/03/23','net1','n1','Application.txt','-1.055663202E9','safe','not-accept'),(26,'13','Lakshmi','EF72BE09DC67B55F','5874','Lakshmi','192.168.1.53','Cloud Computing','5874','EF72BE09DC67B55F','9306','23/03/23','net2','n1','Cloud Computing Topics.txt','3.2912209E7','safe','not-accept'),(27,'13','Lakshmi','EF72BE09DC67B55F','5874','Lakshmi','192.168.1.53','Allocation','5874','EF72BE09DC67B55F','3575','23/03/23','net2','n3','Resource Allocation.txt','-8.4819984E8','safe','not-accept');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 6.0.11-alpha-community : Database - criminal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`criminal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `criminal`;

/*Table structure for table `criminals` */

DROP TABLE IF EXISTS `criminals`;

CREATE TABLE `criminals` (
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `w` varchar(100) DEFAULT NULL,
  `h` varchar(100) DEFAULT NULL,
  `boc` varchar(100) DEFAULT NULL,
  `act` varchar(100) DEFAULT NULL,
  `img` blob,
  `id1` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `criminals` */

/*Table structure for table `fir` */

DROP TABLE IF EXISTS `fir`;

CREATE TABLE `fir` (
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mplace` varchar(100) DEFAULT NULL,
  `dom` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `w` varchar(100) DEFAULT NULL,
  `h` varchar(100) DEFAULT NULL,
  `aom` varchar(100) DEFAULT NULL,
  `dor` varchar(100) DEFAULT NULL,
  `fir` varchar(100) DEFAULT NULL,
  `act` varchar(100) DEFAULT NULL,
  `id1` int(100) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `fir` */

/*Table structure for table `hotnews` */

DROP TABLE IF EXISTS `hotnews`;

CREATE TABLE `hotnews` (
  `news` varchar(100) DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `hotnews` */

/*Table structure for table `ucomplaint` */

DROP TABLE IF EXISTS `ucomplaint`;

CREATE TABLE `ucomplaint` (
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `suspect` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `crime` varchar(100) DEFAULT NULL,
  `id1` int(100) NOT NULL AUTO_INCREMENT,
  `reply` varchar(100) DEFAULT 'pending',
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `ucomplaint` */

/*Table structure for table `ucrime` */

DROP TABLE IF EXISTS `ucrime`;

CREATE TABLE `ucrime` (
  `id` varchar(100) DEFAULT NULL,
  `suspect` varchar(100) DEFAULT NULL,
  `inforname` varchar(100) DEFAULT NULL,
  `inforadd` varchar(100) DEFAULT NULL,
  `des` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `id1` int(100) NOT NULL AUTO_INCREMENT,
  `reply` varchar(100) DEFAULT 'pending',
  `status` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ucrime` */

/*Table structure for table `umissing` */

DROP TABLE IF EXISTS `umissing`;

CREATE TABLE `umissing` (
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mplace` varchar(100) DEFAULT NULL,
  `dom` varchar(100) DEFAULT NULL,
  `mdist` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `age` varchar(100) DEFAULT NULL,
  `w` varchar(100) DEFAULT NULL,
  `h` varchar(100) DEFAULT NULL,
  `boc` varchar(100) DEFAULT NULL,
  `addm` varchar(100) DEFAULT NULL,
  `dor` varchar(100) DEFAULT NULL,
  `img` blob,
  `id1` int(100) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) DEFAULT 'pending',
  `status1` varchar(100) DEFAULT 'pending',
  PRIMARY KEY (`id1`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `umissing` */

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `colony` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`name`,`password`,`mail`,`phone`,`gender`,`address`,`colony`) values (7,'hari','hari','hari@gmail.com','9897969594','male','bnglr','bbb');

/*Table structure for table `visitors` */

DROP TABLE IF EXISTS `visitors`;

CREATE TABLE `visitors` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `colony` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `visitors` */

insert  into `visitors`(`id`,`name`,`password`,`mail`,`phone`,`gender`,`address`,`colony`) values (1,'sasi','sasi','sasi@gmail.com','9897969594','male','tpt','nnn');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*
SQLyog Ultimate v8.55 
MySQL - 5.6.14 : Database - fashiondb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fashiondb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fashiondb`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NewIndex1` (`categoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`categoryName`) values (1,'action'),(2,'comedy'),(3,'kids'),(4,'tragedy');

/*Table structure for table `ds` */

DROP TABLE IF EXISTS `ds`;

CREATE TABLE `ds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(23) NOT NULL,
  `lastName` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ds` */

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL,
  `totSal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`salary`,`totSal`) values (1,'Amal',15000,NULL),(2,'Ruwan',20000,NULL),(3,'Sahan',8000,NULL),(4,'Chamila',8000,NULL);

/*Table structure for table `fashion_member` */

DROP TABLE IF EXISTS `fashion_member`;

CREATE TABLE `fashion_member` (
  `email` varchar(64) NOT NULL,
  `firstName` varchar(32) NOT NULL,
  `lastName` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registeredDate` date NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fashion_member` */

insert  into `fashion_member`(`email`,`firstName`,`lastName`,`password`,`registeredDate`) values ('dulmini1992@gmail.com','Dulmini','Senanayake','kitty','2017-01-14'),('Nethmi@gmail.com','Nethmi','Patabandi','abc','2017-01-14');

/*Table structure for table `fashion_role` */

DROP TABLE IF EXISTS `fashion_role`;

CREATE TABLE `fashion_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberEmail` varchar(64) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fashion_role` (`memberEmail`),
  CONSTRAINT `FK_fashion_role` FOREIGN KEY (`memberEmail`) REFERENCES `fashion_member` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `fashion_role` */

insert  into `fashion_role`(`id`,`memberEmail`,`roleId`) values (1,'dulmini1992@gmail.com',2),(2,'nethmi@gmail.com',1);

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(32) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_item` (`categoryId`),
  CONSTRAINT `FK_item` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item` */

/*Table structure for table `movie` */

DROP TABLE IF EXISTS `movie`;

CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(50) NOT NULL,
  `categoryId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_movie` (`categoryId`),
  CONSTRAINT `FK_movie` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `movie` */

/*Table structure for table `profit` */

DROP TABLE IF EXISTS `profit`;

CREATE TABLE `profit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(30) NOT NULL,
  `netProfit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `profit` */

insert  into `profit`(`id`,`month`,`netProfit`) values (1,'Jan',12000),(2,'Feb',13000),(3,'March',15000),(4,'April',16000);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(55) NOT NULL,
  `registeredDate` date NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`firstName`,`lastName`,`registeredDate`,`age`) values (1,'Suranga','S','2017-01-01',12),(2,'N','P','2017-01-02',18),(3,'S','S','2017-01-03',19),(4,'shs','dfg','2017-01-04',24),(5,'qqq','bbb','2017-01-05',24);

/*Table structure for table `sub_category` */

DROP TABLE IF EXISTS `sub_category`;

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sub_category` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `regNo` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.16-nt : Database - healthcare
*********************************************************************
Server version : 5.0.16-nt
*/


create database if not exists `healthcare`;

USE `healthcare`;

/*Table structure for table `doctorregister` */

DROP TABLE IF EXISTS `doctorregister`;

CREATE TABLE `doctorregister` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patientfiles` */

DROP TABLE IF EXISTS `patientfiles`;

CREATE TABLE `patientfiles` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  `filename` varchar(80) NOT NULL,
  `cdate` date default NULL,
  `cfile` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patientregister` */

DROP TABLE IF EXISTS `patientregister`;

CREATE TABLE `patientregister` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `pincode` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `patientsuggestion` */

DROP TABLE IF EXISTS `patientsuggestion`;

CREATE TABLE `patientsuggestion` (
  `id` int(11) NOT NULL auto_increment,
  `pname` varchar(80) NOT NULL,
  `filename` varchar(80) NOT NULL,
  `cdate` varchar(80) NOT NULL,
  `cfile` longtext NOT NULL,
  `suggestion` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

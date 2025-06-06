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

/*Data for the table `doctorregister` */

insert into `doctorregister` values 
('Nandana','Nandana@7','meghana.datapoint@gmail.com','9632587412','Vijayawada','11/06/2000','Female','521163','Vijayawada','activated','DVwckpZN3bYwqGhN',1),
('Meghana','Meghana@7','meghana.datapoint@gmail.com','9632587412','Hyd','11/05/1995','female','521165','Hyd','activated','DPuO5tdaOnDPfL7f',2);

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

/*Data for the table `patientfiles` */

insert into `patientfiles` values 
(1,'Nandana','python','2020-11-19','1+cWUppI866bufKW58D4Vr8Q8ilr0wH5txpdDX1MnaoSCK8ESeDrxhHCLFYO3Pdo7HKrmJLRqHZsNRv2fMHPRXzF/ZmBH3q4tY7sBKQf8uLIDGHZzHlBQkYWh5cwbx31g3g1Bw5HHWyaieO25gLzH7NH4x83EsQD6II2JR228p8Kt9tuZGCsEpP1rud02YWSTsNl42EAJibS5Ec0ZON+/IklKlCX19Qm'),
(2,'Nandana','Data','2020-11-19',''),
(3,'Nandana','Datas','2020-11-19','2HxemV9P1tFnrbhKq/RggiPLVURDxoEhJRSsVGbkjs8RyACHcD0y4p/RkcF9YpwxC+0dl936Xuvk\r\nQcUDapZ3PI1Cb0wbOeNVwIi/LoPd5EJiKEVvDQjNQo1mTnNJ4esk5w7VGJQNkE1oe+15XzasgURy\r\n1t0Atg+Jg22Q2Ua0qm+Gt801gHxOxdcEWgYfBAR3ql0NwAu6Pi/joLCNjrERct0KrM5p8Rb2li+9\r\nQEMvdXMOkpDaJVddU+fruO9h3qHZqikCXSEzWlOGzGKXilp53eLcc7sF/tnDuRGq2q2VkqKarfVS\r\nbWsccAe4gd3FZCHv4+BoJZnPtrMRe2SkL2hrQj2evDZ0eyrCcpUhklBG350cRjExDtIbqH9BISdA\r\nnawDBPnjnq5s1zM9mMjBoJdBzBlyhOzURgrXtVkt6LQrozHXeH1dtJk8F0RRKrBQz1PVmKtMZn7p\r\nGSoxHBjTQZTxCoIminCP+zmU0W63dx3Xuw6hHdk64/YRMwMrNNN9hj32SHD+UVuKh8PLGc7Qs7/O\r\nzA=='),
(4,'Nandana','Python','2020-11-20','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'),
(5,'Arumalla','Java','2020-11-20','bcO231c7se5CE2g2Dn5nWGC5q7cDR7YIkTsMAgUaUvENlsb1YblsryY4qkQbVxHvB2SGh7xQgp87\r\nzRwX3m2vDoopePQT8NPAiOWsswM97n/Jxp1SBh9/KSPW/eYzSLRobsJTpB+EL7mgZeZb6/Frzl0i\r\nJeyiPwPy0s5MxdFZ6fCUuYXOEIGHsBC+M5uQSlvUGOeXlxthhZSeuNJbIr2lv4UFQsauVkSZIDB3\r\nI8Qe+H7Z9c+dpetmuiut2W007Yx0YMX5avPPJRRSNbenJWJ1eOANZRsfK3eEc/rD5F/sD+k=');

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

/*Data for the table `patientregister` */

insert into `patientregister` values 
('Nandana','Nandana@7','meghana.datapoint@gmail.com','9632587412','Vijayawada','11/06/2000','Female','521163','Vijayawada','activated','DGFfnuiolWTfsSkq',1),
('Arumalla','Arumalla@7','meghana.datapoint@gmail.com','9632587412','Hyd','11/05/1995','female','521165','Hyd','activated','D4AhHBtl9fMj41uD',2);

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

/*Data for the table `patientsuggestion` */

insert into `patientsuggestion` values 
(5,'Arumalla','Java','2020-11-20','bcO231c7se5CE2g2Dn5nWGC5q7cDR7YIkTsMAgUaUvENlsb1YblsryY4qkQbVxHvB2SGh7xQgp87zRwX3m2vDoopePQT8NPAiOWsswM97n/Jxp1SBh9/KSPW/eYzSLRobsJTpB EL7mgZeZb6/Frzl0iJeyiPwPy0s5MxdFZ6fCUuYXOEIGHsBC M5uQSlvUGOeXlxthhZSeuNJbIr2lv4UFQsauVkSZIDB3I8Qe H7Z9c dpetmuiut2W007Yx0YMX5avPPJRRSNbenJWJ1eOANZRsfK3eEc/rD5F/sD k=','cold act');

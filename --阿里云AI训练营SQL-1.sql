--阿里云AI训练营SQL练习题3.1部分.sql

CREATE DATABASE IF NOT EXIST `Practice` DEFAULT CHARACTER SET UTF8;

USE `Practoice`;

DROP TABLE IF EXIST `Addressbook`;

CREATE TABLE`Addressbook`(

   `regist_no`int(11) NOT NULL,
   `name`varchar(128) NOT NULL,
   `address`varchar(128) NOT NULL,
   `tel_no`char(10) DEFAULT NULL,
   `mail_address`char(20) DEFAULT NULL,

   PRIMARY KEY (`regist_no`);
   )ENGINE=InnoDB DEFAULT CHARSET=UTF8;

ALTER TABLE Addressbook ADD COLUMN `postal_code` CHAR(8)DEFAULT NULL;

--DROP TABLE `Addressbook`;
--3.4 编写SQL语句来删除Addressbook表
--删除后无法恢复，需要利用CREATE来重新创建新表
--ALTER TABLE < 表名 > ADD COLUMN < 列的定义 >;添加
--ALTER TABLE < 表名 > DROP COLUMN < 列名 >;删除



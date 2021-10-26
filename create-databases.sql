DROP DATABASE IF EXISTS `sql`;
CREATE DATABASE `sql`; 
USE `sql`;

CREATE TABLE `broker` (
  `broker_id` int NOT NULL,
  `broker_name` varchar(50) NOT NULL,
  PRIMARY KEY (`broker_id`)
) 
INSERT INTO `broker` VALUES (1,'Ted');
INSERT INTO `broker` VALUES (2,'Mard');
INSERT INTO `broker` VALUES (3,'Aaron');
INSERT INTO `broker` VALUES (4,'Luke');

CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `amount` int NOT NULL,
  `broker_id` int NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_broker_id` (`broker_id`),
  CONSTRAINT `fk_broker_id` FOREIGN KEY (`broker_id`) REFERENCES `broker` (`broker_id`) ON DELETE RESTRICT ON UPDATE CASCADE
)
INSERT INTO `customer` VALUES (1,'sam','3000','4');
INSERT INTO `customer` VALUES (2,'john','4000','2');
INSERT INTO `customer` VALUES (3,'mack','5000','2');
INSERT INTO `customer` VALUES (4,'test','3000','3');
INSERT INTO `customer` VALUES (5,'june','2000','3');
INSERT INTO `customer` VALUES (6,'mike','4000','1');
INSERT INTO `customer` VALUES (7,'annie','4000','2');
INSERT INTO `customer` VALUES (8,'michael','2000','1');
INSERT INTO `customer` VALUES (9,'tom','2000','4');
INSERT INTO `customer` VALUES (10,'jason','6000','4');






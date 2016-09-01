-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for mortgage_uat
CREATE DATABASE IF NOT EXISTS `mortgage_uat` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mortgage_uat`;


-- Dumping structure for table mortgage_uat.mortgage
CREATE TABLE IF NOT EXISTS `mortgage` (
  `Mortgage_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL DEFAULT '0',
  `Loan_Amount` float NOT NULL DEFAULT '0',
  `Year` int(4) NOT NULL DEFAULT '0',
  `Term` int(3) NOT NULL DEFAULT '0',
  `User_ID` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Mortgage_ID`),
  KEY `FK1_User_ID` (`User_ID`),
  CONSTRAINT `FK1_User_ID` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mortgage_uat.mortgage: ~0 rows (approximately)
/*!40000 ALTER TABLE `mortgage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mortgage` ENABLE KEYS */;


-- Dumping structure for table mortgage_uat.overpayment
CREATE TABLE IF NOT EXISTS `overpayment` (
  `Overpayment_ID` int(12) NOT NULL AUTO_INCREMENT,
  `Overp_amount` float NOT NULL DEFAULT '0',
  `Overp_year` int(4) NOT NULL DEFAULT '0',
  `Mortgage_ID` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Overpayment_ID`),
  KEY `FK2_Mortgage_ID` (`Mortgage_ID`),
  CONSTRAINT `FK2_Mortgage_ID` FOREIGN KEY (`Mortgage_ID`) REFERENCES `mortgage` (`Mortgage_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mortgage_uat.overpayment: ~0 rows (approximately)
/*!40000 ALTER TABLE `overpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `overpayment` ENABLE KEYS */;


-- Dumping structure for table mortgage_uat.user
CREATE TABLE IF NOT EXISTS `user` (
  `User_ID` int(15) NOT NULL AUTO_INCREMENT,
  `Email_Address` varchar(40) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table mortgage_uat.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

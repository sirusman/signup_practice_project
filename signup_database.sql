-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for globe_bank
CREATE DATABASE IF NOT EXISTS `globe_bank` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `globe_bank`;


-- Dumping structure for table globe_bank.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `position` int(3) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `fk_subject_id` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table globe_bank.pages: ~10 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
	(1, 1, 'Globe Bank', 1, 1, NULL),
	(2, 1, 'History', 2, 1, NULL),
	(3, 1, 'Leadership', 3, 1, NULL),
	(4, 1, 'Contact Us', 4, 1, NULL),
	(5, 2, 'Banking', 1, 1, NULL),
	(6, 2, 'Credit Cards', 2, 1, NULL),
	(7, 2, 'Mortgages', 3, 1, NULL),
	(8, 3, 'Checking', 1, 1, NULL),
	(9, 3, 'Loans', 2, 1, NULL),
	(10, 3, 'Merchant Services', 3, 1, NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table globe_bank.sign_up
CREATE TABLE IF NOT EXISTS `sign_up` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 COMMENT='	';

-- Dumping data for table globe_bank.sign_up: ~18 rows (approximately)
/*!40000 ALTER TABLE `sign_up` DISABLE KEYS */;
INSERT INTO `sign_up` (`Id`, `FirstName`, `LastName`, `Email`, `Password`, `Gender`) VALUES
	(1, 'fghjk', 'gasjh', 'tahasdjksad', 'asdf', 'male'),
	(2, 'fghjk', 'gasjh', 'tahasdjksad', 'cvb', 'male'),
	(3, 'fghjk', 'gasjh', 'tahasdjksad', 'cvb', 'male'),
	(4, 'Ali', 'Hassan', 'Ali@gmail.com', 'qwerty', 'male'),
	(5, 'Ali', 'Hassan', 'Ali@gmail.com', 'zxcv', 'male'),
	(6, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(7, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(8, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(9, '', '', '', 'asdf', ''),
	(10, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(11, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(12, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(13, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(14, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(15, 'Azam', 'Ali', 'Azam@gmail.com', '123qwwe', 'male'),
	(25, 'shahbaz', 'ali', 'shah@gmail.com', '12345', 'male'),
	(27, '4565$@34', 'bjde3234@', 'taha@yahoo.com', 'asdf', 'female'),
	(28, 'Inam', 'Munir', 'inam@gmail.com', '1234', 'male');
/*!40000 ALTER TABLE `sign_up` ENABLE KEYS */;


-- Dumping structure for table globe_bank.subjects
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) DEFAULT NULL,
  `position` int(3) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table globe_bank.subjects: ~6 rows (approximately)
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
	(1, 'Globe_Bank', 2, 1),
	(2, 'Business', 1, 1),
	(3, 'Globe ', 1, 1),
	(4, 'Commercial', 1, 0),
	(5, 'Small Business', 5, 1),
	(6, 'Toprated.pk', 6, 1);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

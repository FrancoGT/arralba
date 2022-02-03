-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para lavanderia
CREATE DATABASE IF NOT EXISTS `lavanderia` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `lavanderia`;

-- Volcando estructura para tabla lavanderia.laundry
CREATE TABLE IF NOT EXISTS `laundry` (
  `laun_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `laun_priority` int(11) NOT NULL,
  `laun_weight` int(11) NOT NULL,
  `laun_date_received` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `laun_claimed` tinyint(4) NOT NULL DEFAULT '0',
  `laun_type_id` int(11) NOT NULL,
  PRIMARY KEY (`laun_id`),
  KEY `laun_type_id` (`laun_type_id`),
  CONSTRAINT `laundry_ibfk_1` FOREIGN KEY (`laun_type_id`) REFERENCES `laundry_type` (`laun_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lavanderia.laundry: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `laundry` DISABLE KEYS */;
INSERT INTO `laundry` (`laun_id`, `customer_name`, `laun_priority`, `laun_weight`, `laun_date_received`, `laun_claimed`, `laun_type_id`) VALUES
	(15, 'Carolina Sanches', 1, 20, '2020-03-28 14:50:21', 1, 2),
	(16, 'Juan Lopez', 2, 10, '2020-03-28 14:48:04', 0, 2),
	(17, 'Luis Miguel', 1, 2, '2020-03-29 02:01:43', 1, 1);
/*!40000 ALTER TABLE `laundry` ENABLE KEYS */;

-- Volcando estructura para tabla lavanderia.laundry_type
CREATE TABLE IF NOT EXISTS `laundry_type` (
  `laun_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `laun_type_desc` varchar(50) NOT NULL,
  `laun_type_price` float NOT NULL,
  PRIMARY KEY (`laun_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lavanderia.laundry_type: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `laundry_type` DISABLE KEYS */;
INSERT INTO `laundry_type` (`laun_type_id`, `laun_type_desc`, `laun_type_price`) VALUES
	(1, 'Fresadas', 20),
	(2, 'Ropas', 8),
	(3, 'Lavado Secado', 10);
/*!40000 ALTER TABLE `laundry_type` ENABLE KEYS */;

-- Volcando estructura para tabla lavanderia.sales
CREATE TABLE IF NOT EXISTS `sales` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_customer_name` varchar(100) NOT NULL,
  `sale_type_desc` varchar(50) NOT NULL,
  `sale_date_paid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sale_laundry_received` datetime NOT NULL,
  `sale_amount` float NOT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lavanderia.sales: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`sale_id`, `sale_customer_name`, `sale_type_desc`, `sale_date_paid`, `sale_laundry_received`, `sale_amount`) VALUES
	(1, 'Carolina Sanches', 'Ropas', '2020-03-28 14:50:21', '2020-03-28 09:47:10', 160),
	(2, 'Luis Miguel', 'Fresadas', '2020-03-29 02:01:43', '2020-03-28 17:22:37', 40);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Volcando estructura para tabla lavanderia.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_account` varchar(50) NOT NULL,
  `user_password` varchar(35) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla lavanderia.user: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `user_account`, `user_password`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

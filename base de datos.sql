-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.1.0-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para eventos
CREATE DATABASE IF NOT EXISTS `eventos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `eventos`;

-- Volcando estructura para tabla eventos.mascotas
CREATE TABLE IF NOT EXISTS `mascotas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '0',
  `ubicacion` varchar(50) NOT NULL DEFAULT '0',
  `raza` varchar(50) NOT NULL DEFAULT '0',
  `precio` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla eventos.mascotas: ~5 rows (aproximadamente)
DELETE FROM `mascotas`;
INSERT INTO `mascotas` (`id`, `nombre`, `ubicacion`, `raza`, `precio`) VALUES
	(1, 'Firulais', 'Ocotal, Nueva Segovia', 'Labrador', '100$'),
	(6, 'Cheto', 'Ocotal, Nueva Segovia', 'Minina', '90$'),
	(7, 'Chester', 'Ocotal, Nueva Segovia', 'Pequines', '90$'),
	(8, 'Ronny', 'Managua, Managua', 'Pastor Aleman', '150$'),
	(9, 'Juma', 'Esteli, Esteli', 'Chiuahua', '200$');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

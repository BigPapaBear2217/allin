-- --------------------------------------------------------
-- Host:                         game-db-fr-1.iceline.host
-- Versione server:              10.4.13-MariaDB-1:10.4.13+maria~bionic-log - mariadb.org binary distribution
-- S.O. server:                  debian-linux-gnu
-- HeidiSQL Versione:            12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dump della struttura di tabella s25664_sirecvorpsv.ss_admin
CREATE TABLE IF NOT EXISTS `ss_admin` (
  `identifier` varchar(50) NOT NULL DEFAULT '',
  `discord` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `warnings` int(11) DEFAULT 0,
  `banned` int(11) NOT NULL DEFAULT 0,
  `playTime` int(11) DEFAULT 0,
  `lastJoin` int(11) DEFAULT 0,
  `lastLeave` int(11) DEFAULT NULL,
  `banTime` int(50) DEFAULT NULL,
  `banReason` varchar(200) DEFAULT NULL,
  `banId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`identifier`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- L’esportazione dei dati non era selezionata.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

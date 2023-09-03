-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping structure for table vorpv2.camp
CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` longtext DEFAULT NULL,
  `playername` longtext DEFAULT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `charidentifier` int(11) DEFAULT NULL,
  `issuer` longtext DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;



CREATE TABLE IF NOT EXISTS `container` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `items` longtext NOT NULL DEFAULT '{}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ID` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `container` (`id`, `name`, `items`) VALUES
	(1, 'police', '[]'),
  (2, 'miner', '[]'),
  (3, 'scierie', '[]'),
  (4, 'medicsd', '[]'),
  (5, 'ecurie', '[]'),
  (6, 'f_cereale', '[]'),
  (7, 'weapon_j', '[]'),
  (8, 'sucrerie', '[]'),
  (9, 'g_distillerie', '[]'),
  (10, 'palais_g', '[]'),
  (11, 'ecurie_g', '[]'),  
  (12, 'fermefruit_g', '[]'),
  (13, 'med_g', '[]'),
  (14, 'orfevre_g', '[]'),
  (15, 'saloon_g', '[]'),
  (16, 'annim_g', '[]'),
  (17, 'milice', '[]'),
  (28, 'kwanita', '[]'),
  (18, 'us_distillerie', '[]'),
  (19, 'juge_st', '[]')
   (20, 'gouvernement', '[]')
   (21, 'lakota', '[]')
  ;

CREATE TABLE IF NOT EXISTS `society` (
  `job` longtext DEFAULT NULL,
  `jobgrade` int(11) DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `society` (`job`, `jobgrade`, `salary`) VALUES
	('police', 0, 0),
  ('police', 1, 0),
  ('police', 2, 0),
  ('police', 3, 0),

  ('miner', 0, 0),
  ('miner', 1, 0),
  ('miner', 2, 0),
  ('miner', 3, 0),

  ('scierie', 0, 0),
  ('scierie', 1, 0),
  ('scierie', 2, 0),
  ('scierie', 3, 0),

  ('ecurie', 0, 0),
  ('ecurie', 1, 0),
  ('ecurie', 2, 0),
  ('ecurie', 3, 0),
  ('ecurie', 4, 0),
  ('ecurie', 5, 0),

  ('f_cereale', 0, 0),
  ('f_cereale', 1, 0),
  ('f_cereale', 2, 0),
  ('f_cereale', 3, 0),

  ('weapon_j', 0, 0),
  ('weapon_j', 1, 0),
  ('weapon_j', 2, 0),
  ('weapon_j', 3, 0),

  ('sucrerie', 0, 0),
  ('sucrerie', 1, 0),
  ('sucrerie', 2, 0),
  ('sucrerie', 3, 0),

  ('g_distillerie', 0, 0),
  ('g_distillerie', 1, 0),
  ('g_distillerie', 2, 0),
  ('g_distillerie', 3, 0),


  ('palais_g', 0, 0),
  ('palais_g', 1, 0),
  ('palais_g', 2, 0),
  ('palais_g', 3, 0),

  ('ecurie_g', 0, 0),
  ('ecurie_g', 1, 0),
  ('ecurie_g', 2, 0),
  ('ecurie_g', 3, 0),

  ('fermefruit_g', 0, 0),
  ('fermefruit_g', 1, 0),
  ('fermefruit_g', 2, 0),
  ('fermefruit_g', 3, 0),

  ('med_g', 0, 0),
  ('med_g', 1, 0),
  ('med_g', 2, 0),
  ('med_g', 3, 0),

  ('orfevre_g', 0, 0),
  ('orfevre_g', 1, 0),
  ('orfevre_g', 2, 0),
  ('orfevre_g', 3, 0),
  
  ('saloon_g', 0, 0),
  ('saloon_g', 1, 0),
  ('saloon_g', 2, 0),
  ('saloon_g', 3, 0),
  
  ('annim_g', 0, 0),
  ('annim_g', 1, 0),
  ('annim_g', 2, 0),
  ('annim_g', 3, 0),


  ('FAR', 0, 0),
  ('FAR', 1, 0),
  ('FAR', 2, 0),
  ('FAR', 3, 0),
  ('FAR', 4, 0),
  ('FAR', 5, 0),
  ('FAR', 6, 0),
  ('FAR', 7, 0),
  ('FAR', 8, 0),
  ('FAR', 9, 0),
  ('FAR', 10, 0),
  ('FAR', 11, 0),
  ('FAR', 12, 0),

  ('kwanita', 0, 0),
  ('kwanita', 1, 0),
  ('kwanita', 2, 0),
  ('kwanita', 3, 0),
  ('kwanita', 4, 0),
  ('kwanita', 5, 0),
  ('kwanita', 6, 0),

  

  ('kwanita_0', 0, 0),

  
  ('us_distillerie', 0, 0),
  ('us_distillerie', 1, 0),
  ('us_distillerie', 2, 0),
  ('us_distillerie', 3, 0),

  ('juge_st', 0, 0),
  ('juge_st', 1, 0),
  ('juge_st', 2, 0),
  ('juge_st', 3, 0),

  ('gouvernement', 0, 0),
  ('gouvernement', 1, 0),
  ('gouvernement', 2, 0),
  ('gouvernement', 3, 0);

  ('lakota', 0, 0),
  ('lakota', 1, 0),
  ('lakota', 2, 0),
  ('lakota', 3, 0),
  ('lakota', 4, 0),
  ('lakota', 5, 0),
  ('lakota', 6, 0),

  ('lakota_0', 0, 0),

CREATE TABLE IF NOT EXISTS `society_ledger` (
  `job` longtext DEFAULT NULL,
  `ledger` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `society_ledger` (`job`, `ledger`) VALUES
	('police', 0),
	('miner', 0),
  ('scierie', 0),
	('ecurie', 0),
	('f_cereale', 0),
  ('weapon_j', 0),
	('sucrerie', 0),
	('g_distillerie', 0),
	('palais_g', 0),
  ('ecurie_g', 0),
	('fermefruit_g', 0),
	('med_g', 0),
	('orfevre_g', 0),
  ('saloon_g', 0),
	('annim_g', 0),
	('FAR', 0),
	('kwanita', 0),
  ('kwanita_0', 0),
	('us_distillerie', 0),
	('juge_st', 0),
  ('lakota', 0)
	('gouvernement', 0);

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
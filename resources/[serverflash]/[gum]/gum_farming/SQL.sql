CREATE TABLE `farming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steam` varchar(50) NOT NULL,
  `charid` varchar(255) DEFAULT NULL,
  `plant_center` varchar(255) DEFAULT '{}',
  `herbs` longtext NOT NULL DEFAULT '{}',
  `protect` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;


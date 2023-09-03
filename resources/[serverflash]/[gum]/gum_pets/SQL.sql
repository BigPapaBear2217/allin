CREATE TABLE `pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) DEFAULT NULL,
  `charid` int DEFAULT '0',
  `selected` int DEFAULT '0',
  `pets_info` varchar(3000) DEFAULT NULL,
  `is_dead` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `real_logic_pets` (
  `update_time` int DEFAULT '0'
) ENGINE=InnoDB;

ALTER TABLE pets ADD favorite longtext NOT NULL DEFAULT("{}");
INSERT INTO `real_logic_pets` (`update_time`) VALUES (0);

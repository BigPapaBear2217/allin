CREATE TABLE `horses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `charid` int NOT NULL,
  `selected` int NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `components` longtext NOT NULL DEFAULT '{}',
  `exp` int NOT NULL DEFAULT '0',
  `items` longtext NOT NULL DEFAULT '{}',
  `weapons` longtext NOT NULL DEFAULT '{}',
  `age` varchar(50) DEFAULT '0',
  `breeding` varchar(255) DEFAULT '0',
  `sex` varchar(255) DEFAULT NULL,
  `isdead` varchar(255) DEFAULT '0',
  `state` varchar(255) DEFAULT '{}',
  PRIMARY KEY (`id`),
  KEY `FK_horses_characters` (`charid`),
  KEY `model` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE `wagons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(40) NOT NULL,
  `charid` int NOT NULL,
  `selected` int NOT NULL DEFAULT '0',
  `model` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `items` longtext NOT NULL DEFAULT '{}',
  `weapons` longtext NOT NULL DEFAULT '{}',
  `comp_extras` varchar(500) DEFAULT '{"1":"1","10":"1","20":"1","8":"1","6":"1","11":"1","7":"1","15":"1","18":"1","19":"1","16":"1","17":"1","3":"1","2":"1","5":"1","4":"1","13":"1","12":"1","9":"1","14":"1"}',
  `comp_lantern` varchar(255) DEFAULT 'none',
  `comp_liveries` varchar(255) DEFAULT '-1',
  `comp_tints` varchar(255) DEFAULT '-1',
  `addon_ability` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_horses_characters` (`charid`),
  KEY `model` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=911;


CREATE TABLE `horses_breeding` (
  `identifier` varchar(255) NOT NULL,
  `charid` varchar(255) NOT NULL,
  `reward_model` varchar(255) DEFAULT '0',
  `reward_sex` varchar(255) DEFAULT '0',
  `breeding_id_horse_1` varchar(255) DEFAULT '0',
  `breeding_name_horse_1` varchar(255) DEFAULT '0',
  `breeding_model_horse_1` varchar(255) DEFAULT '0',
  `breeding_id_horse_2` varchar(255) DEFAULT '0',
  `breeding_name_horse_2` varchar(255) DEFAULT '0',
  `breeding_model_horse_2` varchar(255) DEFAULT '0',
  `breeding_time` varchar(50) DEFAULT '0'
) ENGINE=InnoDB;

CREATE TABLE `real_logic_horses` (
  `update_time` int(11) DEFAULT 0
) ENGINE=InnoDB;

INSERT INTO `real_logic_horses` (`update_time`) VALUES (0);
ALTER TABLE wagons ADD damage_wheel int NOT NULL DEFAULT(0);
ALTER TABLE wagons ADD health_cart int NOT NULL DEFAULT(1000);
ALTER TABLE wagons ADD animals longtext NOT NULL DEFAULT("{}");
ALTER TABLE horses_breeding ADD exp longtext NOT NULL DEFAULT("0");
ALTER TABLE wagons ADD addonArray longtext NOT NULL DEFAULT("{}");
ALTER TABLE horses ADD clothes longtext NOT NULL DEFAULT("{}");
ALTER TABLE horses ADD courage int NOT NULL DEFAULT(0);
ALTER TABLE horses ADD cityPosition int NOT NULL DEFAULT(0);
ALTER TABLE wagons ADD cityPosition int NOT NULL DEFAULT(0);
ALTER TABLE horses ADD spotPosition int NOT NULL DEFAULT(0);
ALTER TABLE wagons ADD spotPosition int NOT NULL DEFAULT(0);
ALTER TABLE horses ADD housePosition int NOT NULL DEFAULT(0);
ALTER TABLE wagons ADD housePosition int NOT NULL DEFAULT(0);
ALTER TABLE horses ADD status longtext NOT NULL DEFAULT("{}");
ALTER TABLE horses ADD friendly int NOT NULL DEFAULT(0);
ALTER TABLE wagons ADD comp_propset varchar(200) NOT NULL DEFAULT("none");

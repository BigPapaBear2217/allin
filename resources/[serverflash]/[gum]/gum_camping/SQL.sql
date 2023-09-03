CREATE TABLE `camping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `center` longtext  DEFAULT '{}',
  `identifier` varchar(255)  NOT NULL DEFAULT '0',
  `charid` varchar(255)  NOT NULL DEFAULT '0',
  `shared` longtext  DEFAULT '{}',
  `money` longtext  DEFAULT '0',
  `storage` longtext  DEFAULT '{}',
  `storage_w` longtext  DEFAULT '{}',
  `camp_prop` longtext  DEFAULT '{}',
  `camp_fire` longtext  DEFAULT '{}',
  `damage` int(255) DEFAULT 100,
  `damageTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1;


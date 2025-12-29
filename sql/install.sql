
CREATE TABLE `glpi_plugin_iframe_iframes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Formato hexadecimal',
  `date_creation` TIMESTAMP NULL DEFAULT NULL,
  `date_mod` TIMESTAMP NULL DEFAULT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `entities_id` int(11) unsigned NOT NULL DEFAULT '0',
  `url` longtext COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `users_id_recipient` int(11) unsigned NOT NULL DEFAULT '0',  
  `users_id_lastupdater` int(11) unsigned NOT NULL DEFAULT '0',    
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `glpi_plugin_iframe_iframes_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_iframe_iframes_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`plugin_iframe_iframes_id`,`groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



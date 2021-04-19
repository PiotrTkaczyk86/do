-- -----------------------------------------------------
-- TABLE CREATION
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dodev`.`task`;

CREATE TABLE IF NOT EXISTS `dodev`.`task` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) DEFAULT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
    `assigned_person` VARCHAR(255) DEFAULT NULL,
    `status` VARCHAR(255) DEFAULT NULL,
    `date_created` DATETIME(6) DEFAULT NULL,
    `last_updated` DATETIME(6) DEFAULT NULL,
    `project_id` BIGINT(20) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `K_project_id` (`project_id`),
    CONSTRAINT `FK_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_GENERAL_CI;
-- -----------------------------------------------------
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dodev`.`project`;

CREATE TABLE IF NOT EXISTS `dodev`.`project` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) DEFAULT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
    `assigned_person` VARCHAR(255) DEFAULT NULL,
    `status` VARCHAR(255) DEFAULT NULL,
    `date_created` DATETIME(6) DEFAULT NULL,
    `last_updated` DATETIME(6) DEFAULT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8MB4 COLLATE = UTF8MB4_GENERAL_CI;
-- -----------------------------------------------------

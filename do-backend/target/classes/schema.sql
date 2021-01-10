USE `do-app-dev`;
-- -----------------------------------------------------
-- TABLE CREATION
-- -----------------------------------------------------
DROP TABLE IF EXISTS `do-app-dev`.`project`;

CREATE TABLE IF NOT EXISTS `do-app-dev`.`project` (
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
-- -----------------------------------------------------
DROP TABLE IF EXISTS `do-app-dev`.`task`;

CREATE TABLE IF NOT EXISTS `do-app-dev`.`task` (
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
-- DROP TABLE IF EXISTS `do-app-dev`.`user`;

-- CREATE TABLE IF NOT EXISTS `do-app-dev`.`user` (

-- )

-- -----------------------------------------------------

-- -----------------------------------------------------
-- SAMPLE INSERTS
-- -----------------------------------------------------

-- do-app-dev.project
INSERT INTO `do-app-dev`.`project` (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED) 
VALUES ('do. project', 'Project to create a super app for very efficient task management', null, 'TO DO', now());
INSERT INTO `do-app-dev`.`project` (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED) 
VALUES ('Test', 'Just a test project', null, 'TO DO', now());

-- do-app-dev.task
INSERT INTO `do-app-dev`.`task` (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED, LAST_UPDATED, PROJECT_ID)
VALUES ('Create entities ', 'Create appropriate backend entities to match created tables.', null, 'TO DO', now(), null, 1);
INSERT INTO `do-app-dev`.`task` (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED, LAST_UPDATED, PROJECT_ID)
VALUES ('Lack of tasks in project ', 'Check why tasks are not in project JSON.', null, 'TO DO', now(), null, 1);
INSERT INTO `do-app-dev`.`task` (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED, LAST_UPDATED, PROJECT_ID)
VALUES ('Test task', 'Test task', null, 'TO DO', now(), null, 2);

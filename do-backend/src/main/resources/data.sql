-- -----------------------------------------------------
-- SAMPLE INSERTS
-- -----------------------------------------------------

-- project
INSERT INTO project (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED)
VALUES ('do. project', 'Project to create a super app for very efficient task management', null, 'TO DO', now());
INSERT INTO project (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED)
VALUES ('Test', 'Just a test project', null, 'TO DO', now());

-- task
INSERT INTO task (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED, LAST_UPDATED, PROJECT_ID)
VALUES ('Create entities ', 'Create appropriate backend entities to match created tables.', null, 'TO DO', now(), null, 1);
INSERT INTO task (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED, LAST_UPDATED, PROJECT_ID)
VALUES ('Lack of tasks in project ', 'Check why tasks are not in project JSON.', null, 'TO DO', now(), null, 1);
INSERT INTO task (NAME, DESCRIPTION, ASSIGNED_PERSON, STATUS, DATE_CREATED, LAST_UPDATED, PROJECT_ID)
VALUES ('Add test for task name', 'Check if name of this task exists', null, 'TO DO', now(), null, 2);
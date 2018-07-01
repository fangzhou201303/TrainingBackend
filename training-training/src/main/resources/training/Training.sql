-- ----------------------------------
-- ----------------------------------
-- ---Training
-- ----------------------------------
-- ----------------------------------
CREATE SCHEMA `training`;

CREATE TABLE IF NOT EXISTS `training`.`training_plan` (
  `ID` VARCHAR(10) NOT NULL,
  `TRAINING_PLAN_ID` int(11) NOT NULL,
  `TRAINING_PLAN_NAME` varchar(200) NOT NULL,
  `TRAINING_PLAN_START_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TRAINING_PLAN_END_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATOR` varchar(45) NOT NULL DEFAULT '',
  `CREATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(45) NOT NULL DEFAULT '',
  `LAST_UPDATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DELETED_IND` int NOT NULL DEFAULT 0,
  `DELETED_BY` varchar(45) NOT NULL DEFAULT '',
  `STATE_IND` char(1) NOT NULL DEFAULT '',  
  PRIMARY KEY (`ID`));


CREATE TABLE `training`.`training` (
  `ID` int(11) NOT NULL,
  `TRAINING_PLAN_ID` int(11) NOT NULL,
  `TRAINING_PLAN_NAME` varchar(200) NOT NULL,
  `TRAINING_STATE_IND` int(11) NOT NULL DEFAULT '0' COMMENT '0-PLANNED 1-IN-PROGRESS 2-CANCELLED 3-CONFIRMED 4-TRAIN STARTED 5-TRAIN FINISHED 6-SEND FEEDBACK TO TRAINEE/COMPLETED',
  `TRAINING_TITLE` varchar(200) NOT NULL DEFAULT '',
  `TRAINING_START_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TRAINING_END_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TRAINING_DURATION` int(11) NOT NULL DEFAULT '0' COMMENT 'THIS IS CALCULATED BY MINUTES',
  `TRAINING_LOCATION` varchar(200) NOT NULL DEFAULT '',
  `TRAINING_DESCRIPTION` text NOT NULL,
  `TRAINIER` varchar(500) NOT NULL DEFAULT '' COMMENT 'E.G. TRAINER1_ID:TRAINER_NAME|TRAINER2_ID:TRAINER_NAME',
  `TRAINING_MATERIAL` text NOT NULL,
  `TRAINING_VIDEO` text NOT NULL,
  `CREATOR_ID` int(11) NOT NULL DEFAULT '0',
  `CREATOR` varchar(45) NOT NULL DEFAULT '',
  `CREATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATED_BY` varchar(45) NOT NULL DEFAULT '',
  `LAST_UPDATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DELETED_IND` int(11) NOT NULL DEFAULT '0',
  `DELETED_BY` varchar(45) NOT NULL DEFAULT '',
  `DELETED_BY_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ;

CREATE TABLE `training`.`training_history` (
  `ID` int(11) NOT NULL,
  `TRAINING_ID` int(11) NOT NULL DEFAULT '0' COMMENT 'training.ID',
  `TRAINING_STATE_IND` int(11) NOT NULL DEFAULT '0' COMMENT 'training.TRAINING_STATE_IND, 0-PLANNED 1-IN-PROGRESS 2-CANCELLED 3-CONFIRMED 4-TRAIN STARTED 5-TRAIN FINISHED 6-SEND FEEDBACK TO TRAINEE/COMPLETED',
  `TRAINING_TITLE` varchar(200) NOT NULL DEFAULT '' COMMENT 'training.TRAINING_TITLE',
  `TRAINIER` varchar(500) NOT NULL DEFAULT '' COMMENT 'training.TRAINIER, E.G. TRAINER1_ID:TRAINER_NAME|TRAINER2_ID:TRAINER_NAME',
  `TRAINING_START_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'training.TRAINING_START_TIME',
  `TRAINING_END_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'training.TRAINING_END_TIME',
  `TRAINING_DURATION` int(11) NOT NULL DEFAULT '0' COMMENT 'training.TRAINING_DURATION, THIS IS CALCULATED BY MINUTES',
  `TRAINING_LOCATION` varchar(200) NOT NULL DEFAULT '' COMMENT 'training.TRAINING_LOCATION',
  `TRAINEE_ID` varchar(45) NOT NULL DEFAULT '' COMMENT 'user.ID',
  `TRAINEE_STATE_IND` char(1) NOT NULL DEFAULT '' COMMENT '0-REGISTER SUCCESSFULLY 1-SELF CANCEL THE TRAINING 2-NO SHOW 3-PENDING FEEDBACK 4-COMPLETED',
  `CREATOR_ID` int(11) NOT NULL DEFAULT '0',
  `CREATOR` varchar(45) NOT NULL DEFAULT '',
  `CREATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY_ID` int(11) NOT NULL DEFAULT '0',
  `UPDATED_BY` varchar(45) NOT NULL DEFAULT '',
  `LAST_UPDATE_DATE` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DELETED_IND` int(11) NOT NULL DEFAULT '0',
  `DELETED_BY` varchar(45) NOT NULL DEFAULT '',
  `DELETED_BY_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ;

INSERT INTO `training`.`training_history`
(`ID`,
`TRAINING_ID`,
`TRAINING_STATE_IND`,
`TRAINING_TITLE`,
`TRAINIER`,
`TRAINING_START_TIME`,
`TRAINING_END_TIME`,
`TRAINING_DURATION`,
`TRAINING_LOCATION`,
`TRAINEE_ID`,
`TRAINEE_STATE_IND`,
`CREATOR_ID`,
`CREATOR`,
`CREATE_DATE`)
VALUES
(1,
1000001,
0,
'course 1',
'1:xiaohui.c.liu',
'2018-06-10 9:00:00',
'2018-06-10 12:00:00',
180,
'24#9M001',
5000001,
0,
2,
'fangzhou.li',
CURRENT_TIMESTAMP);


INSERT INTO `training`.`training_history`
(`ID`,
`TRAINING_ID`,
`TRAINING_STATE_IND`,
`TRAINING_TITLE`,
`TRAINIER`,
`TRAINING_START_TIME`,
`TRAINING_END_TIME`,
`TRAINING_DURATION`,
`TRAINING_LOCATION`,
`TRAINEE_ID`,
`TRAINEE_STATE_IND`,
`CREATOR_ID`,
`CREATOR`,
`CREATE_DATE`)
VALUES
(2,
1000002,
0,
'course 2',
'1:xiaohui.c.liu',
'2018-06-10 13:00:00',
'2018-06-10 15:00:00',
180,
'24#9M001',
5000001,
0,
2,
'fangzhou.li',
CURRENT_TIMESTAMP);


INSERT INTO `training`.`training_history`
(`ID`,
`TRAINING_ID`,
`TRAINING_STATE_IND`,
`TRAINING_TITLE`,
`TRAINIER`,
`TRAINING_START_TIME`,
`TRAINING_END_TIME`,
`TRAINING_DURATION`,
`TRAINING_LOCATION`,
`TRAINEE_ID`,
`TRAINEE_STATE_IND`,
`CREATOR_ID`,
`CREATOR`,
`CREATE_DATE`)
VALUES
(3,
1000003,
0,
'course 3',
'1:xiaohui.c.liu',
'2018-06-11 9:00:00',
'2018-06-11 12:00:00',
180,
'24#9M001',
5000001,
0,
2,
'fangzhou.li',
CURRENT_TIMESTAMP);





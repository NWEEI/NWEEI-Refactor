BEGIN TRANSACTION;

/*
CREATE TABLE IF NOT EXISTS "Tags" (
	"TagID"	INTEGER,
	"Name"	VARCHAR(256) NOT NULL,
	PRIMARY KEY("TagID" AUTOINCREMENT)
);
*/

INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (1,'Renewable');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (2,'Tradeshow');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (3,'Facilites');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (4,'Networking');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (5,'Building Controls');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (6,'Water');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (7,'Training');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (8,'ACEEE');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (9,'Study');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (10,'Energy Efficiency');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (11,'Occupants');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (12,'Energy Management Certification');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (13,'Certification');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (14,'Workshop');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (15,'Bootcamp');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (16,'Intensive');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (17,'Building');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (18,'High Performance Buildings');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (19,'Operator');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (20,'Manager');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (21,'Energy');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (22,'Learning Labs');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (23,'Community College');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (24,'Outreach');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (25,'Hands On');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (26,'EMC');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (27,'quotes');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (28,'graduates');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (29,'BOC');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (30,'Scholarships');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (31,'Summer');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (32,'Siemens,');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (33,'Upcoming Fields');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (34,'HVAC controls');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (35,'internship');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (36,'industry');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (37,'webinar');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (38,'online training');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (39,'free');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (40,'Fieldwork Mentors,');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (41,'Program Assistance,');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (42,'Utility Network,');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (43,'Mentor,');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (44,'education');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (45,'outsourcing');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (46,'career');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (47,'Buildings');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (48,'Degree');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (49,'Incentives');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (50,'Partner');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (51,'Conservation');
INSERT OR IGNORE INTO "Tags" ("TagID", "Name") VALUES (52,'Apprenticeship');
COMMIT;

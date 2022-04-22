BEGIN TRANSACTION;
/*
CREATE TABLE IF NOT EXISTS "Categories" (
	"CategoryID"	INTEGER,
	"Name"	VARCHAR(256) NOT NULL,
	PRIMARY KEY("CategoryID" AUTOINCREMENT)
);
*/

INSERT OR IGNORE INTO "Categories" VALUES (2,'Professional Development');
INSERT OR IGNORE INTO "Categories" VALUES (3,'Custom Training');
INSERT OR IGNORE INTO "Categories" VALUES (4,'Short News Snippits');
INSERT OR IGNORE INTO "Categories" VALUES (5,'Uncategorised');
INSERT OR IGNORE INTO "Categories" VALUES (6,'Staff');
INSERT OR IGNORE INTO "Categories" VALUES (7,'NWEEI News Articles');
INSERT OR IGNORE INTO "Categories" VALUES (8,'sh404SEF custom content');
INSERT OR IGNORE INTO "Categories" VALUES (9,'Renewable Energy');
INSERT OR IGNORE INTO "Categories" VALUES (10,'Featured Items');
INSERT OR IGNORE INTO "Categories" VALUES (11,'Feedback - Certificates');
INSERT OR IGNORE INTO "Categories" VALUES (12,'Tabbed Content');
INSERT OR IGNORE INTO "Categories" VALUES (13,'Energy Management');
INSERT OR IGNORE INTO "Categories" VALUES (14,'Solar Technician');
INSERT OR IGNORE INTO "Categories" VALUES (15,'2 Year Degrees');
INSERT OR IGNORE INTO "Categories" VALUES (16,'Certification Courses');
INSERT OR IGNORE INTO "Categories" VALUES (17,'Press & Media');
INSERT OR IGNORE INTO "Categories" VALUES (18,'RokStories Samples');
INSERT OR IGNORE INTO "Categories" VALUES (19,'Feedback - Degrees');
INSERT OR IGNORE INTO "Categories" VALUES (20,'Education Opportunitites');
INSERT OR IGNORE INTO "Categories" VALUES (21,'News');
INSERT OR IGNORE INTO "Categories" VALUES (22,'Featured Items');
INSERT OR IGNORE INTO "Categories" VALUES (23,'Additional Program Support Info');
INSERT OR IGNORE INTO "Categories" VALUES (24,'RokStories');
INSERT OR IGNORE INTO "Categories" VALUES (25,'Testimonials & Training Feedback');
INSERT OR IGNORE INTO "Categories" VALUES (26,'2 Year Degrees');
INSERT OR IGNORE INTO "Categories" VALUES (27,'Demo Content');
INSERT OR IGNORE INTO "Categories" VALUES (28,'About');
INSERT OR IGNORE INTO "Categories" VALUES (29,'Resources');
INSERT OR IGNORE INTO "Categories" VALUES (30,'Professional Associations');
INSERT OR IGNORE INTO "Categories" VALUES (31,'Energy Efficiency Websites');
INSERT OR IGNORE INTO "Categories" VALUES (32,'Staff');
INSERT OR IGNORE INTO "Categories" VALUES (33,'Ginny Young');
INSERT OR IGNORE INTO "Categories" VALUES (34,'Erik Westerholm');
INSERT OR IGNORE INTO "Categories" VALUES (35,'Training Topics');
INSERT OR IGNORE INTO "Categories" VALUES (36,'Job Postings');
INSERT OR IGNORE INTO "Categories" VALUES (37,'Simply Hired');
INSERT OR IGNORE INTO "Categories" VALUES (38,'Indeed');
INSERT OR IGNORE INTO "Categories" VALUES (39,'CareerJet');
INSERT OR IGNORE INTO "Categories" VALUES (40,'Unspecified Source');
INSERT OR IGNORE INTO "Categories" VALUES (41,'Resource Conservation Manager at Olympia School District (Olympia, WA)');
INSERT OR IGNORE INTO "Categories" VALUES (42,'Monster.com');
INSERT OR IGNORE INTO "Categories" VALUES (43,'Energy Efficiency Websites');
INSERT OR IGNORE INTO "Categories" VALUES (44,'sh404SEF custom content');
INSERT OR IGNORE INTO "Categories" VALUES (45,'USAJobs');
INSERT OR IGNORE INTO "Categories" VALUES (46,'Water Efficiency Websites');
INSERT OR IGNORE INTO "Categories" VALUES (47,'CareerBuilder');
INSERT OR IGNORE INTO "Categories" VALUES (48,'Internal');
INSERT OR IGNORE INTO "Categories" VALUES (49,'EMC Headers');
INSERT OR IGNORE INTO "Categories" VALUES (50,'iLEED');
INSERT OR IGNORE INTO "Categories" VALUES (51,'News');
INSERT OR IGNORE INTO "Categories" VALUES (52,'Tech');
INSERT OR IGNORE INTO "Categories" VALUES (53,'Uncategorized');
INSERT OR IGNORE INTO "Categories" VALUES (54,'Energy Jobs');
INSERT OR IGNORE INTO "Categories" VALUES (55,'Water Jobs');
INSERT OR IGNORE INTO "Categories" VALUES (56,'Jobs Postings');
INSERT OR IGNORE INTO "Categories" VALUES (57,'Green Building');
INSERT OR IGNORE INTO "Categories" VALUES (58,'Residential Buildings');
INSERT OR IGNORE INTO "Categories" VALUES (59,'Commercial Buildings');
INSERT OR IGNORE INTO "Categories" VALUES (60,'Fieldwork Mentors');
INSERT OR IGNORE INTO "Categories" VALUES (61,'Online Energy Students');
INSERT OR IGNORE INTO "Categories" VALUES (62,'General');
COMMIT;

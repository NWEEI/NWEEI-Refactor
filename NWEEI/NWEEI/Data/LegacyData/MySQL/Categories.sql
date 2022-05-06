BEGIN;

CREATE TABLE IF NOT EXISTS Categories (
	CategoryID	INTEGER AUTO_INCREMENT,
	Name	VARCHAR(256) NOT NULL,
	PRIMARY KEY(CategoryID)
);


INSERT IGNORE INTO Categories VALUES (2,'Professional Development');
INSERT IGNORE INTO Categories VALUES (3,'Custom Training');
INSERT IGNORE INTO Categories VALUES (4,'Short News Snippits');
INSERT IGNORE INTO Categories VALUES (5,'Uncategorised');
INSERT IGNORE INTO Categories VALUES (6,'Staff');
INSERT IGNORE INTO Categories VALUES (7,'NWEEI News Articles');
INSERT IGNORE INTO Categories VALUES (8,'sh404SEF custom content');
INSERT IGNORE INTO Categories VALUES (9,'Renewable Energy');
INSERT IGNORE INTO Categories VALUES (10,'Featured Items');
INSERT IGNORE INTO Categories VALUES (11,'Feedback - Certificates');
INSERT IGNORE INTO Categories VALUES (12,'Tabbed Content');
INSERT IGNORE INTO Categories VALUES (13,'Energy Management');
INSERT IGNORE INTO Categories VALUES (14,'Solar Technician');
INSERT IGNORE INTO Categories VALUES (15,'2 Year Degrees');
INSERT IGNORE INTO Categories VALUES (16,'Certification Courses');
INSERT IGNORE INTO Categories VALUES (17,'Press & Media');
INSERT IGNORE INTO Categories VALUES (18,'RokStories Samples');
INSERT IGNORE INTO Categories VALUES (19,'Feedback - Degrees');
INSERT IGNORE INTO Categories VALUES (20,'Education Opportunitites');
INSERT IGNORE INTO Categories VALUES (21,'News');
INSERT IGNORE INTO Categories VALUES (22,'Featured Items');
INSERT IGNORE INTO Categories VALUES (23,'Additional Program Support Info');
INSERT IGNORE INTO Categories VALUES (24,'RokStories');
INSERT IGNORE INTO Categories VALUES (25,'Testimonials & Training Feedback');
INSERT IGNORE INTO Categories VALUES (26,'2 Year Degrees');
INSERT IGNORE INTO Categories VALUES (27,'Demo Content');
INSERT IGNORE INTO Categories VALUES (28,'About');
INSERT IGNORE INTO Categories VALUES (29,'Resources');
INSERT IGNORE INTO Categories VALUES (30,'Professional Associations');
INSERT IGNORE INTO Categories VALUES (31,'Energy Efficiency Websites');
INSERT IGNORE INTO Categories VALUES (32,'Staff');
INSERT IGNORE INTO Categories VALUES (33,'Ginny Young');
INSERT IGNORE INTO Categories VALUES (34,'Erik Westerholm');
INSERT IGNORE INTO Categories VALUES (35,'Training Topics');
INSERT IGNORE INTO Categories VALUES (36,'Job Postings');
INSERT IGNORE INTO Categories VALUES (37,'Simply Hired');
INSERT IGNORE INTO Categories VALUES (38,'Indeed');
INSERT IGNORE INTO Categories VALUES (39,'CareerJet');
INSERT IGNORE INTO Categories VALUES (40,'Unspecified Source');
INSERT IGNORE INTO Categories VALUES (41,'Resource Conservation Manager at Olympia School District (Olympia, WA)');
INSERT IGNORE INTO Categories VALUES (42,'Monster.com');
INSERT IGNORE INTO Categories VALUES (43,'Energy Efficiency Websites');
INSERT IGNORE INTO Categories VALUES (44,'sh404SEF custom content');
INSERT IGNORE INTO Categories VALUES (45,'USAJobs');
INSERT IGNORE INTO Categories VALUES (46,'Water Efficiency Websites');
INSERT IGNORE INTO Categories VALUES (47,'CareerBuilder');
INSERT IGNORE INTO Categories VALUES (48,'Internal');
INSERT IGNORE INTO Categories VALUES (49,'EMC Headers');
INSERT IGNORE INTO Categories VALUES (50,'iLEED');
INSERT IGNORE INTO Categories VALUES (51,'News');
INSERT IGNORE INTO Categories VALUES (52,'Tech');
INSERT IGNORE INTO Categories VALUES (53,'Uncategorized');
INSERT IGNORE INTO Categories VALUES (54,'Energy Jobs');
INSERT IGNORE INTO Categories VALUES (55,'Water Jobs');
INSERT IGNORE INTO Categories VALUES (56,'Jobs Postings');
INSERT IGNORE INTO Categories VALUES (57,'Green Building');
INSERT IGNORE INTO Categories VALUES (58,'Residential Buildings');
INSERT IGNORE INTO Categories VALUES (59,'Commercial Buildings');
INSERT IGNORE INTO Categories VALUES (60,'Fieldwork Mentors');
INSERT IGNORE INTO Categories VALUES (61,'Online Energy Students');
INSERT IGNORE INTO Categories VALUES (62,'General');
COMMIT;

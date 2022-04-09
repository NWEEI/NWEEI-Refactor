BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Registrations";
CREATE TABLE IF NOT EXISTS "Registrations" (
	"RegistrationID"		INTEGER 		PRIMARY KEY AUTOINCREMENT,
	"RegistrationID"		INTEGER 		NOT NULL,
	"DateSubmitted"			DATE,
	"TrainingProgram"		VARCHAR2(256) 	NOT NULL,
	"FirstName"				VARCHAR2(128) 	NOT NULL,
	"LastName"				VARCHAR2(128) 	NOT NULL,
	"Email"					VARCHAR2(256) 	NOT NULL,
	"DOB"					DATE 			NOT NULL,
	"Title"					VARCHAR2(256),
	"Organization"			VARCHAR2(256),
	"Address1"				VARCHAR2(256) 	NOT NULL,
	"Address2"				VARCHAR2(256),
	"City"					VARCHAR2(128) 	NOT NULL,
	"State"					VARCHAR2(2) 	NOT NULL,
	"ZipCode"				VARCHAR2(10) 	NOT NULL,
	"Phone"					VARCHAR2(20) 	NOT NULL,
	"Fax"					VARCHAR2(20),
	"Referral"				VARCHAR2(256),
	"SpecialInstructions"	VARCHAR2(350),
	"PaymentType"			VARCHAR2(32) 	NOT NULL
);

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") 
VALUES	
	  ('2011-08-22 17:41:54','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Phil','Wentz','pwentz@ttsd.k12.or.us','10/29/1950','Facilities Manager','Tigard-Tualatin School District','6960 SW Sandburg St',NULL,'Tigard','Oregon','97223','503-431-4017',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") 
VALUES	
	('2011-08-19 10:05:19','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Kimberly','Patten','kim.patten@corvallis.k12.or.us','05/25/76','Maintenance Supervisor','Corvallis School District 509J','PO Box 3509J','1555 SW 35th Street','Corvallis','Oregon','97339','541.757.5877','541.757.5749',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-18 11:39:16','Building Operator Cert. LEVEL 1 - Portland','TEST','TEST','asdf@gmail.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97405','TEST',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-17 12:48:04','Sustainable Building Advisor Pro.','Catherine','Leyen','cleyen@mriOptimize.com','01/04/1960',NULL,'MRI Optimize Consultants, LLC','510 E. University Drive','#3456','Tempe','Arizona','85281','480-707-7079','866-858-5364',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-09 08:17:01','2012 Energy Management Certificate (EMC)','Jane','Iyengar','jane@ebizlabs.com','01.11.1965',NULL,NULL,'125857 ',NULL,'Fairfax','Virginia','22033','7035895265',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-24 07:47:27','2012 Energy Management Certificate (EMC)','Philip','Dussel','sunup.today@gmail.com','5/1/1950',NULL,NULL,'7724 Booth Road',NULL,'Klamath Falls','Oregon','97603','541-891-2901',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-24 01:40:52','2012 Energy Management Certificate (EMC)','Moez','Davodi','moezdavodi@gmail.com','sep/1/1981','MS',NULL,'No44, Kashani BLV, Markazi Sqr, Shahrood, IRAN',NULL,'Shahrood, IRAN','Non-US','00000','+98-21-77442118',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-22 13:58:16','2011 Summer Energy Educator Series (SEES)','Jennifer','Clemons','jenniferclemons@gmail.com','07-24-1980','Renewable Energy Instructor','Delaware Technical and Community College','100 Campus Drive',NULL,'Dover ','Delaware','19904','814-880-0975',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-22 10:10:23','2011 Summer Energy Educator Series (SEES)','Jennifer','Clemons','ctravis@dtcc.edu','7/24/1980','Instructor','Delaware Tech Community College','100 Campus Drive',NULL,'Dover','Delaware','19904','302-857-1203','302-857-1298',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-22 06:25:58','2011 Summer Energy Educator Series (SEES)','Ken','Mecham','ctravis@dtcc.edu','1/15/1943','Instructor','Delaware Techncial & Community College','100 Campus Drive',NULL,'Dover','Delaware','19904','302-857-1203','302-857-1298',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-18 07:59:41','Building Operator Cert. LEVEL 1 - NE Oregon','Callistus','Ozoude','service4callistus@yahoo.com','26/3/1977','Mr',NULL,'Enugu',NULL,'Enugu','Non-US','23401','+2348057290751',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-07-11 13:10:49','2011 Summer Energy Educator Series (SEES)','Bob','Brzozowski','rbrzozowski@bcc.edu','9/8/46','Project Director, Sustainability and Alternative Energy Grant','Burlington County College','601 Pemberton Browns Mills Road',NULL,'Pemberton','New Jersey','08068','215-894-9311',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-29 10:53:52','2011 Summer Energy Educator Series (SEES)','TBD','TBD','bmorrow@dtcc.edu','TBD','New Energy Instructor','Delaware Tech, Terry Campus','100 Campus Dr.',NULL,'Dover','Delaware','19904','302-857-1303',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-29 10:52:21','2011 Summer Energy Educator Series (SEES)','Bill','Morrow','bmorrow@dtcc.edu','04/02/66','Department Chair','Delaware Tech, Terry Campus','100 Campus Dr.',NULL,'Dover','Delaware','19904','302-857-1303',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-28 11:23:02','Building Operator Cert. LEVEL 1 - Portland','Colleen','McCormack','cmccormack@clarkpud.com','04/27/1981','Key Accounts Manager','Clark Public Utilities','1200 Fort Vancouver Way','PO Box 8900','Vancouver','Washington','98668','360-992-3303','360-992-3140',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-27 09:44:38','Click here to select...','Austin','Kollie','konogboh15@yahoo.com','06/05/80','Water and sanitation technician','United Nations Mission In Sudan','Tomping site','monrovia - liberia','Juba','Non-US','10000','+249922054307','+249922054307',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-27 09:08:29','2011 Energy Management Certificate (EMC)','Paul','Williamson','pwilliamson5158@gmail.com','01/26/1955','Lighting Specialist','Rolling Baseline LLC','4351 SW 94th Ave.',NULL,'Portland','Oregon','97225','503-740-5158',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-23 13:24:43','2011 Summer Energy Educator Series (SEES)','David','LaFazia','dlafazia@dtcc.edu','05/14/1983','Energy Technologies Dept. Chair','DTCC - Owens','PO BOX 610',NULL,'Georgetown','Delaware','19947','3023546907',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-23 13:07:01','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Richard','Barrows','rbarrows@ci.bend.or.us','11-16-1950',NULL,'City of Bend','710 NW Wall St.',NULL,'Bend','Oregon','97701','541-383-4881',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-23 13:05:12','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Kim','Voos','kvoos@ci.bend.or.us','2-12-1962',NULL,'City of Bend','710 NW Wall St.',NULL,'Bend','Oregon','97701','541-388-5530',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-22 10:14:03','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Allen','Robertson','enderselectric@frontier.com','05/19/1952','Owner/President','Enders Electric Inc','PO Box 1661',NULL,'Beaverton','Oregon','97075','503.793.5196','503.646.3871',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-21 16:06:14','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Philip','Dussel','sunup.today@gmail.com','5/1/1950',NULL,'Sun Up Solar','7724 Booth Road',NULL,'Klamath Falls','Oregon','97603','541-891-2901',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-20 11:47:57','2011 Summer Energy Educator Series (SEES)','Cory','Budischak','cbudisch@dtcc.edu','02/25/85',NULL,NULL,'140 Evans Hall',NULL,'Newark','Delaware','19716','3028974254',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-17 06:08:39','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Chris','Coots','clcootselectric@gmail.com','01-09-67','President','CL Coots Electric Inc.','4909 Dorrance ST NE',NULL,'Salem','Oregon','97305','503-910-8828','503-390-1029',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-15 14:19:25','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Connie','Kenning','sunlinesite@live.com','06-21-1957','Owner','Sunline','19871 Summit Hwy',NULL,'Blodgett','Oregon','97326','541-456-2015',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-15 13:05:35','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Melanie','MacKinnon','melanie@energyindependenceco.com','06/27/77','Sales & Design Technician',NULL,'519 W HARRISON ST',NULL,'ROSEBURG','Oregon','97471','541-530-2691',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-15 11:03:05','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Larry','Lewis','jtsk_97702@msn.com','09/13/53','Owner','Skyline Electric','60812 Park Vista Circle',NULL,'Bend','Oregon','97702','541-420-3022','541-388-1615',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-10 21:41:36','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Bernard','Petersen','bernard@petersenplumbingoregon.com','08-20-1953','President','Bernard Petersen, Inc','PO Box 22406',NULL,'Eugene','Oregon','97402','541-554-2993',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-09 13:13:45','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Luke ','Rabun','luke@pacificsolarandrain.com','06/06/1979','Owner','Pacific Solar and Rain','870 W. 28th',NULL,'Eugene','Oregon','97405','541-556-4527',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-09 13:10:45','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Timothy','Donlon','TDonlon888@hotmail.com','09/09/1977','PV Sales/Design','Pacific Solar and Rain','2935 Pearl St.',NULL,'Eugene','Oregon','97405','541-255-8350',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-08 17:42:18','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','John','Sellers','johnhs@attglobal.net','03-031953',NULL,NULL,'PO Box 234',NULL,'Redmond','Oregon','97756','541-923-7261',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-08 16:56:16','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Tim','Jeffries','tjeffries77@yahoo.com','8-3-49',NULL,NULL,'60850 Windsor Dr.',NULL,'Bend','Oregon','97702','541 382 9222',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-07 11:26:39','2011 Energy Management Certificate (EMC)','Danny','Grady','Danny.Grady@pse.com','01/08/1979','Energy Advisor','Puget Sound Energy','355 110th Ave NE EST10E',NULL,'Bellevue','Washington','98004','425-462-3680',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-07 09:18:02','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Tim','Vander Stoep','vastelectric@comcast.net','10/12/1966','Electrical Supervisor/Owner','Vast Electric, Inc.','1525 Seattle Slew Dr SE',NULL,'Salem','Oregon','97317','503-566-7274','503-585-8828',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-06 20:21:21','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Rhine','Chesshire','Rhine@lavabit.com','09/10/84',NULL,NULL,'20669 Shingle Creek Rd.',NULL,'Blodgett','Oregon','97326','541-456-2224',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-06 16:26:23','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Maud','de Bel','maud@bacgen.com','11/2/1969',NULL,'BacGen','4015 Beach Drive SW',NULL,'Seattle','Washington','98116','2069322382','2069322329',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-06 09:21:54','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Stacy','Castleman','stacy@innovative-air.com','09/28/1972','Service Manager','Innovative Air, Inc.','5120 Franklin Blvd. #7',NULL,'Eugene','Oregon','97403','541-746-1040','541-746-4099',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-04 10:47:54','2011 Summer Energy Educator Series (SEES)','Charles','Gray','charles.gray@mail.wvu.edu','12/03/1962','Isntructional Specialist','WVU Parkersburg','300 Campus Drive',NULL,'Parkersburg','West Virginia','26101','304-422-1031',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-06-03 09:20:59','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Dan','Waits','dannywaits@msn.com','4-3-68','President','American Pump & Spa','37516 River Side Drive',NULL,'Pleasant Hill','Oregon','97455','541-746-3447','541-746-9901',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-27 10:50:06','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Ben','Hammer','bencooking@gmail.com','12/04/46',NULL,NULL,'5215 Boy Scout Rd.',NULL,'Florence','Oregon','97439','541-997-6239',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-27 08:13:44','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Howard','Petersen','hpsenergies@gmail.com','8/26/52',NULL,'HP''s Energies, Inc.','63460 Hamehook Rd',NULL,'Bend','Oregon','97701','541-788-0175',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-26 15:08:12','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Newt','Loken','newt@solarassist.net','10-16-57','Founder','Solar Assist','1395 Cross St. #21',NULL,'Eugene','Oregon','97402','541-543-3736c','541-338-4957',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-26 14:55:06','Specialty Install Code for PV - June 24th Central Oregon Community College Pioneer Hall, Bend','Bruce','Beeman','youngg@lanecc.edu','12-31-1946','OWNER','AQUITIC INDUSTRIES INC','PO BOX 243',NULL,'Lakeview','Oregon','97630','541-947-4403',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-26 09:27:30','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Kevin','Schafer','kwschafer@aol.com','10/21/1954','President/Owner','K S Electric & Consultants, Inc.','P.O. Box 24933',NULL,'Eugene','Oregon','97402','541-686-6236','541-988-4673',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-25 14:41:00','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Jack','Hansen','info@bullmountainmech.com','05/03/1947','President','Bull Mountain Mechanical','13580 SW Rhett Court',NULL,'Tigard','Oregon','97224','503-612-6677','503-692-3084',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-25 10:16:12','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Robert','Walwyn','RDWalwyn@gmail.com','07/11/1949','Director of Engineering','Synergy Engineering LLC','134 East 13th Ave #2A',NULL,'Eugene','Oregon','97401','541-953-6922','541-393-0196',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-24 15:57:35','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Alec','Mesdag','a.mesdag@oregon-electric.com','01/03/1980',NULL,NULL,'1709 SE 3rd Ave',NULL,'Portland','Oregon','97214','503-535-2716',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-22 20:21:57','2011 Energy Management Certificate (EMC)','Nathaniel','Abbott','nate_abbott@ci.juneau.ak.us','05/31/1982','Maintenance Manager','City and Burough of Juneau','155 S Seward St',NULL,'Juneau','Alaska','99801','907-209-8379','907-586-4585',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-21 10:14:33','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Dan','Orleck','danorleck@midgleys.com','02/25/75','Estimator','Midgleys Stove & Fireplace Center','1678 W 7th',NULL,'Eugene','Oregon','97402','541-343-1131','541-343-0590',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-19 10:17:07','Specialty Install Code for PV - June 17th Lane Community College, Eugene','Doug ','Palmer','doug@dphomeinspections.com','2/27/52','Owner / President','Doug Palmer Corporation','734 East 23rd Avenue',NULL,'Eugene','Oregon','97405','(541) 868-4729',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-18 09:38:10','Specialty Install Code for PV - May 20th NECA/IBEW Training Center, Portland','Vincent','Weatherill','weathervc@comcast.net','11/11/1950','Owner/Manager','Sunset Solar Electric LLC','1535 NW 136th Ave.',NULL,'Portland','Oregon','97229','503-828-4839','503-747-3336',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-17 16:11:02','Specialty Install Code for PV - May 20th NECA/IBEW Training Center, Portland','Rodger','Phillips','maud@bacgen.com','4-13-1954','Partner','BacGen','4015 Beach Drive SW',NULL,'Seattle','Washington','98116','2069322382','2069322329',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-17 16:08:17','Specialty Install Code for PV - May 20th NECA/IBEW Training Center, Portland','Maud','de Bel','maud@bacgen.com','11-2-1969','Engineer','BacGen','4015 Beach Drive SW',NULL,'Seattle','Washington','98116','2069322382','2069322329',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-17 11:08:41','2011 Energy Management Certificate (EMC)','Angela','Guishard','guishardam@state.gov','1/26/71','Mgmt Analyst','FMS','7038 Groveton Drive',NULL,'Clinton','Maryland','20735','240-407-0520',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-13 10:51:18','LEED Green Associate (GA) Exam Prep Course - May 16th-20th Lane Community College, Eugene','Amanda','Laird','alaird@uoregon.edu','11/22/1986',NULL,NULL,'5571 Austin Way',NULL,'Eugene','Oregon','97402','503-440-5506',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-12 23:15:40','LEED Green Associate (GA) Exam Prep Course - May 16th-20th Lane Community College, Eugene','Mark','Nichols','mnichol4@uoregon.edu','12/27/1984',NULL,NULL,'3406 Kinsrow Ave.  Apt. 19v',NULL,'Eugene','Oregon','97401','206-849-6730',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-12 11:29:26','2011 Summer Energy Educator Series (SEES)','Gerald ','Rowley','gerald.rowley@mail.wvu.edu','10/22/1949','Instructional Specialist - Elec. &  Instrumentation Technology','WVU-Parkersburg','300 Campus Drive',NULL,'Parkersburg','West Virginia','26104','304-424-8000','304-424-8366',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-11 16:36:35','LEED Green Associate (GA) Exam Prep Course - May 16th-20th Lane Community College, Eugene','Hyejin','Shin','hshin5@uoregon.edu','09-29-1984','Student','University of Oregon','550 East 14th Ave APT #16',NULL,'Eugene','Oregon','97401','541-513-7208',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-11 15:34:42','LEED Green Associate (GA) Exam Prep Course - May 16th-20th Lane Community College, Eugene','Mellany','Wittkop Fort','mellany@builderselectric.com','07/31/1976',NULL,'Builder''s Electric, Inc','195 Madison',NULL,'Eugene','Oregon','97402','541-485-0922','541-485-4055',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-11 11:02:27','Click here to select...','Sam ','Kalsomine','Skalstad@fmsheetmetal.com','02/22/61','HVAC  Estimator','FM Sheet Metal.com','3000 Pierce Parkway',NULL,'Springfield','Oregon','97477','5417263000','5417264822',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-05 11:51:40','2011 Summer Energy Educator Series (SEES)','Shih Wen','Young','YoungSM@arc.losrios.edu','02/13/1966','Chair/Professor','American River College','4700 College Oak Dr.',NULL,'Sacramento','California','95841','916-484-8343',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-05-02 13:22:26','2011 Energy Management Certificate (EMC)','Heidi','Burkart','heidi.burkart@camas.wednet.edu','02/04/1972','Operations Energy','Camas School District','1028 C Street',NULL,'Washougal','Washington','98671','360-771-3865','360-833-5831',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-04-27 18:30:52','Building Operator Cert. LEVEL 1 - Portland','Stanley','Lal','stanlal@comcast.net','06/17/51','Hvac,plumbing','multnomah county','15671 s e upman way',NULL,'Damascus','Oregon','97089','503 953 5216',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-04-20 14:34:02','2011 Energy Management Certificate (EMC)','Abe','Millet','amillet@mss84.com','8/12/75','Project Manager','Mechanical Service & Systems, Inc.','6906 South 300 West',NULL,'Midvale','Utah','84047','801-255-9333','801-565-0615',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-04-20 01:23:31','2011 Energy Management Certificate (EMC)','Iyiola','Agbaje','printsdot@yahoo.com','06/11/1981',NULL,NULL,'16 akowonjo rd','egbeda','Lagos','Non-US','23401','+2348028483529',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-04-11 12:30:58','2011 Summer Energy Educator Series (SEES)','Gary','Thompson','gary.thompson@mail.wvu.edu','05/25/1957','Instructor','West Virginia University at Parkersburg','300 Campus Dr',NULL,'Parkersburg','West Virginia','26101','650-296-9928',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-04-09 13:44:38','2011 Summer Energy Educator Series (SEES)','Tahseena','Khan','tskhanllc@gmail.com','4/6/1981','Trainer','TSK Energy Management','11209 National Blvd','225','Los Angeles','California','90064','3104331672',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-04-07 08:45:32','Building Operator Cert. LEVEL 1 - Portland','Jennifer','Stout','jstout9@comcast.net','8/6/63','Energy Efficiency Consultant',NULL,'12136 SW 29th Ave.',NULL,'Portland','Oregon','97219','503-516-7370',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-30 09:21:14','Building Operator Cert. LEVEL 2 - Portland','Doug','Thompson','dthompson@billnaito.com','2-8-57','Assistant Facility Director','Bill Naito Company','2701 NW Vaughn Street','Suite 710','Portland','Oregon','97210','503 228-7275',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-29 14:40:33','2011 Energy Management Certificate (EMC)','Robert ','Millet','amillet@mss84.com','8/12/1975','Energy Dept','MSS','6906 South 300 West',NULL,'Midvale','Utah','84047','801 255-9333',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-29 00:12:09','Building Operator Cert. LEVEL 1 - Portland','Jeff','Glowacki','jaglowacki@gmail.com','02/21/1966','Custodian','Portland Community College','1829 SE 51st avenue','Portland','Portland','Oregon','97215','5035772143',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-29 00:08:29','Building Operator Cert. LEVEL 1 - Portland','Jeff','Glowacki','jaglowacki@gmail.com','2/21/1966','Custodian','Portland Community College','1829 SE 51st avenue','Portland','Portland','Oregon','97215','5035772143',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-28 10:39:02','Building Operator Cert. LEVEL 1 - Portland','Albert','Spliethof','Aspliethof@shorenstein.com','05/21/57','Chief Engineer','Shorenstein/Able Engineering','10220 S.W. Greenberg Rd. Suite 310 ',NULL,'Portland, Or.','Select...','97223','Cell-503-572-65','503-619-3110',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-25 15:51:21','Building Operator Cert. LEVEL 1 - Portland','Arturs','Blaubergs','blaubergs@yahoo.com','05/12/1971','Custodian','PCC','6519 N Montana ave',NULL,'Portland','Oregon','97217','503-935-0491',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-23 09:10:40','Building Operator Cert. LEVEL 1 - Portland','Alexander','de Roode','alex.deroode@pcc.edu','05/13/1977','Sustainability Manager','Portland Community College','Sylvania Campus, CSB 314','12000 SW 49th Ave','Portland','Oregon','97219','971-722-8581','971-722-4922',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-21 08:25:50','Specialty Install Code for PV - June 24th Bend','Nina','Adams','nadams@ci.bend.or.us','11/30/1958',NULL,NULL,'710 NW Wall St.',NULL,'Bend','Oregon','97701','541-385-4925',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-21 08:23:57','Specialty Install Code for PV - June 24th Bend','Luke','Koomen','lkoomen@ci.bend.or.us','07/07/1957',NULL,NULL,'710 NW Wall St.',NULL,'Bend','Oregon','97701','541-330-4014',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 14:52:35','Specialty Install Code for PV - June 24th Bend','Craig','Beier','cbeier@ci.bend.or.us','11-8-1954',NULL,NULL,'710 NW Wall St.',NULL,'Bend','Oregon','97701','541-385-6681',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 14:06:47','Specialty Install Code for PV - June 24th Bend','Sandy','Jones','sjones@ci.bend.or.us','03/20/1965',NULL,NULL,'710 NW Wall St.',NULL,'Bend','Oregon','97701','541-617-4525',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 13:37:56','Specialty Install Code for PV - June 24th Bend','Anita','Bothwell','abothwell@ci.bend.or.us','01/15/1979',NULL,NULL,'710 NW Wall St.',NULL,'Bend','Oregon','97701','541-617-4521',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-07-25 10:39:30','Building Operator Cert. LEVEL 1 - Medford','Ryan','De Sautel','desautra@jacksoncounty.org','01-01-2001','Maintenance','Jackson County','10 South Oakdale',NULL,'Medford','Oregon','97501','541-774-6973',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 08:14:42','Building Operator Cert. LEVEL 1 - Portland','Clinton','Smith','clinton.smith@pcc.edu','08-2901949','Custodian','pcc','20570 n.w. highland court',NULL,'Portland','Oregon','97229','5037464255',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 05:28:34','Building Operator Cert. LEVEL 1 - Portland','Andrea','Shipman','ashipman@pcc.edu','03/26/1967','Assoc. FMS Manager','Portland Community College','34822 Church Rd',NULL,'Warren','Oregon','97053','503-397-1537','971-722-2683',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 03:55:05','Building Operator Cert. LEVEL 1 - Portland','Henry','Scarborough','henry.scarborough@pcc.edu','11/15/58','Maint/cust','pcc/rc','839 ne faloma rd',NULL,'Portland','Oregon','97211','503-701-9479',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-18 00:07:15','Building Operator Cert. LEVEL 1 - Portland','Richard','Wehring','richard.wehring@pcc.edu','11-20-1958','Assoc Facility Mgr','PCC','12000 SW 49th Ave  # 314',NULL,'Portland','Oregon','97219','503-793-3662','971-722-4922',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-17 12:56:58','Building Operator Cert. LEVEL 1 - Portland','Remi','Sabbe','remi.sabbe@pcc.edu','9/1/63','Maintenance Custodian','PCC','9175 SW Edgewood St.',NULL,'Tigard','Oregon','97223','503 639 4443',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-17 12:43:26','Building Operator Cert. LEVEL 1 - Portland','Charles','Geiger','charles.geiger@pcc.edu','11/18/50','Associate Manager','Portland Community College','12000 SW 49th Ave.',NULL,'Portland','Oregon','97219','971-722-4872','971-722-4922',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-17 07:20:14','Building Operator Cert. LEVEL 1 - Portland','Paul','Erickson','perickso@pcc.edu','03/23/70','Lighting Technician','PCC/FMS','Portland Community College','12000 SW 49th','Portland','Oregon','97219','503 793 7404','503 977 4922',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-16 16:59:18','Specialty Install Code for PV - March 18th Solarworld','Ron ','Burden','ronburd@hotmail.com','3/15/1974','Energy Trust Solar Program Inspector','Independent Contractor','609 NE Church St',NULL,'Portland','Oregon','97211','503 8063719',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-16 16:19:59','Building Operator Cert. LEVEL 1 - Portland','Larry','Kirkendoll','lkirkendoll@shorenstein.com','XX-XX-XX','Chief ','Able Engineering','One SW Columbia St Suite 450','Shorenstein Reality Services','Portland','Oregon','97201','503-412-4800',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-16 16:06:29','Building Operator Cert. LEVEL 1 - Portland','Thom','Jordan','tjordan@shorenstein.com','summer ','Chief Engineer','Able Engineering Services','1001 S.W. 5th ',NULL,'Portland','Oregon','97258','503-227-4638','503-227-4647',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-16 16:04:16','Building Operator Cert. LEVEL 1 - Portland','Patrick','Stuart','pstuart@shorenstein.com','9/20/61','Chief Engineer','Able Engineering Services','5335 Meadows Road','Suite 275','Lake Oswego ','Oregon','97035','503-443-2187',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-16 15:41:33','Building Operator Cert. LEVEL 1 - Portland','Stacy','Dietz','sdietz@shorenstein.com','02/26/1969','Chief Engineer','Able Engineering Services','4380 S.W. Macadam Ave.','Suite 230','Portland','Oregon','97239','503-519-3695','503-224-9462',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-16 15:09:18','Building Operator Cert. LEVEL 1 - Portland','Chet','Bowlsby','cbowlsby@shorenstein.com','5-29-1952','Engineering Manager','Able Engineering Services','One SW Columbia Suite 500',NULL,'Portland','Oregon','97258','503-412-4849','503-412-4848',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-15 15:53:39','Building Operator Cert. LEVEL 1 - Portland','Douglas','Fritz','douglas.fritz@pcc.edu','09/08/1964','Custodian','Portland/comunity colledge/Rock Creek','5901 Oklahoma Dr',NULL,'Vancouver','Washington','98661','(360) 513-5766',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-15 13:06:09','Building Operator Cert. LEVEL 1 - Portland','Richard','Weber','rich.weber@pcc.edu','04/24/1963','Irrigation tech','PCC Grounds','12000 SW 49th ave. CSB Rm114',NULL,'Portland','Oregon','97219','971-722-8348','971-722-8807',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-15 08:40:27','Building Operator Cert. LEVEL 1 - NE Oregon','Ashley','McCabe','amccabe@ione.k12.or.us','12-27-58','Maintenance/Custodian','Ione School District','PO Box 167',NULL,'Ione','Oregon','97843','(541) 422-7131','(541) 422-7555',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-14 19:13:37','Building Operator Cert. LEVEL 1 - Portland','Michael','Murphy','michael.murphy11@pcc.edu','11-09-1954','Lighting Tech','Portland Community College','PCC Sylvania Campus, CSB','12000 SW 49th Ave.','Portland','Oregon','97219','503-969-2971','971-7224922',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-14 15:00:05','Building Operator Cert. LEVEL 1 - Portland','Anne','Olsofka','anne.olsofka@pcc.edu','06/16/1960',NULL,NULL,'PCC CSB 208','12000 SW 49th AVE','Portland','Oregon','97219','971-722-4583','971-722-8156',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-14 14:45:34','Building Operator Cert. LEVEL 1 - Portland','John','Zalas','john.zalas15@pcc.edu','10/24/1960','Alarms/Low Voltage Technician','Portland Community College','FMS Department (College Services Building)','12000 SW 49th Ave.','Portland','Oregon','97219','971 722-4647','503 977-4805',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-14 14:26:43','Building Operator Cert. LEVEL 1 - Portland','John','Lussier','jlussier@pcc.edu','1-15-1964','Irrigation tech','Portland community college','12000 sw 49th ave',NULL,'Portland','Oregon','97219','9717228349','9717228807',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-10 17:31:12','Specialty Install Code for PV - March 18th Solarworld','Steve','Lopes','appcontechnw@gmail.com','10-31-52','Owner','Applied Conservation Technologies LLC','1905 S.W. Butler Rd.',NULL,'Gresham','Oregon','97080','503 317-7991','503 618-7991',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-10 15:55:00','Specialty Install Code for PV - March 18th Solarworld','John','Hoffard','casey@hillsboroelectric.com','12/18/50','Member','Hillsboro Electric, LLC','21185 NW Evergreen Pkwy #110',NULL,'Hillsboro','Oregon','97124','503-439-9666','503-601-3680',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-09 07:59:49','Specialty Install Code for PV - March 18th Solarworld','Daniel','Dummer','dan@engelmanelectric.com','7-8-71','President','Engelman Electric Inc,','P.O. Box 451',NULL,'Hubbard','Oregon','97032','503-981-8041','503-981-4026',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-08 13:47:41','Specialty Install Code for PV - March 18th Solarworld','Peter','Chimuku','laughlinelectric@comcast.net','07/29/1984','Employee','Laughlin Electric LLLC','3 Monroe Parkway','Suite P #205','Lake Oswego','Oregon','97035','503.449.7420',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-07 16:13:14','Specialty Install Code for PV - March 18th Solarworld','Grant','Laughlin','laughlinelectric@comcast.net','02/19/1966','Member','Laughlin Electric LLC','3 Monroe Parkway','Suite P #205','Lake Oswego','Oregon','97035','503.449.7420',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-03 16:18:53','Specialty Install Code for PV - March 18th Solarworld','Paul','Ellis','paul@hillsboroelectric.com','4-27-1952','Estimator / Project Manager','Hillsboro Electric','21185 NW Evergreen Parkway',NULL,'Hillsboro','Oregon','97124','503.439.9666','503.601.3680',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-02 09:40:27','2011 Energy Management Certificate (EMC)','Jon','Hampton','jon_hampton@sarasota.k12.fl.us','08/30/1960','Energy Manager','Sarasota County Schools','5016 30th Street Court East',NULL,'Bradenton','Florida','34203','941-915-1502','941-361-6870',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-01 17:16:10','Specialty Install Code for PV - March 18th Solarworld','Michael','Rust','mikerust@palaceconstruction.com','4-29-1955','Senior superintendent',NULL,'8733 S.E. Division St.  Suite 201',NULL,'Portland','Oregon','97266','503-257-6674','503-357-6675',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-03-01 11:19:37','Specialty Install Code for PV - March 18th Solarworld','Mark','Farrell','mark@synchrosolarnw.com','11/20/62','Project Developer','Synchro Solar','1111 E BURNSIDE STREET','SUITE 308','Portland','Oregon','97214','503-867-7046',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-25 15:58:08','Specialty Install Code for PV - March 18th Solarworld','Andrew','Koyaanisqatsi','andrew@solarenergyoregon.com','3-24-57','President','Solar Energy Solutions, Inc','3730 SE Lafayette Court',NULL,'Portland','Oregon','97202','503-238-4502',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-24 23:20:10','Specialty Install Code for PV - March 18th Solarworld','Christopher','Wright','chris@mpdec.com','10-23-1966','Supervising Electrican','MPD Systems Inc','10117 SE Sunnyside RD','Suite F517','Clackamas','Oregon','97015','503-708-3689',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-24 14:14:45','Specialty Install Code for PV - March 18th Solarworld','John','Dunn','john.dunn@earthlink.net','11/16/48','Owner','Solar Options Northwest','3875 NW Live Oak Drive',NULL,'Corvallis','Oregon','97330','541-760-4963',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-23 16:00:16','Specialty Install Code for PV - March 18th Solarworld','Dustin','O Rear','globalelectricin@qwestoffice.net','4/3/1984',NULL,'Global Electric Inc','PO Box 162',NULL,'North Plains','Oregon','97133','503-647-5650',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-23 15:57:51','Specialty Install Code for PV - March 18th Solarworld','Justin','Spiering','Globalelectricin@qwestoffice.net','5/7/1975','President','Global Electric Inc.','PO Box 162',NULL,'North Plains ','Oregon','97133','503-647-5650',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-23 10:59:07','Specialty Install Code for PV - March 18th Solarworld','Sam','Marchand','sam@energyunlimitedllc.com','01/18/1977','Project manager',NULL,'38888 Pioneer Blvd',NULL,'Sandy','Oregon','97055','903-513-4613',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-22 14:14:45','Specialty Install Code for PV - March 18th Solarworld','Dev','Ajudia','allied100@hotmail.com','06/13/1954','Owner','Allied Building Services','11575 SW Pacific Hwy # 250',NULL,'Tigard','Oregon','97223','503-245-3016',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-21 12:54:49','Building Operator Cert. LEVEL 1 - NE Oregon','Terrell','Carpenter','terrell_carpenter@yahoo.com','07/08/1978','Maintenance','Blue Mountain Hospital','307 N Canyon Blvd.',NULL,'John Day','Oregon','97845','541-620-0078','541-575-4165',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-21 10:16:10','Click here to select...','Steve','Hill','steve77@centurytel.net','05/05/1961','DIrector of Facilities Services','Blue Mountain Hospital','170 Ford Road',NULL,'John Day','Oregon','97865','541-575-1311','541-575-1255',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-11 11:16:09','Building Operator Cert. LEVEL 1 - NE Oregon','Shawn','Thatcher','sthatcher@pineeagle.k12.or.us','11/1/1963','Facilities Supervisor','Pine Eagle School District','375 N. Main Street',NULL,'Halfway','Oregon','97834','541-742-2811','541-742-2810',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-08 09:33:40','2011 Energy Management Certificate (EMC)','Shelley','Stephenson','shelley.stephenson@eweb.org','8/13/1980','Energy Managment Specialist','Eugene Water & Electric Board','PO Box 10148',NULL,'Eugene ','Oregon','97440','541-685-7314','541-685-7314',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-07 09:46:56','Click here to select...','Dan ','Yount','daniel.t.yount@intel.com','6/10/1953','HVAC/Elec TECH','INTEL','1034 37th Ave',NULL,'Hillsboro','Oregon','97116','503-613-0754','N/A',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-02-03 10:43:56','2011 Energy Management Certificate (EMC)','Laura ','Schaefer','ljsgecko@gmail.com','04/25/85','Energy Outreach Specialist','Portland State University','15272 SW Millikan Way','Apt 434','Beaverton','Oregon','97006','434-381-0856',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-01-27 20:36:15','Click here to select...','Debbie','Pitzer','tpitzer8@msn.com','07-24-66',NULL,NULL,'4013 SW 314th Street',NULL,'Federal Way, WA','Washington','98023','253-661-6908',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-01-03 19:37:11','Click here to select...','Muhammad','Zia','ziamk@hotmail.com','08/31/1969',NULL,NULL,'13 edmond st',NULL,'Darien','Connecticut','06820','203 428 1405',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-09 06:00:27','2011 Summer Energy Educator Series (SEES)','David','Schmidt','dschmidt@mwcc.mass.edu','1/18/82','Energy Management Program Coordinator','Mount Wachusett Community College','444 Green St',NULL,'Gardner','Massachusetts','01440','978 630 9240','978 630 9511',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-08 01:36:30','Building Operator Cert. LEVEL 1 - Portland','Maximus','Enwere','maximusenwere@yahoo.com','18/09/1985','Mr','American University Of Nigeria','Lamido Zubairu Way, Yola By-pass','PMB 2250 Yola Adamawa State','Yola','Non-US','234','+2348063451868',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-07 15:33:13','Building Operator Cert. LEVEL 1 - Portland','Christie','Sphoon','christie.sphoon@state.or.us','06/08/79','ENERGY SPECIALIST','OREGON DEPARTMENT OF ENERGY','625 MARION STREET NE',NULL,'Salem','Oregon','97301','503-378-4040','503-373-706',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-06 09:06:29','Building Operator Cert. LEVEL 1 - Portland','Curry','Valentine','curryvalentine@yahoo.com','10/19/73','Journeyman electrcian',NULL,'18136 ne everett ct.',NULL,'Portland','Oregon','97230','503-954-4639',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 15:23:33','Specialty Install Code for PV - Dec 9th Solarworld','Bruce','Fiero','willpowerelect@aol.com','6-26-53','Owner','Willpower Electric','5000 Fern Valley Road',NULL,'Medford','Oregon','97504','541 973 7751',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 13:45:11','Specialty Install Code for PV - Dec 9th Solarworld','Thomas','Staten','thomas@chickofalltrades.com','10/20/1971','Project Manager','Chick Of All Trades','2271 SE Milwaukie Ave',NULL,'Portland','Oregon','97202','503-467-1965','503-284-1177',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 12:59:07','Specialty Install Code for PV - Dec 9th Solarworld','Lynne','Cuevas','lynne.cuevas@portlandoregon.gov','10/01/1963','Lead Electrician','City of Portland Bureau of Transportation','1120 SW 5th Ave, Suite 800',NULL,'Portland','Oregon','97204','503-823-6329','503-823-2026',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 12:57:34','Specialty Install Code for PV - Dec 9th Solarworld','Dan','Passmore','daniel.passmore@portlandoregon.gov','06/20/1976','Electrician','City of Portland Bureau of Transportation','1120 SW 5th Ave, Suite 800',NULL,'Portland','Oregon','97204','503-823-6500','503-823-2026',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 12:52:18','Specialty Install Code for PV - Dec 9th Solarworld','Amy','Passmore','amy.passmore@portlandoregon.gov','5/25/1970','Electrician','City of Portland Bureau of Transportation','1120 SW 5th Ave, Suite 800',NULL,'Portland','Oregon','97204','503-823-2710','503-823-2026',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 12:21:04','Specialty Install Code for PV - Dec 9th Solarworld','Brion','Wickstrom','brion@synchrosolarnw.com','03/22/78','Solar Thermal Project Manager','Synchro Solar','1111 E Burnside Street, Ste 308',NULL,'Portland','Oregon','97214','5035452025',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 11:01:22','Specialty Install Code for PV - Dec 9th Solarworld','Jon','Koller','jkoller@oregoniron.com','4/10/1982',NULL,'Maranatha Electrical Construction Co','PO Box 1309','14434 SE Industrial Way','Clackamas','Oregon','97015','503-786-2071','503-794-6297',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:39:20','Specialty Install Code for PV - Dec 9th Solarworld','Vince','McClellan','info@solarenergydesign.com','11/10/59',NULL,NULL,'P.O. Box 26039 ',NULL,'Eugene','Oregon','97402','541-517-2121',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:20:44','Specialty Install Code for PV - Dec 9th Solarworld','Ry','Heller','ry@solarenergydesign.com','1/15/1982','Numbers Procurement','Energy Design','860 Conger St.','Unit # 12','Eugene','Oregon','97402','541-515-3731','541-338-3168',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:19:17','Specialty Install Code for PV - Dec 9th Solarworld','Willie','Hoobler','willie@solarenergydesign.com','3/8/73',NULL,NULL,'P.O. Box 26039',NULL,'Eugene','Oregon','97402','541-335-1613',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:15:17','Specialty Install Code for PV - Dec 9th Solarworld','Eugene','Africa','eugene@solarenergydesign.com','08/17/1982','Operational Oversight','Energy Design','860 Conger St.','unit # 12','Eugene','Oregon','97402','541-517-6958','541-338-3168',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:14:22','Specialty Install Code for PV - Dec 9th Solarworld','Randy','Feldhaus','randy@synchrosolarnw.com','03/14/69','Director of Marketing','Synchro Solar','1111 E Burnside Street, Ste 308',NULL,'Portland','Oregon','97214','5038035537',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:11:50','Specialty Install Code for PV - Dec 9th Solarworld','Sarah ','Freel','sarah@synchrosolarnw.com','10/06/79','Solar Electric Project Manager','Synchro Solar','1111 E Burnside','Suite 308','Portland','Oregon','97214','5039532053','5032323479',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:11:04','Specialty Install Code for PV - Dec 9th Solarworld','Keith','Knowles','keith@livelightenergy.com','5/11/71','President','LiveLight Energy LLC','9325 SW Barber St.',NULL,'Wilsonville','Oregon','97070','(503) 682-2168','(503) 682-6920',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 10:10:31','Specialty Install Code for PV - Dec 9th Solarworld','Eric','Morrison','eric@solarenergydesign.com','1/6/75',NULL,NULL,'P.O. Box 26039',NULL,'Eugene','Oregon','97402','541-517-7548',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 09:39:34','Specialty Install Code for PV - Dec 9th Solarworld','Andrew','McWilliams','andrew@greenhome-construction.com','9/9/1968','Solar Technician','Green Home Constructio ','64 Bristol Rd',NULL,'White Salmon','Washington','98672','541 948 1280',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 09:23:52','Specialty Install Code for PV - Dec 9th Solarworld','Todd','Rhodes','todd.rhodes@comcast.net','11/3/65','Electrician','Ecotech LLC','2435 N. Lombard St.',NULL,'Portland','Oregon','97217','503-547-3684',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 09:19:23','Specialty Install Code for PV - Dec 9th Solarworld','Kevin','Belida','kevinbelida@yahoo.com','10/27/80',NULL,'Ecotech LLC','4311 SE 37th Ave., Apt 6',NULL,'Portland','Oregon','97202','503-747-9176',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 08:59:15','Specialty Install Code for PV - Dec 9th Solarworld','Darren','Whittington','darren@livelightenergy.com','5/22/75','Project Lead','LiveLight Energy','9325 sw barber st',NULL,'Willsonville ','Oregon','97070','9713225988',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 08:10:18','Specialty Install Code for PV - Dec 9th Solarworld','Sam','Harriman','sam@livelightenergy.com','10/07/1978','Installer','LiveLight Energy LLC','9325 SW Barber St.',NULL,'Wilsonville, ','Oregon','97070','(307) 690-5033',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 07:34:47','Specialty Install Code for PV - Dec 9th Solarworld','Jeff ','Elsenbaumer','jelsenbaumer@hotmail.com','3/13/1962','Journeyman','Full Circuit Construction','29270 SW Parkway CT',NULL,'Wilsonville','Oregon','97070','(503) 427-2176',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 07:20:40','Specialty Install Code for PV - Dec 9th Solarworld','Kent','Wilcox','kent@livelightenergy.com','11/16/56','Director of Operations','LiveLight Energy LLC','9325 SW Barber St.',NULL,'Wilsonville','Oregon','97070','(503) 863-7169','(503) 682-6920',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-03 07:09:55','Specialty Install Code for PV - Dec 9th Solarworld','Kyle','Kobel','kyle@tannercreekenergy.com','11/21/71','Vice President','Tanner Creek Energy','5228 SE Lincoln St.',NULL,'Portland','Oregon','97215','503.816.7739',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 19:08:39','Specialty Install Code for PV - Dec 9th Solarworld','Jordan','Weisman','jordan@futurecitysolar.com','09/25/1979','Owner','Future City Solar','1631 NE Broadway #320',NULL,'Portland','Oregon','97232','503-407-6820',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 16:43:24','Specialty Install Code for PV - Dec 9th Solarworld','David','Haupt','david@aesoregon.com','09/28/1956',NULL,NULL,'PO Box 1057',NULL,'Sherwood','Oregon','97140','503-537-2121',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 14:09:59','Specialty Install Code for PV - Dec 9th Solarworld','Travis','Hise','thise@sunwize.com','8/23/69','Residential Project Engineer','Sunwize','1337 main st.',NULL,'Philomath','Oregon','97370','541-929-9999',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 14:01:33','Specialty Install Code for PV - Dec 9th Solarworld','Ben','Dodd','bdodd74@gmail.com','3-27-86','TCCT','B & C Smith Contracting, LLC','61570 Sunny Breeze Ln',NULL,'Bend','Oregon','97702','541-419-2660','541-389-8506',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 13:24:27','Specialty Install Code for PV - Dec 9th Solarworld','Aaron ','Watzig','aaronw@westsideelectric.com','10/25/76','Estimator','West Side Electric Co','1834 SE 8th Ave',NULL,'Portland','Oregon','97214','503-231-1548','503-231-9987',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 10:48:39','Specialty Install Code for PV - Dec 9th Solarworld','Alan','Mathias','agmathias@wildblue.net','8/20/73',NULL,NULL,'299 S Bayshore Dr',NULL,'Coos Bay','Select...','97420','541.290.1975',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 10:45:40','Specialty Install Code for PV - Dec 9th Solarworld','Seth','Lucas','shannon@solcoast.com','9/1/76',NULL,NULL,'299 S Bayshore Dr',NULL,'Coos Bay','Oregon','97420','541.266.0877',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 10:44:39','Specialty Install Code for PV - Dec 9th Solarworld','Sam','Schwarz','sam@solcoast.com','7/16/80',NULL,NULL,'299 S Bayshore Dr',NULL,'Coos Bay','Oregon','97420','541.266.0877',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 10:28:06','Specialty Install Code for PV - Dec 9th Solarworld','Jeff','Friedman','jeff@livelightenergy.com','8/29/1956','Solar Consultant','LiveLight Energy LLC','9325 SW Barber Steeet',NULL,'Wilsonville','Oregon','97070','5038637724',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 07:41:24','Specialty Install Code for PV - Dec 9th Solarworld','Douglas ','Closner','douglaselectricalinc@yahoo.com','5/13/1957','Supervisor Electrician','Douglas Electrical Inc.','16450 S. Forest Glen Dr.',NULL,'Mulino','Oregon','97042','5038295100','5038295100',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 07:39:34','Specialty Install Code for PV - Dec 9th Solarworld','Jason ','Closner','jkornc2001@yahoo.com','03/06/1983','Journeyman Electrician','Douglas Electrical Inc.','638 S. Molalla Ave.',NULL,'Molalla','Oregon','97038','9712192503','5038295100',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 07:35:02','Specialty Install Code for PV - Dec 9th Solarworld','Gary','Thomas','gary@solarmancompany.com','11-24-53','Owner','solar man','1205 sw jordan st.',NULL,'Grants Pass','Oregon','97526','541-660-4254','no fax',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-02 06:40:54','Specialty Install Code for PV - Dec 9th Solarworld','Clint ','Myers','Clint.Myers@pdxtrans.org','Later','Manager','City of Portland','2929 N. Kerby Ave.',NULL,'Portland','Oregon','97227','503.823.1741','503.823.2264',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 18:30:12','Specialty Install Code for PV - Dec 9th Solarworld','Philip','Tussing','ntussing@charter.net',92552,NULL,'Electric Norm, Inc','1365 SE 10th Street',NULL,'Warrenton','Oregon','97146','503 861-1688',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 17:37:36','Specialty Install Code for PV - Dec 9th Solarworld','Scott','Johnston','scott@clackamaselectric.com','05/12/1969','Owner','Clackamas Electric Inc.','PO Box 51',NULL,'Beavercreek','Oregon','97004','503-969-5684','503-632-2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 17:36:35','Specialty Install Code for PV - Dec 9th Solarworld','Neil','Fullington','neil@clackamaselectric.com',' 01/07/198','Manager','Clackamas Electric Inc.','PO Box 51',NULL,'Beavercreek','Oregon','97004','503-969-5684','503-632-2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 17:30:00','Specialty Install Code for PV - Dec 9th Solarworld','Craig','Beagley','craigor2608@gmail.com','04/02/1988','Electrician','Clackamas Electric Inc.','Po Box 51',NULL,'Beavercreek','Oregon','97004','503-969-5684','503-632-2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 17:25:24','Specialty Install Code for PV - Dec 9th Solarworld','Eric','Hansen','sidedrift@aol.com','06/19/1987','Electrician','Clackamas Electric Inc.','Po Box 51',NULL,'Beavercreek','Oregon','97004','503-969-5684','503-632-2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 16:34:20','Specialty Install Code for PV - Dec 9th Solarworld','Jayce ','Painter','jaycepain@msn.com','06/18/1986','Journeyman','Clackamas Electric Inc.','PO Box 51',NULL,'Beavercreek','Oregon','97004','503-896-7987','503-632-2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 16:23:59','Specialty Install Code for PV - Dec 9th Solarworld','John','Patterson','jp@mrsunsolar.com','5/25/49','Pres.','Mr Sun Solar','6125 NE Portland HWy',NULL,'Portland','Oregon','97218','503 866-6437','503 866-6437',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 14:43:15','Specialty Install Code for PV - Dec 9th Solarworld','Jennifer','Hall','Jeni@SynchroSolarNW.com',3121980,'Project Engineer','Synchro Solar','1111 E Burnside Street, Ste 308',NULL,'Portland','Oregon','97214','5036090215',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 14:06:35','Specialty Install Code for PV - Dec 9th Solarworld','Matt','Weber','weberelectricinc@aol.com','4-22-61','President','Weber Electric, Inc','PO Box 231154',NULL,'Tigard','Oregon','97062','503-620-1906','503-620-6819',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 14:01:25','Specialty Install Code for PV - Dec 9th Solarworld','Tom','Ullmann','Tom.Ullmann@pdxtrans.org','06/14/1956','Lead G.M.','City of Portland','2929 N. Kerby Ave.',NULL,'Portland','Oregon','97227','503.823.1755','503.823.2264',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 11:27:44','Specialty Install Code for PV - Dec 9th Solarworld','Bobby ','Fox','bob.fox@solarnation.com','6/4/61','Oregon Division Supervisor','Solar Nation Development','905 NW Corporate Dr.',NULL,'Troutdale','Oregon','97060','503.307.7661',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 11:07:05','Specialty Install Code for PV - Dec 9th Solarworld','Kathy','Bash','kathy@dmsarchitects.com',1955,'Architect','DMS Architects','2106 NE MLK Blvd.',NULL,'Portland','Oregon','97212','503-335-9040','503-335-5850',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 11:02:21','Specialty Install Code for PV - Dec 9th Solarworld','Bill','Boyk','cedarcanyon72@yahoo.com','May 11, 19','Owner/PVContractor','AmeriStar Solar','P.O. Box 192',NULL,'Banks','Oregon','97106','503-270-7804',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 10:54:24','Specialty Install Code for PV - Dec 9th Solarworld','Sam','Marchand','sammy.marchand@gmail.com','01-18-1977',NULL,'Energy Unlimited LLC','38888 Pioneer Blvd',NULL,'Sandy','Oregon','97055','503-668-6864',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 10:16:05','Specialty Install Code for PV - Dec 9th Solarworld','Michael','Langeliers','mlangeliers@sunwize.com',30981,'Commercial Project Engineer','Sunwize Technologies, Inc.','1337 Main St','PO Box 895','Philomath','Oregon','97370','541-929-9999','541-929-8377',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 09:50:05','Specialty Install Code for PV - Dec 9th Solarworld','Ken','Denouden','ken@aesrenew.com','11/18/1964','Electrical Supervisor','Advanced Energy Systems','65 Centennial Loop',NULL,'Eugene','Oregon','97401','541-683-2345','541-683-2040',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 09:37:10','Specialty Install Code for PV - Dec 9th Solarworld','Jeremiah','Chavez','jeremiah@solarenergydesign.com','2/17/77','PV Designer','Energy Design','420 River Loop #2',NULL,'Eugene','Oregon','97404','5415543795',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 09:16:47','Specialty Install Code for PV - Dec 9th Solarworld','Chance','Currington','chance.currington@sunlightsolar.com','05/29/1975','Project Manager','Sunlight Solar','5331 SW Macadam Ave',NULL,'Portland','Oregon','97236','503.724.0767','541.322.1910',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 09:00:30','Specialty Install Code for PV - Dec 9th Solarworld','Brad','Buckmaster','Brad@buckmasterpro.com','9.1.63','Owner','Buckmaster Pro','P.O. Box 1029','36898 Langham Ln','Lebanon','Oregon','97355','541-451-5900','541-451-1638',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 08:56:09','Specialty Install Code for PV - Dec 9th Solarworld','Joel','Ranua','joel@buckmastersolar.com','01.13.1968','Sales Manager','Buckmaster Pro','P.O. Box 1029','36898 Langham Ln','Lebanon','Oregon','97355','541-401-6150','541-451-1638',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 08:30:41','Specialty Install Code for PV - Dec 9th Solarworld','Dean ','Abney','dean@abneysolarelectrix.com','12-8-56','Owner','Abney Solar Electrix','11244 NW Kingwood Dr',NULL,'Redmond','Oregon','97756','5419236000','5419236376',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-12-01 07:18:53','Specialty Install Code for PV - Dec 9th Solarworld','Don','Schallerer','don@fullcircuit.net','11/01/1955','Owner','Full Circuit Construction','3325 NE 29th AV',NULL,'Portland','Oregon','97212','503-490-3173','503-249-5089',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-30 11:37:32','Specialty Install Code for PV - Dec 9th Solarworld','Shannon','Souza','shannon@solcoast.com','9/20/71','Principal','Sol Coast Consulting & Design, LLC','299 S Bayshore Dr',NULL,'Coos Bay','Oregon','97420','541.266.0877',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-30 11:08:04','Specialty Install Code for PV - Dec 9th Solarworld','Robert','Kyle','rkyle@q.com','07-27-1947',NULL,NULL,'670 Franklin Ave',NULL,'Astoria','Oregon','97103','(503)338-8889','(503)338-2926',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-30 10:38:35','Specialty Install Code for PV - Dec 9th Solarworld','Michael','Kyle','michaelrkyle@yahoo.com','01/21/1976','Supervising Electrician',NULL,'4340 sw 182nd Ave',NULL,'Aloha','Oregon','97007','503 356 5316',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-29 19:43:08','Specialty Install Code for PV - Dec 9th Solarworld','Brent','Gunderson','genconsolar@aol.com','4-18-62','President','Gen-Con, Inc.','PO Box 25553',NULL,'Portland','Oregon','97298','503-245-7657','same',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-29 11:21:25','Specialty Install Code for PV - Dec 9th Solarworld','Alan','Davidson','alkedavidson@earthlink.net','03-16-58','Journeyman Electrican','Red''s Electric','16044 S Brook Ct.',NULL,'Oregon City','Oregon','97045','503 655-3331','503-233-1281',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-25 08:56:01','Specialty Install Code for PV - Dec 9th Solarworld','Richard','Lee','ridgeline@gorge.net','07/16/1968','Owner','Ridgeline Electric & Design Inc','PO Box 1429',NULL,'Hood River','Oregon','97031','5414909771',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-24 11:48:36','Specialty Install Code for PV - Dec 9th Solarworld','Steve','Carpentier','steve@energyunlimitedllc.com','02/08/1975',NULL,'Energy Unlimited LLC','38888 Pioneer Blvd',NULL,'Sandy ','Oregon','97055','503-668-6864','503-482-0048',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-23 05:39:33','Specialty Install Code for PV - Dec 9th Solarworld','Jeff','McLean','jeff@cascaderoseburg.com','10/9/1961','President','Cascade Electric','PO Box 2158',NULL,'Roseburg','Oregon','97470','(541) 673-5957','(541) 673-7972',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-15 13:37:16','Building Operator Cert. LEVEL 2','Karl','Lott','lott010159@yahoo.com','01/01/1959','Maintenance Engineer','American Soceity of Engineers','5736 West Forest Homes Avenue APT.6',NULL,'Greenfeild','Wisconsin','53220','414-209-2204',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-22 08:03:40','Specialty Install Code for PV - Dec 9th Solarworld','Mike','Opray','Lynn@orient-electric.com','06/14/60','Solar Estimator','Orient Electric','30532 SE Bluff Rd',NULL,'Gresham','Oregon','97080','503-663-5881',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-22 06:50:05','Specialty Install Code for PV - Dec 9th Solarworld','Olusegun','Tomomewo','segzzitom@yahoo.com','25-05-81','Mr.','Private','2, Ajose Adeogun Street','7th Floor, Zenon Floor','Victoria Island','Louisiana','23401','+2347086458301',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-21 11:39:29','Specialty Install Code for PV - Dec 9th Solarworld','Richard','Poudrier','richardpsalem@comcast.net','03/03/1954',NULL,NULL,'1695 Corina Drive SE',NULL,'Ssalem','Oregon','97302','503-399-9900','503-399-0099',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-18 21:01:02','Sustainable Building Advisor Pro.','Ranju','Pandey','ranjupandey332@hotmail.com','13-12-1982','Energy management and Efficiency','People energy and environment development association','Bhanimandal, Ekantakuna',NULL,'Kathmandu','Non-US','977','9849004807',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-18 13:49:43','Specialty Install Code for PV - Dec 9th Solarworld','Greg','Carlson','greg@carlsonroof.com','06/12/1974','Vice President','Carlson Roofing Company Inc.','P.O. Box 1695','550 SW Maple Street','Hillsboro','Oregon','97123','503-846-1575','503-640-2122',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-18 12:04:18','Specialty Install Code for PV - Dec 9th Solarworld','Anthony','Tomlinson','anthony.tomlinson@comcast.net','06/06/1974','Design Installation and Construction Manager','The Green Store','500 Olive Street',NULL,'Eugene','Oregon','97401','541-344-1530','541-344-1897',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-16 14:18:00','Building Operator Cert. LEVEL 1 - NE Oregon','Loran','Monaco','loran.monaco@athwest.k12.or.us','11/02/51','Maintenance Supervisor','Athena Weston School District','#75 South Fifth Street',NULL,'Athena','Oregon','97813','541-566-3642','541-566-9454',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-16 09:17:59','Building Operator Cert. LEVEL 1 - NE Oregon','Craig','Gaines','craig.gaines@miltfree.k12.or.us','09-07-1966','Lead custodian','central middle school','306 sw 2nd',NULL,'Milton-Freewater','Oregon','97862','541-938-5504','541-938-6615',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-09 07:25:56','Building Operator Cert. LEVEL 1 - Portland','Travis','Arn','Mary.Kohne@orecity.k12.or.us','02/10/1983','Utility Maintenance','Oregon City School District','14268 S Maple Lane Ct',NULL,'Oregon City','Oregon','97045','503-785-8530','503-650-6610',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-09 07:22:54','Building Operator Cert. LEVEL 1 - Portland','Vernon','Scriber','Vernon.Scriber@orecity.k12.or.us','05/19/1960','Utility Maintenance','Oregon City School District','14268 S Maple Lane Ct',NULL,'Oregon City','Oregon','97045','503-785-8530','503-650-6610',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-05 19:22:46','Summer Energy Educator Series - 2011','Zuhair','Mased','mased@pclinx.com','03/25/1954','Associate Director','University of Iowa','2008 Holiday Rd',NULL,'Coralville','Iowa','52241','2064074025',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-03 15:51:56','Building Operator Cert. LEVEL 1','Drew','Williams','drewilliams@lhs.org','09/06/73','Engineer','Legacy Salmon Creek Medical Center','2211 NE 139th Street',NULL,'Vancouver','Washington','98686','(360) 487-3601','(360) 487-3609',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-11-01 13:54:18','Building Operator Cert. LEVEL 1','Dana','Young','dyoung@cisoregon.org','04/27/1965','Office Coordinator','CityCounty Insurance Services','1212 Court St NE',NULL,'Salem','Oregon','97301','503-763-3895','503-763-3995',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-28 11:03:09','Building Operator Cert. LEVEL 1','Ann','Hushagen','ann.hushagen@state.or.us','0/0/0000','REVIEW ENGINEER','OREGON DEPT OF ENERGY','625 MARION ST NE',NULL,'Salem','Oregon','97301','503-373-7804','503-373-7806',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-27 13:30:50','Building Operator Cert. LEVEL 1','Althea','Sutton','Althea.Sutton@vansd.org','11/15/1954','Building Operator','Vancouver Public Schools','P.O. Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-25 12:51:41','Building Operator Cert. LEVEL 1','LARYN','Macauley','lmacauley@ci.springfield.or.us','4/16/74','BUILDING MAINTENANCE WORKER','CITY OF SPRINGFIELD','PUBLIC WORKS - MAINTENANCE','201 S 18TH ST','Springfield','Oregon','97477','541-726-3761','541-726-3621',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-22 20:01:12','NABCEP SolarPV Entry Level - Aug23-26','Dennis','Curley','denn617@yahoo.com','04/06/1958','Field agent','greensky energetics','5360 N. 13th St.',NULL,'Milwaukee','Wisconsin','53209','414-617-0652',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-21 10:40:35','Sustainable Building Advisor Pro.','Vonnie','Willard','vwillard9@gmail.com','03/31/1966','Student','LCC','2315 W 14 Ave',NULL,'Eugene','Oregon','97402','541-729-4544',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-19 13:13:10','Building Operator Cert. LEVEL 1','Derrick ','Elkins','delkins@lhs.org','03/21/71','Supervisor','Legacy Health','6381 SE Cavalier Way',NULL,'Milwaukie','Oregon','97267','503-593-7092',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-19 13:04:23','Building Operator Cert. LEVEL 1','Greg','Parks','gparks@lhs.org','03/14/1981',NULL,'Legacy Health','12114 NE 40th Circle',NULL,'Vancouver','Washington','98682','971-221-5897',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-18 21:36:06','Sustainable Building Advisor Pro.','Stanley','Honn','e4stan@aol.com','7/16/50','Architect','Honn Design & Construction','440 Charnelton Street',NULL,'Eugene','Oregon','97401','541-485-5150','541-485-8195',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-11 16:29:36','Sustainable Building Advisor Pro.','Matthew','Imlach','matti@wildish.com','06/14/1982','Project Manager','Wildish Building Company','PO Box 7428',NULL,'Eugene ','Oregon','97401','541.485.1700',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-11 15:39:00','Sustainable Building Advisor Pro.','Nora','Cronin','ncronin@svdp.us','07/18/1973','Housing Development Associate','St. Vincent de Paul Society of Lane County, Inc.','PO Box 24608',NULL,'Eugene','Oregon','97402','541-743-7139',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-11 05:38:19','Building Operator Cert. LEVEL 1','Gail','Edwards','gedwards@gwinnetttech.edu','05/01/67',NULL,NULL,'5150 Sugarloaf Parkway',NULL,'Atlanta','Georgia','30039','678.226.6367',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-08 10:18:32','Sustainable Building Advisor Pro.','Jimmy','Solano','solanoinc@yaoo.com','10/03/1968',NULL,NULL,'3189 kinsrow ave. apt 253',NULL,'Eugene','Oregon','97401','541-606-2004',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-06 11:12:23','Building Operator Cert. LEVEL 1','Dan','Yount','daniel.t.yount@intel.com','6/10/1953','Electrical Tech','Itnel Facility','1034 37th Ave',NULL,'Hillsboro','Oregon','97116','503-613-0754',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-04 09:54:13','Building Operator Cert. LEVEL 1','Craig','Previtera','previter@ohsu.edu','12/09/71','Facilities Tehnician 2','OHSU','3181 SW Sam Jackson Park Road','Mail Code: CBZ2','Portland','Oregon','97239','(503) 494-8170','(503) ',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-10-01 23:59:46','Sustainable Building Advisor Pro.','Aaron','Rourke','intothetrees00@gmail.com','05-27-86','Supervisor','Metrofolia Landscaping','412 Spruce Street',NULL,'Half Moon Bay','California','94019','650-823-6791',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-30 09:26:44','Click here to select...','Mark','Chapman','chapmanm@ohsu.edu','12-29-1956','Facilities Technician 1',NULL,'4730 SE 80th AV',NULL,'Portland','Oregon','97206','503-418-4419',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-29 12:27:38','Building Operator Cert. LEVEL 1','Edin','Didovic','edin.didovic@nike.com','01/06/1973','Facilities/Maintenance Tech','NIKE Inc','One Bowerman Drive',NULL,'Beaverton','Oregon','97006','(971)409-8814',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-24 09:24:04','Building Operator Cert. LEVEL 1','Chris ','Duncan','cduncan@riverstoneres.com','04/23/70','Sen. Maintenance Manager','Riverstone Residential Group','2314 NW Redelfs Way',NULL,'Beaverton','Oregon','97006','503.849.6113',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-22 09:51:53','Building Operator Cert. LEVEL 1','Daryn','Mattson','Daryn.Mattson@vansd.org','3/11/65','Building Operator','Vancouver Public Schools','P.O. Box 8937',NULL,'Vancouver','Washington','98668','(360)313-4767','(360)313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-22 09:47:26','Building Operator Cert. LEVEL 1','Clif','Dougherty','Clif.Dougherty@vansd.org','10/20/52','Building Operator','Vancouver Public Schools','P.O. Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-4767','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-16 07:29:23','Sustainable Building Advisor Pro.','Mary','Tegel','mvtegel@gmail.com',1948,'Owner','Tegel Design + Planning','2730 Emerald Street',NULL,'Eugene','Oregon','97403','541-683-4705',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-09 20:08:27','Energy Management Cert. Program','Larry','Weis','weislarry@ymail.com','08/19/1980',NULL,NULL,'1739 14th Ave SW',NULL,'Albany','Oregon','97321','541-619-9509',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-07 10:32:44','Building Operator Cert. LEVEL 1','Jesse','Wicker','Jesse.wicker@greshamoregon.gov','6-6-81','Facilities Maint. Tech II','City of Gresham','1333 nw Eastman Pkwy',NULL,'Gresham','Oregon','97030','503-793-7671','503-618-2512',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-09-02 09:24:36','Building Operator Cert. LEVEL 1','Andrew','Fridley','afridley@earthlink.net','12/11/62','Facilities Data Analyst','Portland Public Schools','501 N. Dixon St',NULL,'Portland','Oregon','97227','503-916-3331',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-26 10:44:53','Energy Management Cert. Program','Tamara','Mills','alpineimportservice@yahoo.com','04/01/1966','Manager',NULL,'1190 Main Street',NULL,'Springfield','Oregon','97477','541-726-1808',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 16:21:51','NABCEP SolarPV Entry Level - Aug23-26','Jerry','Hardison','hardisonj@lanecc.edu','7/19/1958','HVAC Specialist','FMP','4',NULL,'Eugene','Oregon','97405','541-463-5492','541-463-4199',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 16:18:59','NABCEP SolarPV Entry Level - Aug23-26','Scott','Sinclair','sinclairs@lanecc.edu','7/10/1963','Electrician','FMP','4000 E 30th Avenue',NULL,'Eugene','Oregon','97405','541-463-5541','541-463-4199',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 16:15:58','NABCEP SolarPV Entry Level - Aug23-26','John','Close','CloseJ@lanecc.edu','9/27/1958','Electrician','FMP','4000 E 30th Avenue',NULL,'Eugene','Oregon','97405','541-463-5541','541-463-4199',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 16:13:34','NABCEP SolarPV Entry Level - Aug23-26','Leo','Morin','MorinL@lanecc.edu','7/26/1954','Electrician','FMP','4000 E 30th Avenue',NULL,'Eugene','Oregon','97405','541-463-5541','541-463-4199',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 16:11:02','NABCEP SolarPV Entry Level - Aug23-26','Toby ','Kubler','kublert@lanecc.edu','8/27/1975','Facilities Assistant','FMP','4000 E 30th Avenue',NULL,'Eugene','Oregon','97405','541-954-4235','541-463-4199',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 09:37:44','NABCEP SolarPV Entry Level - Aug23-26','Jim','E','oregonsourdough@gmail.com','11-5-1954',NULL,NULL,'5510 SE Jackson',NULL,'Milwaukie','Oregon','97222','503-309-3592',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-23 09:37:02','NABCEP SolarPV Entry Level - Aug23-26','Jim','E','oregonsourdough@gmail.com','11-5-1954',NULL,NULL,'5510 SE Jackson',NULL,'Milwaukie','Oregon','97222','503-309-3592',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-20 21:49:27','Building Operator Cert. LEVEL 1','Jeff','Glowacki','jeffrey.glowacki@pcc.edu','02-21-1966','Custodian','Portland Community College','1829 SE 51st Avenue',NULL,'Portland','Oregon','97215','503-577-2143',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-20 13:41:25','Sustainable Building Advisor Pro.','Michael','Powers','mpower69@yahoo.com','01-sept-69',NULL,NULL,'PO Box 317',NULL,'Vida','Oregon','97488','541-653-6300',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-19 13:54:02','NABCEP SolarPV Entry Level - Aug23-26','Jim','Evans','oregonsourdough@gmail.com','11/5/1954',NULL,NULL,'5510 SE Jackson',NULL,'Milwaukie','Oregon','97222','503-309-3592',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-18 13:38:23','Sustainable Building Advisor Pro.','Constance','Staerk','lukaval65@hotmail.com','09-07-1965',NULL,NULL,'2839 Kinney Loop #4',NULL,'Eugene','Oregon','97408','541-678-2955',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-18 12:02:27','NABCEP SolarPV Entry Level - Aug23-26','Brad','Buckmaster','buckmasterpro@g-mail.com','09/01/63','OWNER','BUCKMASTER PLUMBING & HEATING','P.O. BOX 1029',NULL,'Lebanon','Oregon','97355','541-451-5900','541-451-1638',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-16 14:28:43','NABCEP SolarPV Entry Level - Aug23-26','Cy','Nowlan','cy@specialtyheating.com',1976,'Install manager','Specialty Heating & Cooling','7500 SW Tech Center Drive',NULL,'Tigard','Oregon','97223','503-620-5643','503-598-0718',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-16 14:23:42','NABCEP SolarPV Entry Level - Aug23-26','Paul','Cree','paul@paulcree.com','12/30/1969','Owner','Free Portland Solar','20474 SW Skiver street',NULL,'Beaverton','Oregon','97007','503-577-1468','888-503-6989',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-16 09:53:58','NABCEP SolarPV Entry Level - Aug23-26','Eric','Blackledge','Eric@SimpleSunEnergy.com','01/30/1947','President','SimpleSunEnergy','233 SW 2nd Street','P O Box 639','Corvallis','Oregon','97339','541-753-4851','541-752-9631',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-16 09:27:48','NABCEP SolarPV Entry Level - Aug23-26','Eduard','Ribic','ribics@windandsolar.com','01/20/1946',NULL,'Ribic''s Wind & Solar Enterprises','8319 W Sunset Hwy',NULL,'Spokane','Washington','99224','509-456-8397',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-16 07:56:14','NABCEP SolarPV Entry Level - Aug23-26','Scott','Johnston','scott@clackamaselectric.com','5/12/69','President','Clackamas Electric Inc.','PO Box 51',NULL,'Beavercreek','Oregon','97004','503.632.2420','503.632.2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-16 07:01:37','NABCEP SolarPV Entry Level - Aug23-26','Neil','Fullington','neil@clackamaselectric.com','1/7/82','Manager','Clackamas Electric Inc.','PO Box 51',NULL,'Beavercreek','Oregon','97004','503.632.2420','503.632.2421',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-15 13:02:15','NABCEP SolarPV Entry Level - Aug23-26','Jennifer','Atkins','jennifer@livelightenergy.com','11-03-1970','Energy Coordinator','LiveLight Energy, LLC','1750 SW 187th Ave',NULL,'Beaverton','Oregon','97006','888-919-2887',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-10 15:36:44','Sustainable Building Advisor Pro.','Ron ','Scott','scottrongreen@gmail.com','06/01/1975','Student','LCC','2883 Lord Byron',NULL,'Eugene','Oregon','97408','541-521-9318',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-03 08:42:26','Sustainable Building Advisor Pro.','Michael','Lasco','facilities@mountainroseherbs.com','12/31/1956','Facilities Manager','Mountain Rose Herbs','P.O. Box 50220',NULL,'Eugene','Oregon','97405','541-505-4978','510-217-4012',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-08-03 00:15:56','Summer Energy Educator Series - 2010','Casey','Phillips','solarmonger@gmail.com','06/25/1981','Student',NULL,'3601 Yogi Way',NULL,'Eugene','Oregon','97404','541-337-5727',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-07-31 10:15:06','NABCEP SolarPV Entry Level - Aug23-26','Ty','Burns','ty@pacificsolarandrain.com','01/11/1981',NULL,'Solar','1904 Arthur St.',NULL,'Eugene','Oregon','97405','5415563077',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-07-19 11:27:35','Sustainable Building Advisor Pro.','Michael','Powers','mpower69@yahoo.com','01-sept-69',NULL,NULL,'PO Box 317',NULL,'Vida','Oregon','97488','541-653-6300',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-07-19 11:25:51','Energy Management Cert. Program','Michael','Powers','mpower69@yahoo.com','01-sept-69',NULL,NULL,'PO Box 317',NULL,'Vida','Oregon','97488','541-653-6300',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-07-13 23:36:16','Energy Management Cert. Program','Dahiru Yahya','Dasin','dahirudasin@yahoo.com','21/11/69','Engr.','Federal University of Technology, Yola','Adamawa State',NULL,'Yola','Select...','64000','2347035891576',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-07-07 08:55:10','Energy Management Cert. Program','Alan','Seymour','alan.seymour@state.or.us','01/12/1953','Energy Policy Analyst','Oregon Dept of Energy','625 Marion St NE',NULL,'Salem','Oregon','97301','503-378-5873',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-07-01 09:31:46','Energy Management Cert. Program','Carl','Ellefsen','cellefsen@lakelandcc.edu','10/22/67','Engineering Lab Technician','Lakeland Community College','7700 Clocktower Dr.',NULL,'Kirtland','Ohio','44094','440-525-7277','440-525-7639',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-06-29 13:12:08','Summer Energy Educator Series - 2010','John','Hippensteel','john.hippensteel@nwtc.edu','6/21/56','Energy Instructor','Northeast Wisconsin Technical College','2740 W. Mason Street',NULL,'Green Bay','Wisconsin','54307','(920) 498-7103','(920) 498-6315',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-06-22 18:13:35','Summer Energy Educator Series - 2010','Gary ','Thompson','gary.thompson@rocketmail.com','05/25/1957','Instructional Specialist','WVU - Parkersburg','300 Campus Drive',NULL,'Parkersburg','West Virginia','26104','650 296-9928',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-06-15 07:39:43','Energy Management Cert. Program','James','Dustman','jimdustman@verizon.net','11/02/1951','Owner','Dustman Enterprises, LLC','2224 Sandcreek Ln',NULL,'Sandpoint','Idaho','83864','208-610-0622','208-265-6760',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-06-14 10:21:39','Summer Energy Educator Series - 2010','William','Beaucamp','wbeauch2@DTCC.edu','02/12/56','Instructor','DTCC','P.O. Box 610','Seashore Highway','Georgetown','Delaware','19947','302-856-5924','302-858-5466',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-06-14 09:40:20','Summer Energy Educator Series - 2010','Jimmy','Yeako','jyeako@dtcc.edu','14Nov50','HVAC Department Chair','Delaware Technicial & Community College','PO Box 610, Seashore Hwy',NULL,'Georgetown','Delaware','19947','302-855-5924','302-858-5466',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-06-07 23:41:51','Sustainable Building Advisor Pro.','Casey','Phillips','solarmonger@gmail.com','06/25/1981','Student',NULL,'3336 Loma Linda Dr.',NULL,'Eugene','Oregon','97405','541-337-5727',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-27 10:46:30','Energy Management Cert. Program','Bonnie','Meyer','bmeyer@osd.wednet.edu','02/28/1959','RCM','Olympia School District','1113 Legion Way SE',NULL,'Olympia','Washington','98501','3605968566','3605968561',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-26 21:33:48','Energy Management Cert. Program','Adam','Canales','canalesadam@gmail.com',1181981,'Mr.',NULL,'8219 Ellinger Ln.',NULL,'Houston','Texas','77040','8326135296',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-25 13:35:03','Sustainable Building Advisor Pro.','Steven','Johnson','stevejtlc@yahoo.com','04/19/1955','Owner','steven johnson construction','5620 alsea hwy.','po. box 861','Waldport','Oregon','97394','541-961-1478','541-563-5927',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-24 22:00:28','Summer Energy Educator Series - 2010','Steven','Johnson','stevejtlc@yahoo.com','04/19/1955','Owner','steven johnson construction','5620 alsea hwy.','po. box 861','Waldport','Oregon','97394','541-961-1478','541-563-5927',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-24 09:10:18','Summer Energy Educator Series - 2010','Mary','Marchegiano','marym@dtcc.edu','06-18-1957','Chair Electronics and Computer Engineering Technology','Delaware Tech-Stanton Campus','400 Stanton-Christiana Rd',NULL,'Newark','Delaware','19701','302-453-3795','302-739-6822',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-20 12:37:31','Sustainable Building Advisor Pro.','Cody','Rodenhuis','codyrodenhuis@yahoo.com','06/15/1984','MBA Student','Northwest Christian University','2570 Fillmore St.',NULL,'Eugene','Oregon','97405','541-954-1148',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-13 15:35:31','Building Operator Cert. LEVEL 1','Jerry','Deem','jdeem@nbsrealtors.com','7/10/64','Engineer','Norris Beggs & Simpson','One Centerpointe','One Centerpointe drive','Lake Oswego','Oregon','97206','503-684-6000','503-624-0636',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-13 07:56:57','Building Operator Cert. LEVEL 1','Kenneth','Richards','kenr@tigard-or.gov','2-28-1975','Senior Building Tech III','City Of Tigard','13125 SW Hall Blvd',NULL,'Tigard','Oregon','97223','503-327-9541','503-648-8840',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-12 12:04:35','Summer Energy Educator Series - 2010','Mike','Troge','amy.kox@nwtc.edu',4071971,'Solar Energy Instructor','Northeast Wisconsin Technical College','2740 W. Mason Street',NULL,'Green Bay','Wisconsin','54307','(920) 498-6908','(920) 498-6315',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-12 12:02:10','Summer Energy Educator Series - 2010','Tad','Bircher','amy.kox@nwtc.edu',4071971,'Energy Management Instructor','Northeast Wisconsin Technical College','2740 W. Mason Street',NULL,'Green Bay','Wisconsin','54307','(920) 498-6908','(920) 498-6315',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-11 11:06:26','Energy Management Cert. Program','William','Kostich','bill.kostich@cascadeenergy.com','3/16/65','Energy Smart Industrial Partner','Cascade Energy Engineering','5257 NE MLK Jr. Blvd.',NULL,'Portland','Oregon','97211','503.928.7461',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-07 11:23:14','Summer Energy Educator Series - 2010','Victor','Zarate','zaratev@arc.losrios.edu','4/26/68','Professor','American River College','4700 College Oaf Drive',NULL,'Sacramento','California','95841','(916) 484-8370',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-03 16:21:27','Energy Management Cert. Program','Mike','Hoffner','mjhoffnerpe@yahoo.com','8/4/1958','Instructor','lakeland community college','7700 clocktower dr',NULL,'Kirtland','Ohio','44094','440-525-7184',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-05-03 11:33:30','Energy Management Cert. Program','Kenneth','White','kwhite@lakelandcc.edu','8/29/59','Professor','Lakeland Community College','7700 Clocktower Drive',NULL,'Kirtland ','Ohio','44094','4405257292',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-30 13:09:22','Building Operator Cert. LEVEL 1','Richard','Galbreath','rgalbrea@mesd.k12.or.us','09/19/1963','Supervisor, Facility Services','Multnomah Education Service District','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','(503)969-2415','(503)257-1519',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-29 10:47:10','Energy Management Cert. Program','Alfonsus','Tanoto','alfonsus.tanoto@kemperdc.com','08/17/1988','Resource Conservation Manager','Kemper Development Company','575 Bellevue Square',NULL,'Bellevue','Washington','98004','425-753-8857',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-28 13:50:23','Building Operator Cert. LEVEL 2','Scott ','Gorton','hoodadamsview2@qnect.net','1/11/1958','Maintenance Tech 3','Provedence Hood River Memorial Hospital','811 13th street',NULL,'Hood River ','Oregon','97031','541 386 7293','541 387 6407',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-28 00:54:56','Energy Management Cert. Program','Elmamouni','Mohamed Nassur','elmamouni.nassur@yahoo.fr','03/09/1957','Directeur(ingénieur territorial)','Conseil Général de Mayotte','84 route nationale ','Passamainty','Mamoudzou','Non-US','97600','0639 03 19 71','0269631002',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-23 11:15:31','Building Operator Certification','Rob','Partenheimer','rpartenheimer@uws.edu','12-15-50','Director of Physical Plant','University of Western States','2900 NE 132nd Avenue',NULL,'Portland','Oregon','97230','503.251.5720','503.206.3219',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-23 09:51:50','Building Operator Certification','Ron','Storey','rstorey@stcharleshealthcare.org','4/20/53','Facilities Services Manager','Pioneer Memorial Hospital','1201 NE Elm St.',NULL,'Prineville','Oregon','97754','541-447-9462','541-447-2517',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-22 15:19:30','Building Operator Certification','Mark','Kirby','mkirby@cowlitzpud.org','06/24/1964','Facilities Manager','Cowlitz County PUD','P O Box 3007',NULL,'Longview','Washington','98632','360 423 2210',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-19 12:24:33','Building Operator Certification','Mark','Wheeler','mwheeler@mesd.k12.or.us','3-30-60','Coordinator Facility Services','Multnomah ESD','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','503-257-1786','503-257-1519',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-19 06:44:02','Building Operator Certification','Robert','Causby','robert.causby@assurant.com','11/02/1946','Facilities Tech 1','Assurant Solutions','1880 14th Ave SE',NULL,'Albany','Oregon','97322','541-936-1212','541-928-2336',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-14 20:20:42','Sustainable Building Advisor Program','Michael','Rabinowitz','msr1@gorge.net','7/18/1964',NULL,NULL,'PO Box 1704',NULL,'White Salmon','Washington','98672','509 493 2312',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-08 16:35:10','Building Operator Certification','Sonny','Melhorn','sonny.melhorn@ltd.org','10-17-78','Facilities Maintenance Generalist','Lane Transit District','P.O. Box 7070',NULL,'Eugene','Oregon','97401','541-682-6100','541-682-6111',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-08 16:31:03','Building Operator Certification','Joe','McFadden','joe.mcfadden@ltd.org','08-21-57','Facilities Maintenance Generalist','Lane Transit District','P.O. Box 7070',NULL,'Eugene','Oregon','97401','541-682-6100','541-682-6111',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-07 17:20:36','Energy Management Certification Program','Ted','Klym','tklym@comcast.net','11-16-58','Construction Project Manager',NULL,'10003 Andrush Ct.',NULL,'Lone Tree','Colorado','80124','303-346-0322',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-04-02 22:39:41','Sustainable Building Advisor Program','Brian Keith','Mason','masonbriankeith@gmail.com','04/18/1963','Student','Univ of Oregon','1455 Moss Street','Apartment 102','Eugene','Oregon','97403','541-514-0921',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-31 14:24:39','Energy Management Certification Program','Walter','Blevins','wblevins@nvusd.k12.ca.us','07/06/1956','Maintenance & Construction Supervisor','Napa Valley Unified School District','1616 Lincoln Ave ',NULL,'Napa','California','94558','707-253-3538','707-253-9270',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-30 11:35:59','Building Operator Certification','Mark','Baker','mark.baker@kronos.com','09/30/1962','Operations team lead','Kronos Inc.','9525 SW Gemini Dr.',NULL,'Beaverton','Oregon','97008','503-596-3433',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-23 13:37:12','Building Operator Certification','Cale','Adams','cale.adams@co.multnomah.or.us','02-18-1971','ENGINEER','MULTNOMAH COUNTY','401 N DIXON ST',NULL,'Portland','Oregon','97227','503-988-3322','503-988-5082',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-23 13:35:06','Building Operator Certification','Joe','Gipson','joe.f.gipson@co.multnomah.or.us','11-06-1959','ENGINEER','MULTNOMAH COUNTY','401 N DIXON ST',NULL,'Portland','Oregon','97227','503-988-3322','503-988-5082',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-19 10:29:09','Sustainable Building Advisor Program','Hugh','Gartrell','hughgartrell@yahoo.com','11/1/1956',NULL,NULL,'P. O. Box 152',NULL,'Waldport','Oregon','97394','541-547-5036',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-17 13:34:11','Building Operator Certification','Paul','Scherzinger','scherzingerp@pdc.us','10-12-74','Facilities Coordinator','Portland Development Commission','222 NW 5th Ave',NULL,'Portland','Oregon','97209','503.823.3210','503.865.3714',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-16 16:26:29','Building Operator Certification','Luis','Gonzalez','Luis.Gonzalez@GreshamOregon.gov','07/20/1972','Facilities Technician II','City of Gresham','1333 NW Eastman Parkway',NULL,'Gresham','Oregon','97030','503-618-2723','503-618-2512',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-11 08:41:12','Building Operator Certification','Daniel ','Golden','goldend@nclack.k12.or.us','8/21/65','District Project Manager','North Clackamas School District','Capital Project Dept','12451 SE fuller Rd','Milwaukie','Oregon','97222','503 353-6073','503 353-6065',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-10 13:59:36','Building Operator Certification','Shawn','Brothers','sbrothers@billnaito.com','9-30-71','Hvac tech','bill naito company','2701 nw vaughn st',NULL,'Portland','Oregon','97210','503-488-5000','503-273-8356',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-08 20:16:25','Energy Management Certification Program','Daniel','Davis','Dbld420@gmail.com',7301988,'Student','LCC','1729 High Alley Apt 3',NULL,'Eugene','Oregon','97401','5417780045',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-08 10:31:37','Building Operator Certification','James','Nelsen','jnelsen@thunderspring.org','11/10/66','Facilities/Operations Manager','Thunder Spring Condominium Owners Association','PO Box 5497','124 Saddle Road','Ketchum','Idaho','83340','208 720-6867','208-727-9089',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-05 13:57:01','Building Operator Certification','Glen','Boykin','glen.boykin@marriott.com','08-24-1968','Director of Engineering','Courtyard by Marriott','1789 S. Eagle Rd.','Meridian','Idaho','Idaho','83642','(208) 371-1802','(208) 888-0800',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-03-02 10:47:21','Energy Management Certification Program','Aftab','Masood','aftabkm_ntu@yahoo.com','3-4-1981',NULL,NULL,'H# 2167,St# 34 I-10/2 Islamabad','H# 2167,St# 34 I-10/2 Islamabad','Islamabad','Non-US','44000','+092-0333-41311',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-02-27 13:45:07','Energy Management Certification Program','Daniel','Weideman','weidemandaniel@yahoo.com','09/13/1982',NULL,NULL,'1756 Willamette Street',NULL,'Eugene','Oregon','97401','541-870-9779',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-02-17 10:50:43','Energy Management Certification Program','Carla','Wood','carla.wood@state.or.us','11/05/67','BETC Energy Analyst','Oregon Department of Energy','625 Marion Street NE',NULL,'Salem','Oregon','97301','503-373-1581','503-934-4006',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-02-05 10:57:00','Energy Management Certification Program','Jill','Hendrickson','jill.hendrickson@state.or.us','07/12/1969','Energy Analyst','Oregon Dept. of Energy','625 Marion Street NE',NULL,'Salem','Oregon','97301','503-934-4002','503-373-7806',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-02-05 09:54:44','Building Operator Certification','Dave','Towner','dgtowner@nbsrealtors.com','9/22/1967','Chief Engineer','Norris, Beggs & Simpson','700 Washington Street','STE 608','Vancouver','Washington','98660','360-518-8531',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-02-04 07:35:48','Energy Management Certification Program','Delvin','Craig','delvincraig85@yahoo.com','04-10-1992',NULL,NULL,'5391zodiac rd',NULL,'Memphis','Tennessee','38118','901-3098679','9018574472',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-31 10:19:11','Building Operator Certification','Joseph','Johnson','oscally@q.com','03/21/1951','Tech III/Project Super','Goodwill of the Columbia Willamette','909 Prospect Street',NULL,'Oregon City','Oregon','97045','503-722-2172','503-722-3281',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-27 11:43:42','Energy Management Certification Program','Shelley','York','shelley.york@eweb.org','8/13/1980','EMS Business Admin Asst.','EWEB','500 E 4th Ave',NULL,'Eugene ','Oregon','97401','541-685-7314',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-26 00:02:13','Energy Management Certification Program','Abraham','Kawata','Kawataabraham@yahoo.com','08-28-1971','A2','Electricien','601 Bellaire Dr 251','601 Bellaire Dr 251','Hurst','Texas','76053','817-500-1049',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-22 08:59:43','Sustainable Building Advisor Program','Hugh','Gartrell','hgartrell@gmail.com','11/01/1956',NULL,NULL,'P.O.Box 152',NULL,'Waldport','Oregon','97394','541-547-5036',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-19 13:09:26','Energy Management Certification Program','John','Colby','colby.j@utah.edu','01/05/1985',NULL,NULL,'1085 N. Oakridge Dr.',NULL,'Centerville','Utah','84014','8016355406',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-15 11:45:48','Building Operator Certification','Troy','Keeth','troy.keeth@comcast.net','11 26 70','Facilities tech','city of Beaverton','9600 sw allen blvd',NULL,'Beaverton','Oregon','97076','971 246 0198','503 526 2535',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-14 08:05:35','Energy Management Certification Program','Ryan','Melkus','ryanm100@charter.net','03/05/1980',NULL,NULL,'1910 Hawks Ridge Drive','#211','Verona','Wisconsin','53593','262-488-0762',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-11 09:31:03','Energy Management Certification Program','Joel','VanDyke','vanjoel66@yahoo.com','6-26-66','Owner','Energy auditors NW','4935 NW Hwy. 47',NULL,'Forest Grove ','Oregon','97116','503-523-7608','503-357-1717',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-10 09:24:45','Energy Management Certification Program','Dannette','Redmond','daredmond01@gmail.com','01/01/1970',NULL,NULL,'3401 12 street, ne 29489',NULL,'Wash','Maryland','20017','3013790042',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-08 23:31:02','Energy Management Certification Program','Seyed Javad','Motevallian','Jmmechanics@yahoo.com','26/06/1981',NULL,NULL,'Salman Farsi Street',NULL,'Sary','Non-US','33141','00983251339',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-07 14:34:12','Building Operator Certification','David','Burton','dsaburton@gmail.com','06/22/1969',NULL,NULL,'4616 NW Dahlia Drive',NULL,'Camas','Washington','98607','360-241-5376',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2010-01-04 11:39:08','Building Operator Certification','Steven','Needham','steven.needham@ikea.com','03-26-51','Facilitites Coworker','IKEA','10280 NE Cascades Parkway',NULL,'Portland','Oregon','97220','253-820-6755','503-205-5774',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-31 12:00:27','Building Operator Certification','Mike','Guilliot','mguilliot@hotmail.com','03/22/71','HVAC Tech','Greater Albany Public Schools','3610 Frand Prairie Road',NULL,'Albany','Oregon','97321','541-936-2735','541-924-3774',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-29 10:12:37','Energy Management Certification Program','Heidi','Burkart Wear','heidi.burkartwear@camas.wednet.edu','02/04/1972','Utilities Energy Secretary','Camas School District','1707 NE Ione Street',NULL,'Camas','Washington','98671','360-335-3000 ','ext. 78344',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-17 12:50:09','Understanding PV Code- Dec.18th-IBEW,Portland','Noah','Poe','noahmpoe@yahoo.com','07/27/1978','Mr.','InSpec','13310 sw Chelsea loop ',NULL,'Tigard','Oregon','97223','503-595-6540',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-17 10:25:28','Understanding PV Code- Dec.18th-IBEW,Portland','James','Donavan','applecross@flashmail.com','08/30/1948','Owner ','applecross electric','4483 corn creek rd.',NULL,'Days Creek','Oregon','97429','541-863-1275','541-825-3723',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-16 16:03:24','Understanding PV Code- Dec.18th-IBEW,Portland','Mohammed','Haque','peacetoyou18@yahoo.com','1/7/62','Marketing Mgr','Solareen LLC','3537 NW Gerritz Terr',NULL,'Portland ','Oregon','97229','503.704.5911',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-16 15:05:03','Building Operator Certification','Oscar','Butts','mbutts@ci.oswego.or.us','05-20-68','Facilities','City of Lake Oswego','Post Office Box 369',NULL,'Lake Oswego ','Oregon','97034','503-697-6523','503-534-5246',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-16 10:10:07','Understanding PV Code- Dec.18th-IBEW,Portland','Jennifer','Hall','Jeni.Hall@gmail.com','03/12/1980',NULL,NULL,'3056 NE Holladay Street #402',NULL,'Portland ','Oregon','97232','(805) 305-1209',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-14 13:25:06','Understanding PV Code- Dec.18th-IBEW,Portland','Jim','Noreen','jim.noreen@ies-co.com','4/10/76','Estimator','IES Commercial','16135 Sw 74th Ave',NULL,'Tigard','Oregon','97224','5036481900','5036709572',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-14 08:47:45','Energy Management Certification Program','Lisa','Atkin','lisa.atkin@eweb.org','08/23/1966','Office Manager','EWEB','500 E 4th St',NULL,'Eugene','Oregon','97401','541-685-7310',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-11 12:09:34','Understanding PV Code- Dec.18th-IBEW,Portland','Stephanie','Manzo','stephanie.manzo@sunlightsolar.com','04/08/79','Community Outreach & Marketing','Sunlight Solar Energy','4 NW Franklin Ave',NULL,'Bend','Oregon','97701','541-306-4240','541-322-1911',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-08 18:12:35','Understanding PV Code- Dec.18th-IBEW,Portland','John','Stimac','johnstimac@hotmail.com','05/19/1983','Apprentice',NULL,'2960 SW Western Blvd.',NULL,'Corvallis','Oregon','97333','541-760-4635',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-08 17:35:43','Understanding PV Code- Dec.18th-IBEW,Portland','James','Reismiller','james@abudantsolar.com','12.26.1972','Owner','Abundant Solar LLC','2015 SE Stone St.',NULL,'Corvallis','Oregon','97333','541-231-8772',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-08 09:40:50','Understanding PV Code- Dec.18th-IBEW,Portland','Alex','Mitasev','amitasev@inspecintl.com','2/10/84','Electrical Engineer','InSpec Design','140 SW Arthur St',NULL,'Portland','Oregon','97201','503-595-6540',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-04 05:49:40','Building Operator Certification','Joseph','Johnson','oscally@q.com','03-21-1951','Maint. Tech III','Goodwill Industries of the Columbia Willamette','909 Prospect Street',NULL,'Oregon City','Oregon','97045','5027222172','5037223281',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-03 12:30:40','Understanding PV Code- Dec.18th-IBEW,Portland','Eric','Benjamin','ejb@inlandelectricinc.com','5/27/09','Solar Manager','Inland Electric, Inc','360 SE Baseline',NULL,'Hillsboro','Oregon','97123','503-681-4700','503-681-4738',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-03 12:07:53','Understanding PV Code- Dec.18th-IBEW,Portland','Kelly','Rainey','rdk@inlandelectricinc.com','3/3/1973','Journeyman','Inland Electric, Inc','360 SW Baseline St',NULL,'Hillsboro','Oregon','97123','503-681-4700','503-681-4738',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-12-03 12:03:42','Understanding PV Code- Dec.18th-IBEW,Portland','Ronald','Kirsch','rdk@inlandelectricinc.com','12/19/1958','Service Manager','Inland Electric, Inc','360 SE Baseline',NULL,'Hillsboro','Oregon','97123','503-681-4700','503-681-4738',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-30 22:27:36','Understanding PV Code- Dec.18th-IBEW,Portland','Nick ','Mitchell','nmitchell@geonomicdevelopments.com','01/17/1986',NULL,'Geonomic Developments','1940 Sylvan Way',NULL,'West Linn','Oregon','97068','503.734.0123',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-30 14:52:14','Understanding PV Code- Dec.18th-IBEW,Portland','John','Bailey','john@bentingconstruction.com','6/1/78',NULL,NULL,'18475 sw alton st',NULL,'Beaverton','Oregon','97006','503-642-5682','503-649-1962',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-23 12:17:49','Understanding PV Code- Dec.18th-IBEW,Portland','Mark','Pace','mpace@co.klamath.or.us','01/30/1959','Electrical Inspector','Klamath County Builiding','305 Main Street',NULL,'Klamath Falls','Oregon','97601','541-883-5121 ','541-885-3644',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-20 17:57:01','Understanding PV Code- Dec.18th-IBEW,Portland','Elin ','Shepard','elin.d.shepard@state.or.us','4/6/72','Sustainability Coordinator','Oregon Dept of Administrative Services','1225 Ferry St, SE U100',NULL,'Salem','Oregon','97301','(503) 373-7132','(503) 373-7210',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-20 16:12:38','Understanding PV Code- Dec.18th-IBEW,Portland','Don','Schallerer','don@fullcircuit.net','11/01/1955','Owner','Full Circuit Construction','3325 NE 29th AV',NULL,'Portland','Oregon','97212','503 249-5095','503 249-5089',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-20 10:36:23','Understanding PV Code- Dec.18th-IBEW,Portland','Dan','Swarthout','davepe@co.deschutes.or.us','01/17/1954','Building Inspector','Deschutes County','117 NW Lafayette',NULL,'Bend','Oregon','97701','541-385-1745','541-385-1764',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-19 14:17:26','Building Operator Certification','Cale','Adams','becky.j.boyle@co.multnomah.or.us','02/18/1971',NULL,'MULTNOMAH COUNTY','401 N DIXON ST',NULL,'Portland','Oregon','97227','503-988-3322',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-19 14:02:27','Building Operator Certification','Joe','Gipson','becky.j.boyle@co.multnomah.or.us','11/06/1959',NULL,'MULTNOMAH COUNTY','401 N DIXON ST',NULL,'Portland','Oregon','97227','503-988-3322',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-18 17:16:24','Understanding PV Code- Dec.18th-IBEW,Portland','Robert','Doyle','bob@girandaenergy.com','11/25/1959','President','Giranda Energy Systems LLC and Red Ball Solar','28606 SE 30th Circle',NULL,'Camas','Washington','98607','360 936 6219',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-18 10:57:57','Understanding PV Code- Dec.18th-IBEW,Portland','Matt','Saager','m.saager@oregon-electric.com','7-30-71','Project Manager','Oregon Electric Group','1709 SE 3rd Ave',NULL,'Portland','Oregon','97214','503.890.7459',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-16 23:10:14','Energy Management Certification Program','Alejandro','Solis','alejandro.solis@iq-consultores.com','09/17/1963','Phys.','IQ Energy','Naciones Unidas 6655-A29','Col. Virreyes','Zapopan, Jalisco','Non-US','45110','+523331650835',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-15 11:43:09','Sustainable Building Advisor Program','Eric','Bally','ericbally@mac.com','6-23-52','Remodeler','Ballast International','4016 Crockers Lake Blvd. ','#417','Sarasota','Florida','34238','407-967-3841',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-15 11:36:37','Sustainable Building Advisor Program','Al','Moreno','almore@msn.com','12/30/63','Home Inspector','AM Inspections','7119 Cane Hills Circle',NULL,'Orlando','Florida','32819','407-354-2256',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-13 18:55:36','Understanding PV Code- Dec.18th-IBEW,Portland','Monica ','Clark','monica.stephanie.clark@gmail.com','9-6-1959','Grant Writer ','Self Employed ','1834 West Lake Sammamish Parkway NE',NULL,'Bellevue','Washington','98008','321-506-4125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-11-13 14:07:59','Sustainable Building Advisor Program','Michael','Howard','mikerhoward@gmail.com','03/15/1974','Planner IV','Satre Associates, PC','2855 Mill Street',NULL,'Eugene','Oregon','97405','541.513.1973',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-31 17:33:29','Sustainable Building Advisor Program','James','Anderson','jimanderson725@yahoo.com','11/24/1941',NULL,NULL,'725 Foothill Drive',NULL,'Eugene','Oregon','97405','541-342-7409',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-30 18:01:36','Building Operator Certification','Benadicto','Solaries','thendricks@billnaito.com','7/8/54','Painter / Maintenance tech','Bill Naito Company','2710 MW Vaughn suite 710',NULL,'Portland','Oregon','97210','503-228-7275',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-30 17:57:31','Click here to select...','Antonio','Perez','thendricks@billnaito.com','6/12/63','Maintenance technician','Bill Naito Company','2701 NW Vaughn suite 710',NULL,'Portland','Oregon','97236','503-228-7275',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-30 17:27:45','Building Operator Certification','Simon ','Tello','jdeignan@carneysmith.com','5-10-1962',NULL,'Bill Naito company','3180 NW Division Street #K122',NULL,'Gresham ','Oregon','97030','971-563-0360',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-28 17:41:38','Energy Management Certification Program','Bonita','Hardy','bonitah@iqmail.net','Jan. 14, 1','Construction Manager','Unemployed','5900 Baywater Drive,','Apt 1703','Plano','Texas','75093','214-274-4476',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-26 23:24:45','Sustainable Building Advisor Program','Ira','Wyatt','pat@golden-orchard.com','11/11/1974','Contractor','Handsome & Handt Construction, LLC','15253 NW Mason Hill Rd.',NULL,'North Plains','Oregon','97133','971-207-3831','503-647-5769',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-20 19:16:02','Sustainable Building Advisor Program','Feena','Michaels Powers','feenamena@hotmail.com','06/26/1979','Owner','Biotaxi LLC','2498 Fillmore St.',NULL,'Eugene','Oregon','97405','(541) 731-1825',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-17 00:57:55','Sustainable Building Advisor Program','John','Ivey','iveyleasing@hotmail.com','06-26-62',NULL,NULL,'15858 SE Chelsea Morning Dr',NULL,'Happy Valley','Oregon','97086','503-975-0863',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 16:37:05','IES Webcast-Using Daylight - Oct. 14','Dirk','Patton','dirk.patton@qmail.com','3/20/60','Student','LCC','2141 Van Buren',NULL,'Eugene','Oregon','97405','541-343-1714','none',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 16:36:11','IES Webcast-Using Daylight - Oct. 14','Cyrus','Collins','cyrus_collins@yahoo.com','12/25/82','Sir Mugillicutty',NULL,'827 w 13th ave',NULL,'Eugene','Oregon','97402','503-705-7039',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 15:19:10','IES Webcast-Using Daylight - Oct. 14','Richard','House','rhousear@earthlink.net','11/9/51',NULL,NULL,'302 Van Duyn St',NULL,'Eugene','Oregon','97401','844 1266',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 12:30:50','IES Webcast-Using Daylight - Oct. 14','Michael','McClendon','michaelm@solarc-ae.net','03/24/1980','Energy Analyst','Solarc A&E','2869 Bailey Ln',NULL,'Eugene','Oregon','97401','(541)953-8881',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 11:08:54','IES Webcast-Using Daylight - Oct. 14','Lance','Richards','cozmo1950@yahoo.com','12/29/1950','Mr',NULL,'4550 Larkwood',NULL,'Eugene','Oregon','97405','641-357-0433',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 00:54:53','IES Webcast-Using Daylight - Oct. 14','Sara','Jones','eugbartley@yahoo.com','04/17/1976','Student','Lane Community College','1179 5th St',NULL,'Springfield','Oregon','97477','5419158802',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 00:26:05','IES Webcast-Using Daylight - Oct. 14','Patricia ','Butcher','tbutcher8@aol.com','12/04/1961','Ms.',NULL,'1710 Wilson CT',NULL,'Eugene','Oregon','97402','541-870-3986',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-14 00:17:34','IES Webcast-Using Daylight - Oct. 14','William','Winters','willscottw@yahoo.com','09/03/1961','Second Year Student','LaneCC-En Mgt Pgm','307 32nd Street',NULL,'Springfield','Oregon','97478','541-606-1641',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-13 23:02:45','IES Webcast-Using Daylight - Oct. 14','Blaine ','Clark','clarkbkka@yahoo.com','3/18/56',NULL,NULL,'944 Hollow Way',NULL,'Eugene','Oregon','97402','689-5350',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-13 21:59:51','IES Webcast-Using Daylight - Oct. 14','Joe','Johnson','joe@johnsonconstructionconsulting.com','03/24/1953','Student','LCC','1433  Pearl Alley',NULL,'Eugene','Oregon','97401','503-522-6009',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-13 18:09:27','IES Webcast-Using Daylight - Oct. 14','Jennifer','Cooper','jennifer.cooper@kingrs.com','08-22-1985','Designer','King Retail Solutions','3850 West 1st Ave',NULL,'Eugene','Oregon','97402','541-686-2848',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-13 16:39:46','IES Webcast-Using Daylight - Oct. 14','Kerri','Sullivan','kerri17730@hotmail.com','07/30/1982','Energy student','lcc','35000 Breitenbush Rd. p.o. box 578',NULL,'Detroit','Oregon','97342','503-854-3320 ','ext. 374',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-13 16:36:19','IES Webcast-Using Daylight - Oct. 14','Michael','Brown','miguelcafe@mac.com','11/10/63',NULL,NULL,'2850 Warren St',NULL,'Eugene','Oregon','97405','541-484-7096',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-13 16:05:01','IES Webcast-Using Daylight - Oct. 14','Casey','Phillips','solarmonger@gmail.com',6251891,NULL,NULL,'3336 Loma Linda Dr.',NULL,'Eugene','Oregon','97405','5413375727',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 21:42:55','IES Webcast-Using Daylight - Oct. 14','Nicole','Calloway','nicole3@q.com','5/5/82','Energy Management student','Lane CC','3875 Colony Oaks Dr',NULL,'Eugene','Oregon','97405','541.343.3278',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 19:51:27','IES Webcast-Using Daylight - Oct. 14','Greg','McDonald','gmducks@msn.com','11/02/1964','Student',NULL,'521 Kodiak St',NULL,'Eugene','Oregon','97401','541-687-7879',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 18:15:46','IES Webcast-Using Daylight - Oct. 14','Larry','Blake','lblake@cascadelight.com','06-20-1958','Design Application and Sales','Cascade Lighting','400 NE 11th',NULL,'Portland','Oregon','97232','503-242-2522','503-274-5407',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 18:12:57','IES Webcast-Using Daylight - Oct. 14','Jennifer','Ward','jward@finelite.com','7-16-1967','Applications Engineer','Finelite','30500 Whipple Road',NULL,'Union City','California','94587','503-344-6933','503-344-6933',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 17:50:26','IES Webcast-Using Daylight - Oct. 14','Philip','Hanna','philhanna@comcast.net','5.1.1945','PE','Hanna Engineering','4059 southpointe dr',NULL,'Eugene','Oregon','97405','5413428582',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 17:26:02','IES Webcast-Using Daylight - Oct. 14','Bruce','Hall','hallbruce32@yahoo.com','05/05/1976',NULL,NULL,'370 E 46th',NULL,'Eugene','Oregon','97405','541-206-2625',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 15:26:49','IES Webcast-Using Daylight - Oct. 14','Craig','Marsh','marshc@lanecc.edu','12/22/1965','Student','lane community college','3230 Onyx st.',NULL,'Eugene','Oregon','97405','542-345-8906',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 13:05:00','IES Webcast-Using Daylight - Oct. 14','Erika','Willis','kenerika@hotmail.com','07/28/1957','Student','Lane Community College','3631 Kevington',NULL,'Eugene','Oregon','97405','541-870-3030',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-12 12:12:51','IES Webcast-Using Daylight - Oct. 14','Shannon ','Boyd','lionessinor@hotmail.com','08/01/78','Student',NULL,'554 west 20th ave',NULL,'Eugene','Oregon','97401','541 684 6934',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-11 14:05:33','Click here to select...','Ethan','McCoy','ethan_who@hotmail.com','07/12/84',NULL,NULL,'827 W 13th Ave',NULL,'Eugene','Oregon','97402','360.420.1631',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-11 11:49:48','IES Webcast-Using Daylight - Oct. 14','Erin','Connor','erinrconnor@hotmail.com','5/20/1973','Mr.','LCC','4000 e. 30th st.',NULL,'Eugene','Oregon','97405','360-305-1803',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-09 14:42:42','IES Webcast-Using Daylight - Oct. 14','Seth','Keena Levin','seth.keena85@gmail.com','10/11/1985',NULL,NULL,'1960 Grant St.',NULL,'Eugene','Oregon','97405','612-644-0900',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-09 13:32:39','IES Webcast-Using Daylight - Oct. 14','Henry','Jacob','henry.jacobscott@gmail.com','06-06-1981','Student','NEEI','79849 D.V.S. Rd.',NULL,'Cottage Grove','Oregon','97424','541-991-1611',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-09 00:04:49','IES Webcast-Using Daylight - Oct. 14','Bob','Burke','bobeug@gmail.com','8/9/1961','Student','Lane Community College','2896 Warren St.',NULL,'Eugene','Oregon','97405','541-914-6923',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-08 19:09:07','IES Webcast-Using Daylight - Oct. 14','Kale','Harbick','harbick@gmail.com','01-16-78',NULL,NULL,'4195 glacier view dr',NULL,'Springfield','Oregon','97478','5415101980',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-08 10:18:51','IES Webcast-Using Daylight - Oct. 14','Bill','Guy','william_g_guy@rl.gov','05.28.1946','Sr. Electrical Engineer','CHPRC','2640 Kingsgate Way','Space 221','Richland','Washington','97018','(509) 942-6684',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-07 18:36:50','IES Webcast-Using Daylight - Oct. 14','Vonnie','Willard','vwillard9@gmail.com','03/31/1966','Teaching Assistant','NEEI','2315 W 14 Ave',NULL,'Eugene','Oregon','97402','541-729-4544',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-07 17:04:46','IES Webcast-Using Daylight - Oct. 14','Mark','Cherniack','markc@newbuildings.org','6/3/47',NULL,'New Buildings Institute','PO Box 2349',NULL,'White Salmon','Washington','98672','509-493-4468',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-07 16:39:27','Building Operator Certification','Christopher','Dennis','dennisc@odscompanies.com','09/14/74','Facilities Coordinator','ODS','601 SW Second Ave',NULL,'Portland','Oregon','97204','503-265-5738',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-07 14:41:08','IES Webcast-Using Daylight - Oct. 14','James','McCarty','jmccarty@bhengineers.com','7/9/1952','Lighting Designer','Balzhiser and Hubbard Engineers','100 West 13th Avenue',NULL,'Eugene','Oregon','97401','541 686-8478','541 345-5303',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-07 11:43:18','IES Webcast-Using Daylight - Oct. 14','Joe ','Slack','joeslack@hge1.com','3/28/58','Architect','HGE Inc Architects Engineers Surveyors Planners','375 Park Ave',NULL,'Coos Bay','Oregon','97420','541-269-1166','541-269-1833',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-07 09:49:56','IES Webcast-Using Daylight - Oct. 14','Dwaine','Tankersley','dctankersley@yahoo.com','11/28/55',NULL,NULL,'P.O.Box 50542',NULL,'Eugene','Oregon','97405','5416431294',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-06 14:48:05','IES Webcast-Using Daylight - Oct. 14','Zach','Parrott','zachp123@gmail.com','12/18/1983',NULL,NULL,'1907 Arthur St',NULL,'Eugene ','Oregon','97405','5415178091',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-06 14:44:08','IES Webcast-Using Daylight - Oct. 14','Lori','Lilliefors','LoriLilliefors@gmail.com','09/18/62','Student','LCC','PO Box 50354',NULL,'Eugene','Oregon','97405','541-514-3088',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-06 14:12:35','IES Webcast-Using Daylight - Oct. 14','Gary','Turpen','ght@lightsearch.com','5/30/1953','Owner/ operator','inter.Light, inc.','PO Box 51480',NULL,'Eugene','Oregon','97405','541-344-4405','541-344-6032',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-03 13:36:01','IES Webcast-Using Daylight - Oct. 14','John','Simpson','john@johnjsimpson.com','05/15/66',NULL,NULL,'7313 Mount Kearsarge Street',NULL,'Las vegas','Nevada','89131','702-726-1979',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-01 14:30:41','IES Webcast-Using Daylight - Oct. 14','Shannon','Markey','shannon@q-tran.com','05/08/1963','Regional Manager','Q Tran, Inc','PO Box 61785',NULL,'Vancouver','Washington','98422','9712124207',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-10-01 13:31:38','IES Webcast-Using Daylight - Oct. 14','Edward','Pieterick','ed.pieterick@ch2m.com','06/19/1955',NULL,NULL,'2300 NW Walnut Blvd.',NULL,'Corvallis','Oregon','97330','(5410 206-2918',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-29 13:49:54','IES Webcast-Using Daylight - Oct. 14','Rodd ','Hansen','rodd@nagao-hansenarchitects.com','8/1/1972','Architect','Nagao / Hansen Architects','1680 Pearl St',NULL,'Eugene','Oregon','97401','687-9600','687-8142',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-29 12:22:07','IES Webcast-Using Daylight - Oct. 14','Robyn','Gratch Kelley','robyng@solarc-ae.net','4/24/1974','Pers exec assistant','SOLARC A/E','223 W. 12th Ave.',NULL,'Eugene','Oregon','97401','541-349-0966','541-343-1533',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-29 12:10:57','IES Webcast-Using Daylight - Oct. 14','Rick','Crawford','rickc@solarc-ae.net','3-9-1967','Energy Analyst',NULL,'233 W 12th Ave',NULL,'Eugene','Oregon','97401','541-349-0966',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-28 21:39:44','IES Webcast-Using Daylight - Oct. 14','Rudy','Berg','rudyberg@rio.com','10/5/42','Manager','Common Practice Building Design','195 E 32nd Ave',NULL,'Eugene','Oregon','97405','541-683-8963',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-28 19:25:06','IES Webcast-Using Daylight - Oct. 14','Rick','Crawford','rickc@soalrc-ae.net','03-09-67',NULL,'SOLARC Architecture and Engineering','223 West 12th Avenue',NULL,'Eugene','Oregon','97401','541-349-0966',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-28 19:05:07','IES Webcast-Using Daylight - Oct. 14','Denise','Taisey','dtaisey@cedeugene.com','02-20-1966','Lighting Quotes','CED','411 W 4th Ave',NULL,'Eugene','Oregon','97401','541-683-2474','541-343-8454',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-28 17:31:01','IES Webcast-Using Daylight - Oct. 14','Jody','Heady','jheady@hacsa.us','04/13/50','Architect','HACSA','300 West Fairview Drive',NULL,'Springfield','Oregon','97477','(541) 682-2591',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-28 17:20:52','IES Webcast-Using Daylight - Oct. 14','Jeff','Graper','jgraper@systemswestengineers.com','12/27/1949',NULL,'Systems West Engineers, Inc.','411 High Street',NULL,'Eugene','Oregon','97401','541-342-7210',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-28 16:55:12','IES Webcast-Using Daylight - Oct. 14','Rod','Olsen','rod.olsen@eweb.org','7/5/56','Energy Management Specialist','EWEB','500 E 4th Ave','PO Box 10148','Eugene','Oregon','97440','685-7000',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-25 19:24:16','Sustainable Building Advisor Program','Russell','Pierson','russ@binehamconstruction.com','02/14/1958','Manager','Bineham Construction Inc','4171 W 1st Ave',NULL,'Eugene','Oregon','97405','541-484-1475','877-335-7943',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-25 09:29:08','IES Webcast-Using Daylight - Oct. 14','Angela','Marzano','angie.marzano@eweb.org','10/26/76','Energy Management Specialist','EWEB','500 East 4th Avenue',NULL,'Eugene','Oregon','97401','541-556-3587',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-23 00:42:55','Sustainable Building Advisor Program','Eric','Black','egblackjr@yahoo.com','07/23/1978',NULL,'Royal Caribbean International','3209 Downing St',NULL,'Eugene','Oregon','97408','541-654-1475',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-21 16:14:09','Building Operator Certification','Ron','Hegel','ronald.g.hegel@kp.org','01/06/61','Apprentice','Kaiser Permanente','10180 SE Sunnyside ',NULL,'Clackamas','Oregon','97015','(503) 849-3980','(503) 571-2623',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-21 14:42:03','Sustainable Building Advisor Program','Lucas','Teer','teer-gas@hotmail.com','12/12/1983','Contractor',NULL,'3383 Terra Circle ',NULL,'Corvallis','Oregon','97333','325-248-1507',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-19 18:03:45','Sustainable Building Advisor Program','Hans','Peterson','hanpet57@msn.com','3/6/63',NULL,NULL,'2506 Mountain Terr',NULL,'Eugene','Oregon','97408','541-968-9119',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-17 21:55:07','Sustainable Building Advisor Program','Kevin','Whiting','ktwhiting@yahoo.com','10/23/1963',NULL,NULL,'PO Box 127',NULL,'Eugene','Oregon','97440','541-228-1868',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-10 22:40:38','Building Operator Certification','James','Winburn','jmwinburn2001@yahoo.com','7/13/59','Contracter',NULL,'1216 SO. Pine ST.',NULL,'Canby','Oregon','97013','503-805-6388',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-04 11:13:53','Building Operator Certification','Robert','Suter','Robert.Suter@vansd.org','5/4/1950','Custodial Assistant','Vancouver Public Schools','P.O. Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-4767','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-03 14:39:02','Sustainable Building Advisor Program','Joanna','Rice','jrvogue@msn.com','01/03/1962',NULL,NULL,'2378 Monroe Street',NULL,'Eugene','Oregon','97405','541 968-8122',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-09-02 09:46:33','Energy Management Certification Program','Jose','Babilonia','Duropower@yahoo.com','12-14-1970',NULL,NULL,'1223 ponce deleon ave.','marginal jardin botanico','San Juan','------','00969','787751-0003',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-28 16:07:50','Energy Management Certification Program','Keil','Drescher','kdrescher@ci.tacoma.wa.us','02/28/1965','Account executive','tacoma public utilities','3628 S 35th Street',NULL,'Tacoma','Washington','98409','253-502-8301',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-27 16:18:37','Sustainable Building Advisor Program','Jon','Bridges','bridgesj@lanecc.edu','08/05/1952','Instructor','Lane Community College','4000 East 30th Ave.',NULL,'Eugene','Oregon','97405','541-463-5274',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-25 01:25:21','Sustainable Building Advisor Program','Brian','Baker','bb123@efn.org','04.20.1958','Research Director','OMRI','PO Box 12256',NULL,'Eugene','Oregon','97440','541-345-9418',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-25 01:25:16','Sustainable Building Advisor Program','Brian','Baker','bb123@efn.org','04.20.1958','Research Director','OMRI','PO Box 12256',NULL,'Eugene','Oregon','97440','541-345-9418',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-20 14:03:45','Building Operator Certification','Leonard','Michels','leonard.k.michels@kp.org','09/20/1954','Engineer','Kaiser Permanente','10220 S.E. Sunnyside Rd.',NULL,'Clackamas','Oregon','97223','503/449-3041','503/571-8420',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-17 17:35:04','Sustainable Building Advisor Program','Jon','Jaramillo','odello3@gmail.com','10/24/1961','Member/Owner/Contractor','Jon Jaramillo Construction, LLC','845 Willamette Street',NULL,'Eugene','Oregon','97401','541-232-3530','541-687-1356',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-17 14:52:01','Building Operator Certification','Terry','Whisenhunt','terry.l.whisenhunt@kp.org',7241964,'Chief Engineer','Kaiser Permanente','10100 SE Sunnyside Rd',NULL,'Clackamas','Oregon','97015','503-572-5470','503-571-2623',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-17 13:56:18','Energy Management Certification Program','Jeff','McLean','jeff@cascaderoseburg.com','10/09/1961','President','Cascade Electric','PO Box 2158',NULL,'Roseburg','Oregon','97471','(541) 784-7500','(541) 673-7972',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-13 13:11:55','Building Operator Certification','Joshua','Maisch','josh.maisch@ci.gresham.or.us','9/19/1975','Facilities Tech II','City of Gresham','1333 NW Eastman Parkway',NULL,'Gresham','Oregon','97030','5037931597','5036182512',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-08-11 18:02:24','Energy Management Certification Program','Patrick','Hughes','hughes.or@gmail.com','02/08/1975','Designer','Sustain Design Solutions','7462 N. Alma ave',NULL,'Portland','Oregon','97203','503-348-7652',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-31 20:54:38','Sustainable Building Advisor Program','Morgan ','Zajonc','morgan.zajonc@gmail.com','2/7/86','Enviornmental Studies Student at U of O',NULL,'1365 Ferry st. ',NULL,'Eugene','Oregon','97403','206-601-2233',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-31 19:00:21','Energy Management Certification Program','Elizabeth','Kah','elizabeth.kah@gmail.com','02/20/57','Ms',NULL,'1513 W. Jefferson',NULL,'Naperville','Illinois','60540','630-862-9019',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-30 23:21:54','Sustainable Building Advisor Program','Clem','Ogilby','crogilby@gmail.com','04-14-55','Member','THE OGILBY GROUP, LLC','8316 N. Lombard St PMB #405',NULL,'Portland','Oregon','97203','503 572 5323',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-30 19:53:27','Sustainable Building Advisor Program','Brian','Lighthart','briklight@comcast.net','9/29/49','Project Architect','Eric Hall Architects','2870 Baker Boulevard',NULL,'Eugene','Oregon','97403','541-485-0771','541-688-0530',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-29 15:14:54','Building Operator Certification','Tom','Pagh','tpagh@pps.k12.or.us','09/25/67','Training Supervisor','Portland Public Schools','501 N. Dixon St.',NULL,'Portland','Oregon','97227','503-916-3423',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-28 19:52:27','Building Operator Certification','James','Winburn','jmwinburn2001@yahoo.com','7/13/1959','Owner/Contractor','Winburn Construction Company','1216 S. Pine Street',NULL,'Canby','Oregon','97013','503.805.6388',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-28 12:03:29','Sustainable Building Advisor Program','David','Beckman','dbarch@atelierarchpc.com','10/15/1957','Principal','Atelier Architecture PC','845 Willamette Street',NULL,'Eugene','Oregon','97401','541-343-9694',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-27 19:23:53','Sustainable Building Advisor Program','Robert','Havas','rahavas@gmail.com','10-31-1951',NULL,NULL,'1800 Lakewood Court','#138','Eugene','Oregon','97402','541 556 5471',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-24 22:16:39','Sustainable Building Advisor Program','Chris','Widener','chrisw@ccmrs.com','10/10/1963','C.E.O.','WIDENER Consultation','3480 Potter St.',NULL,'Eugene','Oregon','97405','(541) 342-3108','(541) 342-3108',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-22 18:05:02','Sustainable Building Advisor Program','Juan','Serpa Munoz','juan.serpamunoz@eweb.org','05/19/1976','Energy Management Representative','EWEB','500 East 4th Ave',NULL,'Eugene','Oregon','97404','541-337-1296',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-20 20:01:04','Sustainable Building Advisor Program','Mike','Gillespie','gillespiemike88@yahoo.com','09-13-1971','Coatings specialist','Western Pneumatics','3110A WEST 18TH. AVE.',NULL,'Eugene','Oregon','97402','(541)606-2352',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-09 16:18:42','Sustainable Building Advisor Program','Julie','Romig','romig@bdarch.net','06/17/1982','Intern Architect','Bergsund DeLaney Architecture','1369 Olive Street',NULL,'Eugene','Oregon','97401','541-683-8661',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-07-02 08:41:30','Energy Management Certification Program','Craig','Rabatin','craig.rabatin@mail.wvu.edu','05/10/1964','Assistant Professor','West Virginia University at Parkersburg','300 Campus Dr.',NULL,'Parkersburg','West Virginia','26101','304-424-8000','304-424-8366',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-29 10:47:45','Building Operator Certification','Eric','Otterman','eotterman@billnaito.com','10/30/1980','Maintenance','bill naito company','2701 NW Vaughn St.',NULL,'Portland','Oregon','97210','503-488-5000',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-25 15:48:49','Building Operator Certification','Shawn','Brothers','sbrothers@billnaito.com','9-30-71','Hvac','bill naito company','2701 nw vaughn st',NULL,'Portland','Oregon','97210','503-488-5000',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-24 01:20:15','Energy Management Certification Program','Shafeek','Haneefa','masthanshafeek@yahoo.com','16-05-1977','Engineer','Dewa','P.O.Box 564',NULL,'Dubai','Kentucky','564','009715718960',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-18 07:18:18','Energy Management Certification Program','Puskar','Suwal','puskarsuwal@hotmail.com','08.15.1981','Lecturer','Khwopa Engineering College','Libali, Bhaktapur, Nepal',NULL,'Bhaktapur','Non-US','00977','977-9841380947','977-01-6615202',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-11 12:39:19','Energy Management Certification Program','Jill','Henrickson','youngg@lanecc.edu','7-12-1969',NULL,'Oregon Department of Energy','625 Marion St NE',NULL,'Salem','Oregon','97301','503-378-6330',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-10 13:15:52','Energy Management Certification Program','Mark ','Brann','mark.brann@autopkg.com','06.08.69','Facility Engineer','Automated Packaging Systems','25900 Solon Rd. ',NULL,'Bedford Hts. ','Ohio','44146','330.528.2000','330.528.6402',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-09 13:53:45','Building Operator Certification','Glen','Reynolds','greynolds@boulos.com','8/14/69','Area Facilities Manager','Property Management','One Canal Plaza',NULL,'Portland','Maine','04101','207 553-1786','207 772-2647',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-05 20:30:00','Energy Management Certification Program','Gary','Buck','gljlbuck@msn.com','09.16.1948',NULL,NULL,'5981 Rombauer Rd.',NULL,'Eugene','Oregon','97402','541-543-1904',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-06-02 13:54:01','Energy Management Certification Program','Brent','Young','brent.young@kemperdc.com','11-26-56','Rcm','kemper development','575 bellevue sq.',NULL,'Bellevue','Washington','98004','425-460-5830',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-27 20:53:57','Energy Management Certification Program','Jess','Nowland','jess.nowland@tamastslikt.org','9/16/80','Assistant Facilities Manager TCI','Confederated Tribes of the Umatilla Indian Reservation','72789 Hwy 331',NULL,'Pendleton','Oregon','97801','(541) 966-1925','(541) 966-9927',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-19 16:12:25','Energy Management Certification Program','Justin','Valls','justin@abode-film.org','3/15/1981',NULL,NULL,'4417 SE Windsor Ct',NULL,'Portland','Oregon','97206','503 914 8687',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-18 18:01:16','Energy Management Certification Program','Kelly','Brown','robynkelly@earthli<x>nk.net','02/13/1957','Manager',NULL,'1303 N. Simpson Rd.',NULL,'Liberty Lake','Washington','99019','509-927-1580','email',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-13 15:02:12','Sustainable Building Advisor Program','William','Randall','bill@arborsouth.com','10-17-1956','Architect/Senior Principal','ARBOR SOUTH ARCHITECTURE, PC','4765 Village Plaza Loop','Suite 200','Eugene','Oregon','97401','541-344-3332',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-12 16:12:16','Energy Management Certification Program','Sakhawat','Amin','saminoly00@yahoo.com','03-25-65','Building Designer','Century Computer Design','5301 Stockton ST SE',NULL,'Lacey','Washington','98513','360-459-2067',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-07 17:31:39','Building Operator Certification','Daniel ','Golden','goldend@nclack.k12.or.us','08/21/65','District Project Manager','North Clackamas School District','12451 SE Fuller Road',NULL,'Milwaukie','Oregon','97222','503 353 6073','503 353 6065',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-05-01 14:18:38','Energy Management Certification Program','Chris ','Stewart','david.c.stewart@state.or.us','03/18/70','SEED Proj. Review Engineer','Oregon Dept. of Energy','625 Marion St. NE',NULL,'Salem','Oregon','97301','503.373.7563','503.373.7806',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-29 12:51:44','Building Operator Certification','Jeffrey','Lewis','jsl6000@yahoo.com',102970,NULL,NULL,'185 ELM DR',NULL,'Montgomery','Alabama','36117','3343181414',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-29 01:19:19','Energy Management Certification Program','JP','Batmale','jp.batmale@state.or.us','05-10-1970','Energy Analyst','Oregon Department of Energy','625 Marion St. NE',NULL,'Salem','Oregon','97301','503.378.5054',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-22 18:19:02','Building Operator Certification','Scott','Gorton','scott.gorton@providence.org','01/11/1958','Maintence tech 3','phrmh','811 13th street ',NULL,'Hood River','Oregon','97031','5413876293','5413876107',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-22 15:20:30','Sustainable Building Advisor Program','Aileen','Hoy','aileen@contractorsnorthwest.com','06/02/1982','Asst. Project Manager','Contractors Northwest Inc.','10840 W Executive Drive',NULL,'Boise','Idaho','83719','208-362-9656','208-362-9701',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-22 15:20:27','Sustainable Building Advisor Program','Aileen','Hoy','aileen@contractorsnorthwest.com','06/02/1982','Asst. Project Manager','Contractors Northwest Inc.','10840 W Executive Drive',NULL,'Boise','Idaho','83719','208-362-9656','208-362-9701',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-21 18:36:25','Sustainable Building Advisor Program','Justin ','Pafford','justindinopafford@gmail.com','05/09/1966',NULL,NULL,'1436 Willamette St #620',NULL,'Eugene','Oregon','97401','(541)232-9991',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-14 13:42:06','Energy Management Certification Program','Gary','Henderson','gary.henderson@co.multnomah.or.us','01/14/1955','Engineer','Multnomah County','401 N Dixon St',NULL,'Portland','Oregon','97227','503-988-3322','503-988-5082',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-14 10:35:44','Energy Management Certification Program','Effiom','Effiong','effiomeeffiong@yahoo.com','26/05/1975','Engr.','Nigerian Electricity Regulatory Commission','Plot 1099, Adamawa Plaza, First Avenue, ','Off Shehu Shagari Way, CBD, PMB 136, Garki,','Abuja','Non-US','+234','08034665348',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-14 03:44:23','Sustainable Building Advisor Program','Suresh','Shakar','suresh_shakar78@yahoo.co.in','24/06/1978','Engineer','sbpil','raipur','raipur','Raipur','Non-US','492001','09893270650','0771-224292',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-13 17:25:09','Building Operator Certification','Joseph','SueWing','jsuewing@spscc.ctc.edu','1/7/49','Director Buildings & Grounds','South Puget Sound Community College','2011 Mottman RD SW',NULL,'Olympia','Washington','98512','360-596-5316','360-596-5704',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-08 14:08:18','Energy Management Certification Program','Isaac','Aduhene Opoku','aduheneopoku@yahoo.com','26/12/1981','Student','SPE-RMA CHapter','P O Box SK 518, Tema -Ghana',NULL,'Tema','Non-US','233','00233244140565',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-06 06:13:49','Energy Management Certification Program','Mohammed Bulama','Imam','mimam@nercng.org','12/02/68','Engineer','Nigerian Electricity Regulatory Commission','Adamawa Plaza, First Avenue Plot 1099, ','off Shehu Shagari Way, CBD','Abuja','Non-US','234','+2348066163951','+2349 5231938',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-06 06:06:57','Energy Management Certification Program','Mohammed ','Imam','mbimam@nercng.org','12/02/68','Engineer','Nigerian Electricity Regulatory Commission','Adamawa Plaza, Plot 1099, first Avenue','Off Shehu Shagari Way, CBD','Abuja','Non-US','234','+2348066163951','+2349 5231938',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-03 15:11:58','Thermostat Training - April 14th','Chris','Boren','bev@unitedgaribay.com','8/25/1972','Service Manager','United Garibay Heating & Air','4285 West 7th Ave Unit A',NULL,'Eugene','Oregon','97402','541-344-2481','541-484-9433',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-03 13:29:49','Thermostat Training - April 14th','William','Brown','wbrown@thermalsupply.com','09/15/1962','COUNTER SALES','THERMAL SUPPLY','2621-D WEST 5TH',NULL,'Eugene','Oregon','97402','5416878311','5416871947',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-02 13:11:19','Thermostat Training - April 14th','Steven','Ziemak','swziemak@msn.com','06/21/1972',NULL,NULL,'276 SW Laurel Street',NULL,'Junction City','Oregon','97448','(541) 998-2959',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-04-01 04:21:39','Energy Management Certification Program','Sunny','Choudhary','schoudhary@visionri.net','10.31.1983','Assistant Manager Business Development','VisionRI Connexions Private Limited','UG-8, C348, Gaur Enclave II, Shalimar Garden',NULL,'Sahibabad, Ghaziabad','Non-US','201010','+919718870761',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-31 14:36:33','Thermostat Training - April 14th','Jacob','Rusby','jrusby@gmail.com',9011979,'Student','LCC','2555 Portland St # 1 ',NULL,'Eugene ','Oregon','97405','541.788.1697',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-31 14:36:32','Thermostat Training - April 14th','Blake','Standen','blakestanden@hotmail.com','12/21/1984','Student','LCC','2687 sunnyview ln',NULL,'Eugene','Oregon','97405','503-459-8326',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-31 10:31:55','Energy Management Certification Program','Sunday','Obi','horracesunnoh@yahoo.com','JUNE 11, 1976',NULL,'NIGERIAN ELECTRICITY REGULATORY COMMISION','ADAMAWA PLAZA PLOT 1099 FIRST AVENUE OFF SHEHU SHAGARI WAY CENTRAL BUSINESS DISTRICT GARKI ABUJA',NULL,'FCT-ABUJA','Oregon','900001','08037274822, 08059158091',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-30 16:39:42','Energy Management Certification Program','Eric','Larson','eric.larson@siemens.com','5/29/1973','Energy Engineer II','Siemens Building Technologies','15201A NW Greenbrier Parkway','Suite A-4','Beaverton','Oregon','97006','503-703-4290','503-207-1901',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-26 20:40:49','Thermostat Training - April 14th','Mark','Parthemer','morbiusx1@hotmail.com','01.29.1954','Builder','Freegeek','303 NE 139th ave',NULL,'Portland','Oregon','97230','503-261-7154',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-25 05:27:36','Energy Management Certification Program','Obiageli','Alor','aloroby@yahoo.co.uk','01.25.2009','Ms.','Nigerian Electricity Rgulatory Commisssion','Adamawa Plaza, Plot 1099 First Avenue, CBD, FCT','P.M.B. 136 Garki','Abuja','Non-US','90001','+2348024552472',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-23 21:34:14','Energy Management Certification Program','John','Smith','John.smith@hotmail.com','03/01/88',NULL,NULL,'3800 Finnerty Road',NULL,'Victoria','Non-US','97405','250-721-7217',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-23 16:17:57','Energy Management Certification Program','Merrill ','Atwater','matwater@idealfleetsolutions.com','03-17-1981','PR Director','IFS','8226 NW Bradford Ct.',NULL,'Kansas City','Missouri','64151','816-977-7475',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-22 19:22:47','Thermostat Training - April 14th','Mitch','Wofford','mnmwofford@netzero.com','08.05.1968','Owner','Majestic Heating and A/C','548 Greenfield Ave',NULL,'Eugene','Oregon','97404','5417293252','n/a',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-21 19:28:04','Energy Management Certification Program','Ismaila','Tafida','arctaf@yahoo.com','5/september/1976','Architect','scyna matrix ltd','2,udi street,aso drive','maitama district','Abuja','Non-US','+234','+23480 3337 4141',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-21 14:46:42','Energy Management Certification Program','Pamela','Pulliam','pulliamp@comcast.net','October 7, 1959',NULL,NULL,'3210 Downing Street',NULL,'Eugene','Oregon','97408','5415435965',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-18 19:58:58','Thermostat Training - April 14th','Tim','Howard','tim12304@comcast.net','07/17/1951','EMS intern','EWEB','500 E.4th ',NULL,'Eugene','Oregon','97440','541-354-5127',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-18 12:00:26','Thermostat Training - April 14th','John','Wigle','john.wigle@eweb.eugene.or.us','1/20/51','Energy Management Specialist','Eugene Water & Electric Board','P.O. Box 10148   ','500 E. 4th Ave.    ','Eugene','Oregon','97440','541-344-6311 ext. 3056','541-334-4614',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-17 18:40:55','Thermostat Training - April 14th','Tom','Prock','tom.prock@ucancap.org','01/01/1955','Wx Supervisor','Umpqua Community Action Network','280 Kenneth Ford Dr.',NULL,'Roseburg','Oregon','97470','541-492-3532',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-17 18:38:22','Thermostat Training - April 14th','Brian','Hudgins','brian.hudgins@ucancap.org','09/25/57','Energy Auditor','Umpqua Community Action Network','280 Kenneth Ford Dr.',NULL,'Roseburg','Oregon','97470','541-942-3512',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-17 15:39:32','Building Operator Certification','Mark','Loigman','mark.d.loigman@ci.eugene.or.us','04/16/58','Director of Operations','City of Eugene ','One Eugene Center',NULL,'Eugene','Oregon','97401','541-682-5307','541-682-6827',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-16 16:25:21','Thermostat Training - April 14th','Britt','Koch','claysrefrig1@aol.com','5/13/75','Technician','Clay''s Refrigeration','445 River ave',NULL,'Eugene','Oregon','97404','541-688-9082',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-16 16:23:35','Thermostat Training - April 14th','Tim ','Harris','claysrefrig1@aol.com','5/13/75','Technician','Clay''s Refrigeration','445 River ave',NULL,'Eugene','Oregon','97404','541-688-9082',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-16 16:21:03','Thermostat Training - April 14th','Andrew','Canham','claysrefrig1@aol.com','5/13/75','Technician','Clays Refrigeration','445 River ave',NULL,'Eugene','Oregon','97404','541-688-9082',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-16 16:15:23','Thermostat Training - April 14th','Greg','Austin','claysrefrig1@aol.com','5/13/75',' manager','Clay''s Refrigeration','445 River ave',NULL,'Eugene','Oregon','97404','541-688-9082',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-16 11:14:02','Thermostat Training - April 14th','Pam','Bielefeld','pam.j.bielefeld@ci.eugene.or.us',5061952,'Energy Specialist','City of Eugene','2317 Compton',NULL,'Eugene','Oregon','97404','541 682 5279',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-13 17:59:27','Thermostat Training - April 14th','Lynne ','Eichner Kelley','lynne.m.eichnerkelley@ci.eugene.or.us','8/19/1961','Sustainable Operations Analyst','City of Eugene, Facility Management','210 Cheshire Ave',NULL,'Eugene ','Oregon','97401','541-682-5083','541-682-6222',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-12 18:51:46','Energy Management Certification Program','Roger','Peery','rpeery@cityoftacoma.org','12-10-1957','Energy Services Specialist III','Tacoma Power','3628 S. 35th St.',NULL,'Tacoma','Washington','98409','2535028138','253-502-8276',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-12 16:50:57','Thermostat Training - April 14th','Mira','Vowles','mkvowles@bpa.gov','7/31/59','Program Lead','BPA','905 NE 1th Ave, KLH-1',NULL,'Portland','Oregon','97232','503.2304796',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-12 15:30:50','Thermostat Training - April 14th','Michael','Koch','bjkoch49@comcast.net','9/19/72',NULL,'Valley Heating','3800 Coburg Road',NULL,'Eugene','Oregon','97408','541485-0123',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-11 18:19:42','The Effects of Light - Webcast - March 11th','Rod ','Olsen','rod.olsen@eweb.org','7/5/56','Energy Management Specialist','EWEB','500 E 4th Ave','PO Box 10148','Eugene','Oregon','97440','541-484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-11 15:03:00','The Effects of Light - Webcast - March 11th','Jeff','Kline','jkline@uoregon.edu','03.11.2009',NULL,NULL,'dept of arch','u oregon','Eugene','Oregon','97403','346 5647',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-11 14:16:58','The Effects of Light - Webcast - March 11th','Loraine','Baker Hanley','lbaker01@hotmail.com','1-19-50',NULL,NULL,'84671 Sarvis Berry Ln.',NULL,'Eugene','Oregon','97405','541-345-4951',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-11 14:04:33','The Effects of Light - Webcast - March 11th','Erin ','Koozer','erinkoozer@beaconlighting.com','7/7/78',NULL,'Beacon Electric and Lighting','2585 Roosevelt Blvd',NULL,'Eugene','Oregon','97402','541-461-0291','541-461-2340',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-11 11:19:16','The Effects of Light - Webcast - March 11th','Michael','Lange','michael@aesrenew.com','9/14/53','Energy Resource Specialist','Advanced Energy Systems','65 Centennial Loop',NULL,'Eugene','Oregon','97401','541-683-2345','541-683-2040',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 23:11:49','The Effects of Light - Webcast - March 11th','Jessica','Stephenson','shelley.york@eweb.org','9/09/1989','Student','LCC','7350 B Street',NULL,'Springfield','Oregon','97478','541-746-2440',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 19:47:34','Thermostat Training - April 14th','Charles','Schifferdecker','charles.schifferdecker@eweb.org','5-24-62','Energy Management Specialist','EWEB','500 East 4th Ave.',NULL,'Eugene ','Oregon','97440','541-484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 19:04:34','The Effects of Light - Webcast - March 11th','Allen','Jost','allen@centurylightingoregon.com','12.24.1971','LS1','Century Lighting','550-g Shelley St',NULL,'Springfield','Oregon','97477','541-726-5994',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 17:33:53','The Effects of Light - Webcast - March 11th','Pam','Bielefeld','pam.j.bielefeld@ci.eugene.or.us',5061952,NULL,'City of Eugene','2317 Compton',NULL,'Eugene','Oregon','97404','541 682 5279',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 16:20:07','Thermostat Training - April 14th','Ron','Norris','ron.norris@eweb.org','7/4/1950','Energy management specialist','EWEB','500E. 4th ave',NULL,'Eugene','Oregon','97401','541-484-1125','541-334-4614',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 15:06:28','The Effects of Light - Webcast - March 11th','Michael','Stapleton','stape94@hotmail.com','07/28/1976',NULL,NULL,'281 Conestoga Way',NULL,'Eugene','Oregon','97401','(406 582-7857',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-10 11:52:30','Energy Management Certification Program','Erich','Smith','erichs24@yahoo.com','09-18-1984',NULL,NULL,'PO Box 135 ',NULL,'Cave Junction','Oregon','97523','(541)-592-2926',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-09 21:14:06','The Effects of Light - Webcast - March 11th','Allan','Gibbs','allang@e-c-co.com',6051978,'PE','EC Company','875 Wilson Ste. A',NULL,'Eugene','Oregon','97402','541-345-0669',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-09 21:12:25','The Effects of Light - Webcast - March 11th','Stacy','Harris','stacyh@e-c-co.com','6-5-1978','Project Coordinator','EC Company','1542 9th ',NULL,'Springfield','Oregon','97477','541-653-8519',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-09 19:00:05','The Effects of Light - Webcast - March 11th','Allan','Gibbs','allang@e-c-co.com','9/14/54','Engineer','E C Company','875 Wilson Street, Suite A',NULL,'Eugene','Oregon','97402','541.345.0669',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-09 18:48:34','Building Operator Certification','Chris','Bautista','chrbaut@hotmail.com','03/10/68','Maintenance Mechanic II','EMCOR Facilities Services','111 SW 5th Ave.','Suite 975','Portland','Oregon','97204','503-275-7712',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-09 18:36:39','The Effects of Light - Webcast - March 11th','Sophie','Goss','somachezma@yahoo.com','12/30/1971',NULL,'Zion CDC Community Garden','214 Oak St.','First Floor','Oberlin','Ohio','44074','440-774-3020',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-09 02:24:55','The Effects of Light - Webcast - March 11th','Angela','Duncan','angela.e.duncan@gmail.com','03/03/1981',NULL,'NW EcoBuilding Guild','2125 W 27th Avenue',NULL,'Eugene','Oregon','97405','360-430-5793',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-07 18:57:18','The Effects of Light - Webcast - March 11th','Tracy','Beckmann','tracerbeckmann@yahoo.com','06/06/1976','Student',NULL,'1144 Washington St Apt A',NULL,'Eugene','Oregon','97401','541.242.3763',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-06 13:35:06','The Effects of Light - Webcast - March 11th','Iselda','Acosta','iselda@efn.org','11/22/63','Student','Lane Comm. College','2209A Monroe Street',NULL,'Eugene','Oregon','97405','541-343-6733',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-06 10:05:20','The Effects of Light - Webcast - March 11th','Jessica','Richards','jessicakayr@hotmail.com','09-20-1983',NULL,NULL,'PO Box 5904',NULL,'Eugene','Oregon','97405','541-868-6324',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-05 16:17:33','The Effects of Light - Webcast - March 11th','Jenny','Fraser','jfraser@uoregon.edu','2/23/76',NULL,NULL,'3950 High Street',NULL,'Eugene','Oregon','97405','5418908104',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-05 13:36:53','The Effects of Light - Webcast - March 11th','Tali','Purkerson','tpurkers@uoregon.edu','10/02/1986',NULL,NULL,'1831 Kincaid #24',NULL,'Eugene','Oregon','97403','971 218 9609',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-05 12:40:40','Thermostat Training - April 14th','PAUL','Emmel','PAUL.EMMEL@EWEB.EUGENE.OR.US','01/01/008','ANALYST','EWEB','500 EAST 4TH AVE',NULL,'Eugene','Oregon','97401','484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-04 17:06:53','Thermostat Training - April 14th','Ann','Porterfield','ann.porterfield@eweb.org','12/21/1958','Energy Management Specialist','EWEB','500 E 4th Avenue',NULL,'Eugene','Oregon','97401','541 344-6311 x3055','541 334-4614',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-04 17:04:06','The Effects of Light - Webcast - March 11th','Ann','Porterfield','ann.porterfield@eweb.org','12/21/1958','Energy Management Specialist','EWEB','500 E 4th Avenue',NULL,'Eugene','Oregon','97401','541 344-6311 x3055','541 334-4614',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-04 13:45:57','Thermostat Training - April 14th','Shelley','York','shelley.york@eweb.org','8/13/1980','Admin Assistant','EWEB','PO Box 10148',NULL,'Eugene','Oregon','97440','541-484-1125 x3034',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-04 13:29:22','Thermostat Training - April 14th','Chris ','Wolgamott ','chris.wolgamott@eweb.org','7/18/1972','Energy Management Specialist ','Eugene Water & Electric Board ','500 E 5th ',NULL,'Eugene ','Oregon','97440','484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-04 12:18:04','Thermostat Training - April 14th','Mark','Tuffo','Mark.Tuffo@eweb.org','03-19-53','EMS Specialist','EWEB','PO Box 10148',NULL,'Eugene','Oregon','97440','484-1125 ext. 3060',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 23:52:04','The Effects of Light - Webcast - March 11th','Aiden','Humphrey','aidenjh@gmail.com','12/18/1970','Mr. ','Graduate Student of Architecture at UofO','29285 Lingo Lane',NULL,'Junction City','Oregon','97448','541 998 1944',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 19:28:48','The Effects of Light - Webcast - March 11th','Kelly','Knauss','kelly.knauss@hdrinc.com','08/06/72',NULL,'HDR Architecture, Inc.','1001 SW 5th Avenue, Suite 1900',NULL,'Portland','Oregon','97204','503-423-3800',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 17:41:54','Thermostat Training - April 14th','Mike','Rosemond','miker@oslc.org','3-19-49','Facilities Worker','Oregon Social Learning Center','10 Sheldon=McMurphy blvd',NULL,'Eugene','Oregon','97401','541 914-7852','541 485-7087',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 16:09:48','Thermostat Training - April 14th','Janet','Brown','janet@citizensbuilding.com','07/06/1959','Building Manager','Citizens Building','975 Oak Street, Suite 1010',NULL,'Eugene','Oregon','97401','541-687-9066','541-345-7297',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 16:08:38','The Effects of Light - Webcast - March 11th','Rebecca','Mann','rebeccam@uoregon.edu','10/25/1980',NULL,NULL,'1494 Charnelton St. ',NULL,'Eugene','Oregon','97401','202-669-2216',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 15:52:01','Thermostat Training - April 14th','Angela ','Marzano','angie.marzano@eweb.org','10/26/1976','Energy Management specialist','EWEB','500 East 4th Ave',NULL,'Eugene','Oregon','97440','541-484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 15:48:56','The Effects of Light - Webcast - March 11th','Angela ','Marzano','angie.marzano@eweb.org','10/26/1976','Energy Management specialist','EWEB','500 East 4th Ave',NULL,'Eugene','Oregon','97440','541-484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 15:46:01','The Effects of Light - Webcast - March 11th','Andy','Laird','l.lighting@comcast.net','1-8-55','President','Laird Lighting,Ltd.','po box 70203',NULL,'Eugene','Oregon','97401','5416862166','541-344-5132',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 15:42:36','Thermostat Training - April 14th','Angela','Marzano','angie.marzano@eweb.org','10/26/76','Energy Management Specialist','EWEB','500 East 4th Avenue',NULL,'Eugene','Oregon','97401','541-484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-03 15:40:28','The Effects of Light - Webcast - March 11th','Angela','Marzano','angie.marzano@eweb.org','10/26/76','Energy Management Specialist','EWEB','500 East 4th Avenue',NULL,'Eugene','Oregon','97440','541-484-1125',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-03-02 05:37:12','Energy Management Certification Program','Abu','Kadiri','akadiri@nercng.org','11-07-1972','RESEARCH ANALYST','NIGERIAN ELECTRICITY REGULATORY COMMISSION','PLOT 1099, FIRST AVENUE.OFF SHEHU SHAGARI WAY,','CBD, P.M.B. 136, GARKI','Abuja','Non-US','900001','234-9-6723207','234-9-5231938',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-27 04:01:34','Click here to select...','Catherine','Inocencio','ttangocatt@yahoo.com','2/17/1947',NULL,NULL,'707 W 28th Ave',NULL,'Eugene','Oregon','97405','541-606-0071',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-26 18:02:13','The Effects of Light - Webcast - March 11th','Dan','Morehouse','dan.morehouse@eweb.org','6/17/1969','EMS Commercial Supervisor','EWEB','PO Box 10148',NULL,'Eugene','Oregon','97440','541-484-1125','541-334-4614',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-26 17:59:17','Click here to select...','Shannon ','Boyd','lionessinor@hotmail.com','08/01/1978','Student',NULL,'2680 Jackson St',NULL,'Eugene','Oregon','97405','541-684-6934',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-26 17:23:26','The Effects of Light - Webcast - March 11th','Shelley','York','shelley.york@eweb.org','8/13/1980','Admin Assistant','EWEB','PO Box 10148',NULL,'Eugene','Oregon','97440','541-484-1125','541-334-4614',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-26 01:14:11','The Effects of Light - Webcast - March 11th','Ethan','McCoy','mccoy.ethan@gmail.com','07/12/84','Student','NWEEI','139 E 17th Ave.','Apt. 4','Eugene','Oregon','97401','360.420.1631',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 18:31:59','The Effects of Light - Webcast - March 11th','Sara','Jones','eugbartley@yahoo.com',4171976,'Student','Lane Community College','1179 N 5th St',NULL,'Springfield','Oregon','97477','5419158802',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 14:11:34','The Effects of Light - Webcast - March 11th','Cyrus','Collins','cyrus_collins@yahoo.com','12-25-82',NULL,NULL,'827 w 13th ave',NULL,'Eugene','Oregon','97402','503-705-7039',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 14:10:04','The Effects of Light - Webcast - March 11th','Erin','Connor','erinrconnor@hotmail.com','5/20/73',NULL,NULL,'830 west 5th ave. #8',NULL,'Eugene','Oregon','97402','360-305-1803',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 12:11:06','The Effects of Light - Webcast - March 11th','Jim','Salchenberg','jim.salchenberg@weyerhaeuser.com','6/17/67','Manufacturing Manager','Weyerhaeuser','2730 pacific blvd se',NULL,'Albany','Oregon','97321','541-924-5387',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 12:05:16','The Effects of Light - Webcast - March 11th','Chris','Huffman','cw.ris.13@hotmail.com','09/26/1956','Owner','Cree Creations','34918 N. Harney Lane',NULL,'Burns','Oregon','97720','541-493-2521',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 02:05:50','The Effects of Light - Webcast - March 11th','Nathan ','Cawood','n8kwud@yahoo.com','12/03/1975',NULL,NULL,'2209 Pierce Street ',NULL,'Eugene','Oregon','97401','541-913-6703',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-25 01:22:39','The Effects of Light - Webcast - March 11th','Jacob','Henry','henry.jacobscott@gmail.com','06-06-1981',NULL,NULL,'79849 Delight Valley School Rd.',NULL,'Cottage Grove','Oregon','97424','541.991.1611',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-24 20:09:15','The Effects of Light - Webcast - March 11th','Mark ','Anderson','m333anderson@gmail.com','06/03/1959','Student','cairo american college','354 brookside drive ',NULL,'Eugene','Oregon','97405','541-345-1976',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-24 20:08:12','The Effects of Light - Webcast - March 11th','Zach','Parrott','nrgnorthwest@gmail.com','12-18-1983',NULL,NULL,'411 w 12th Alley',NULL,'Eugene','Oregon','97401','5415178091',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-24 19:15:01','The Effects of Light - Webcast - March 11th','Lori','Lilliefors','LoriLilliefors@gmail.com','09/18/1962',NULL,NULL,'PO Box 50354',NULL,'Eugene','Oregon','97405','541-514-3088',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-24 19:05:46','The Effects of Light - Webcast - March 11th','Mark','Tuffo','mark.tuffo@eweb.org','03-19-53','Energy Management Specialist','EWEB','PO Box 10148',NULL,'Eugene','Oregon','97440','344-6311 ext. 3060',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-24 18:55:37','The Effects of Light - Webcast - March 11th','Chick','Gerke','chick@crgarchitect.com','2-22-52','Architect','crg architect','230 sw 3rd street','#204','Corvallis','Oregon','97333','5417570554',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-23 15:38:29','The Effects of Light - Webcast - March 11th','Lisa','Krumbah','auntcsaw@yahoo.com','11.15.1972','Project Sales','CED','411 W 4th Ave',NULL,'Eugene','Oregon','97401','503-302-6498',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-23 14:03:09','The Effects of Light - Webcast - March 11th','Ted','Corbin','ted@erichallarchitects.com','3-18-64',NULL,'Eric Hall Architects','116 Hwy 99  Suite 100',NULL,'Eugene','Oregon','97402','541-688-5594',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-23 14:00:52','The Effects of Light - Webcast - March 11th','Eric','Hall','eric@erichallarchitects.comq','4-26-61',NULL,'Eric Hall Architects','116 Hwy 99  Suite 100',NULL,'Eugene','Oregon','97402','541-688-5594',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-22 16:59:39','The Effects of Light - Webcast - March 11th','Nancy','Cheng','design@uoregon.edu','March 5, 1960','Assoc. Prof.','University of Oregon','Dept of Architecture','1206 Univ of Oregon','Eugene','Oregon','97403','541-346-3674',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-20 20:10:16','The Effects of Light - Webcast - March 11th','Flavio','Leija','FLAVIO.LEIJA@WEYERHAEUSER.COM',1973,'ELECTRICAL ENGINEER','WEYERHAEUSER','PO BOX 907',NULL,'Albany','Oregon','97321','541-924-5375',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-20 17:27:57','The Effects of Light - Webcast - March 11th','Gayatri','Mungekar','gmungekar@pivotarchitecture.com','05/01/1978',NULL,NULL,'72 West Broadway',NULL,'Eugene','Oregon','97401','541-762-1604',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-20 16:16:43','Building Operator Certification','Luis','Gonzalez','luis.gonzalez@ci.gresham.or.us','07/20/1972','Facility Maintenance Tech. I','City of Gresham','1333 NW Eastman Parkway',NULL,'Gresham','Oregon','97030','503-618-2723','503-618-2512',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-20 16:13:57','The Effects of Light - Webcast - March 11th','Jennifer','Beagley','jbeagley@ncelec.com','12/11/79','Project manager','north coast electric','130 garfield st',NULL,'Eugene','Oregon','97402','541-343-7701',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-20 16:10:23','The Effects of Light - Webcast - March 11th','Andy','Vogt','jvogt@ncelec.com','9/2/77',NULL,NULL,'130 Garfield St',NULL,'Eugene ','Oregon','97402','541-343-7701',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-20 12:43:03','The Effects of Light - Webcast - March 11th','David','Harris','davidh@subutil.com','10/24/1964','Energy Services Engineer','Springfield Utility Board','223 A Street, Suite B',NULL,'Springfield','Oregon','97477','(541) 744-3775','(541) 744-3654',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 20:16:41','The Effects of Light - Webcast - March 11th','Laurie ','MacArthur','ellie_Mac@yahoo.com','6/13/64',NULL,NULL,'71828 London-Wey. Rd',NULL,'Cottage Grove','Oregon','97424','541-767-3394',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 20:13:32','The Effects of Light - Webcast - March 11th','Todd','Miller','todd@toddmillerarchitecture.com','4/13/67','Architect',NULL,'71828 London-Wey. Rd',NULL,'Cottage Grove','Oregon','97424','541-767-3394',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 15:04:41','The Effects of Light - Webcast - March 11th','Ihab','Elzeyadi','ihab@uoregon.edu','03/18','Professor','University of Oregon','1206 University of Oregon',NULL,'Eugene','Oregon','97403','541-346-3670',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 13:48:53','The Effects of Light - Webcast - March 11th','Daniel','Klute','dpklute@gma-arch.com','11.28.1952','Architect','GMA Architects','860 West Park Street','Suite 300','Eugene','Oregon','97401','541.344.9157',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 13:14:56','The Effects of Light - Webcast - March 11th','Rodd','Hansen','rodd@nagao-hansenarchitects.com','8/1/1972','Architect',NULL,'1680 Pearl Street',NULL,'Eugene','Oregon','97401','(541) 687-9600','(541) 687-8142',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 13:12:29','The Effects of Light - Webcast - March 11th','Kenneth','Nagao','ken@nagao-hansenarchitects.com','12.23.1939','Architect','Nagao/Hansen Architects PC','1680 Pearl Street',NULL,'Eugene','Oregon','97401','541.687.9600','541.687.8142',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 12:34:47','The Effects of Light - Webcast - March 11th','James','McCarty','mccartyje@msn.com','07.09.1952','Lighting Designer','Balzhiser and Hubbard Eng','100 West 13th Avenue',NULL,'Eugene','Oregon','97401','5415203824','5413455303',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 12:22:38','The Effects of Light - Webcast - March 11th','Jean','Duffett','jduffett@berryarch.com','1/30/1952','Project architect','Berry Architects','460 E. 2nd Ave',NULL,'Eugene','Oregon','97401','541-485-3970','541-485-3402',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 11:24:50','The Effects of Light - Webcast - March 11th','Craig','Rhoden','crhoden@cedeugene.com','April 5 1956',NULL,'Consolidated Electric Distributors, inc','411 W 4th Ave',NULL,'Eugene','Oregon','97401','683-2474',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 11:22:53','The Effects of Light - Webcast - March 11th','Denise','Taisey','dtaisey@cedeugene.com','Feb. 20 1966',NULL,'Consolidated Electric Distributors, inc','411 W 4th Ave',NULL,'Eugene','Oregon','97401','541-683-2474',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-19 11:16:03','The Effects of Light - Webcast - March 11th','Jenni','Rogers','jrogers@berryarch.com','12/07/1983','Drafter/designer','AIA','460 E Second Ave',NULL,'Eugene','Oregon','97401','541-485-3970',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-18 17:35:04','The Effects of Light - Webcast - March 11th','Jeffrey','Graper','jgraper@systemswestengineers.com','12/27/49','Electrical Engineer','Systems West Engineers','411 High Street',NULL,'Eugene','Oregon','97401','541-342-7210',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-13 20:08:26','Energy Management Certification Program','Ian','Wallin','eachdirection@yahoo.com','09/24/80','CSA Farmer','Emergence/Assured Food for the Future','60801 Brosterhous Rd',NULL,'Bend','Oregon','97702','541-390-8763',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-12 14:40:53','Building Operator Certification','Shawn','Wells','shawn@arlie.com','11-04-67','Project Manager','Arlie & Company','875 Country Club Rd',NULL,'Eugene','Oregon','97401','541-344-5500','541-485-2550',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-09 02:24:15','Building Operator Certification','Veeru','Kaundal','sd@msn.com','03/03/1985','Cvb','cvb','#1355 sec 22 b','Newyork','Newyork','Alaska','12345','5555555555','5555555555',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-07 21:26:36','Energy Management Certification Program','Hussien ','Awad','husean_3wad@yahoo.com','25-05-1986','Energy Auditing','Palestine Polytechnic University','Hebron-Palestine',NULL,'Hebron','Select...','45352','00972599357400','0097222282249',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-07 05:58:29','Building Operator Certification','Sunil','Yadav','sunil@gmail.com','12/12/1980',NULL,NULL,'3757 Indianola Avenue',NULL,'Columbus ','Ohio','67868','76876876876',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-02-06 06:17:13','Click here to select...','TEST','TEST','ddf@yahoo.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97405','TEST',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-30 01:34:58','NABCEP Certification-Prep Course FEB 3-4','Richard','Umana','powerint1@hotmail.com','05.17.1960',NULL,'Power International','4085 SW 160th Ave, Apt # 22',NULL,'Beaverton','Oregon','97007','503.270.1242',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-29 20:15:29','NABCEP Certification-Prep Course FEB 3-4','Lynn','Post','rickenergy@gmail.com','4/16/1961','VP','Energy Wise Lighting','PO Box 24731',NULL,'Eugene','Oregon','97402','541-515-1661','541-610-1756',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-29 19:48:38','NABCEP Certification-Prep Course FEB 3-4','Peter ','Greenberg','nrgwise.lighting@gmail.com','11/12/1955','Owner','Energy Wise Lighting','PO Box 24731',NULL,'Eugene','Oregon','97402','541-905-2271','541-610-1756',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-28 21:48:03','NABCEP Certification-Prep Course FEB 3-4','Chris','Norman','ranorman@wvi.com','10/21/1985',NULL,'Pacific Coast Electric','1425 E. Santiam Street',NULL,'Stayton','Oregon','97383','503-769-7671','503-769-4086',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-28 21:42:02','NABCEP Certification-Prep Course FEB 3-4','Charles ','Norman','ranorman@wvi.com','10/21/1958','President','Pacific Coast Electric','1425 E. Santiam Street',NULL,'Stayton','Oregon','97383','503-769-7671','503-769-4086',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-28 12:56:44','NABCEP Certification-Prep Course FEB 3-4','Mario ','Flores','montyr1@qpsisbest.com','9/3/79','Electrician','Quality Plus Services','2240 NE Griffin Oaks Street','Suite 700','Hillsboro','Oregon','98645','503-640-4326','503-640-6547',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-27 18:01:57','NABCEP Certification-Prep Course FEB 3-4','David','Trapp','davidt@hugheselectrical.com','02/04/78',NULL,'Hughes Electrical Contractors, Inc.','9640 SW Sunshine Ct','Suite 600','Beaverton','Oregon','97005','503-626-3344','503-626-3377',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-27 11:34:53','NABCEP Certification-Prep Course FEB 3-4','Michael','Dutton','mike@3delectrical.com','1/25/65','GM','3D Electrical Services, Inc.','PO Box 173',NULL,'Oregon City','Oregon','97045','503.657.9173','503.655.7140',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-27 11:33:50','NABCEP Certification-Prep Course FEB 3-4','Sean','Moncrief','seanm@greenwoodheating.com','2/11/72','Operations Manager','Greenwood Heating and As You Wish Electric','825 South Stacy St',NULL,'Seattle','Washington','98134','206 784 1818','425 820 3487',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-27 00:05:09','NABCEP Certification-Prep Course FEB 3-4','Thomas','Riley','tr4831@yahoo.com','10-16-62',NULL,NULL,'4831 NE Neotsu Dr',NULL,'Neotsu','Oregon','97364','541-961-3407',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-26 18:47:12','NABCEP Certification-Prep Course FEB 3-4','Jay','Jackson','jayj@jimcoelectrical.biz',81756,'Project Manager','Jimco Electrical','1100 Airway Rd',NULL,'Lebanon','Oregon','97355','541-258-6111','541-258-6292',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-24 13:30:58','Energy Management Certification Program','Ndabai','Anthony','tony_ikemefuna@yahoo.com','15-04-1972','Marketing','gosnihk','62b opebi street','ikeja, lagos','Lagos','Non-US','2341','2348032780042',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-23 18:03:37','NABCEP Certification-Prep Course FEB 3-4','Stephen','Paisley','karen@northsideelectric.com','05/20/1951','ELECTRICIAN','NORTHSIDE ELECTRIC','PO BOX 12323',NULL,'Salem','Oregon','97309','503-585-4879','503-364-0248',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-23 13:25:35','NABCEP Certification-Prep Course FEB 3-4','Israel','Londono','iel282000@yahoo.com','09/13/1973',NULL,NULL,'7404 N. Greenwich Ave.',NULL,'Portland','Oregon','97217','503-544-8695',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-23 12:40:02','NABCEP Certification-Prep Course FEB 3-4','Madison','Reyes','provision962@yahoo.com','5/28/1985','Mr.',NULL,'948 West 12th','948 West 12th','Eugene','Oregon','97402','6465223484',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-21 13:29:06','NABCEP Certification-Prep Course FEB 3-4','Chris ','Cameron','ccameron@clearwire.net','9/20/74',NULL,NULL,'63420 Hughes Rd','840 SE Woodland Blvd #100','Bend','Oregon','97701','541-410-8634','541-388-1165',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-20 14:57:35','NABCEP Certification-Prep Course FEB 3-4','Jason','Youmans','freestylebuilders@yahoo.com','10-10-57','Owner/pres/super,electric','coast electric,inc.','po box 1827',NULL,'Bandon','Oregon','97411','541 404 7800','541 347 9525',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-20 14:05:11','NABCEP Certification-Prep Course FEB 3-4','James','Michaud','fixit9000@hughes.net','5-14-53','Owner','Image King Signs','260 Grimes Street','Unit A','Eugene','Oregon','97402','541-484-1482','541-465-8994',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-19 12:02:40','NABCEP Certification-Prep Course FEB 3-4','Jon','Schlecht','jons@prairielectric.com','1/16/1975','Project Manager','Prairie Electric, Inc','6000 NE 88TH ST ',NULL,'Vancouver','Washington','98665','360-573-2750','360-576-7422',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-14 15:03:35','NABCEP Certification-Prep Course FEB 3-4','Randy','Batchelor','RandyBatchelor@B-e-f.org','9/22/1983','Project Manager','Bonneville Environmental Foundation','240 SW First Ave',NULL,'Portland','Oregon','97204','(503)248-1905','(503)248-1908',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-13 23:18:58','NABCEP Certification-Prep Course FEB 3-4','John ','Zagunis','actonsolar@comcast.net','12/10','Owner','ACT on Solar','2223 NW 43rd Ave',NULL,'Camas, ','Washington','98607','360-834-0674',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-13 16:10:05','NABCEP Certification-Prep Course FEB 3-4','Daniel','Sundstrom','baseline2@verizon.net',41884,'Technician','Baseline Construction Co.','2131 SE 190th Avenue',NULL,'Portland','Oregon','97233','503-669-7979','503-491-5879',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-13 16:07:48','NABCEP Certification-Prep Course FEB 3-4','Dennis','Wolfersperger','dennis@BaselineCCo.com',32969,'Superintendent','Baseline Construction Co.','2131 SE 190th Avenue',NULL,'Portland','Oregon','97233','503-669-7979','503-491-5879',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-13 16:02:18','Click here to select...','Dennis','Wolfersperger','dennis@BCCo.com',32969,'Superintendent','Baseline Construction Co.','2131 SE 190th Avenue',NULL,'Portland','Oregon','97233','503-669-7979','503-491-5879',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-13 11:19:41','NABCEP Certification-Prep Course FEB 3-4','Craig','Gossett','craig@timberlineelectric.com','11/7/1964','Owner','Timberline Electrical Contractors','9414 SW Barbur Blvd','Suite 100','Portland','Oregon','97219','5034594089','2032544227',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-13 11:18:09','NABCEP Certification-Prep Course FEB 3-4','Pat ','Aichele','pat@timberlineelectric.com','11/21/1964','Owner','Timberline Electrical Contractors','9414 SW Barbur Blvd','Suite 100','Portland','Oregon','97219','5034594089','5032544227',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-11 19:14:29','NABCEP Certification-Prep Course FEB 3-4','Shannon','Souza','shannon@solcoast.com','9/20/71','Principal','Sol Coast Consulting & Design, LLC','65431 Millicoma Rd',NULL,'Coos Bay','Oregon','97420','541-266-0877',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-10 16:37:51','NABCEP Certification-Prep Course FEB 3-4','Paul','Fisher','lunagant@gmail.com','2-16-54',NULL,NULL,'56994 Parkersburg Rd',NULL,'Bandon','Oregon','97411','541-347-9655',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-09 21:22:17','NABCEP Certification-Prep Course FEB 3-4','Gary','Thomas','GARY@SOLARMANCOMPANY.COM','11/24/53','OWNER',NULL,'1205 SW JORDAN ST.',NULL,'Grants Pass','Oregon','97526','541-474-1699',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-09 20:19:04','NABCEP Certification-Prep Course FEB 3-4','Don','Schallerer','fcc.don@earthlink.net','11/01/1955','Owner','Full Circuit Construction','3325 NE 29th AV',NULL,'Portland','Oregon','97212','5032495095','5032495089',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-09 19:18:11','NABCEP Certification-Prep Course FEB 3-4','Tom','Doberstein','tomd@skylightsnw.com','2-22-67','Pers.','Skylights NW, Inc.','7930 SW Nimbus Ave',NULL,'Portland','Oregon','97221','503-297-7260',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-08 17:45:39','NABCEP Certification-Prep Course FEB 3-4','Aaron','Clickett','aaron@aakencorp.com','07/07/72','President','aaken corporation','62988 ne layton ave','suite 102','Bend','Oregon','97701','541-410-8286','541-330-6111',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-07 16:11:08','NABCEP Certification-Prep Course FEB 3-4','Andrew','Koyaasinqatsi','andrew@solarenergyoregon.com','3/24/57','President','Solar Energy Solutions','3730 SE Lafayette Court',NULL,'Portland','Oregon','97202','503-238-4502','Call First',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-07 14:03:18','NABCEP Certification-Prep Course FEB 3-4','Chris','Frazeur','cfrazeur1@comcast.net','12/28/1952','Owner','C & N Development Co.','5431 Windsor Terrace',NULL,'West Linn','Oregon','97068','503-655-2121',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-05 22:15:22','NABCEP Certification-Prep Course FEB 3-4','Kevin','Beckman','Kevin_Beckman2@msn.com','January 17, 1969','MR',NULL,'1909 SW Beckman Place',NULL,'Aloha','Oregon','97006','503.539.5996','503.356.9911',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-05 16:03:56','NABCEP Certification-Prep Course FEB 3-4','Bob','Skinner','bobs@seraphimenergy.com','07.11.1953','Energy Systems Designer','Seraphim Energy','PO Box 393',NULL,'Ione','Oregon','97843','541-454-2220',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2009-01-02 13:29:15','NABCEP Certification-Prep Course FEB 3-4','Eric','Benjamin','llb@inlandelectricinc.com','05-27-1981',NULL,'Inland Electric, Inc.','360 SE Baseline  ',NULL,'Hillsboro','Oregon','97123','503-681-4700','503-681-4738',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-12-31 21:31:11','NABCEP Certification-Prep Course FEB 3-4','Thomas','Madison','ThomasHenryMadison@gMAIL.COM','4/28/2008','CEO','Lighthouse Management Group, LLAC','PO Box 33102',NULL,'Portland','Oregon','97292','503-975-1944',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-12-31 14:14:31','NABCEP Certification-Prep Course FEB 3-4','Keith','Knowles','keith@robertknowlesconstruction.com','5/11/1971','Vice President','Robert Knowles Construction','29655 NE Benjamin Rd',NULL,'Newberg','Oregon','97132','503-317-6536','503-537-9727',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-12-23 04:13:33','Energy Management Certification Program','Abdalla','Kyezira','akyezira@konserve.co.ug','7th January 1974','Mr','Konserve Consult Limited','P.O. Box 100001 Kampala, Uganda','Plot 164 Upper Mawanda Road','Kampala','Non-US','100001','+256414536685 (Office) or +256772967711 (Cell)','N/A',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-12-01 15:42:43','NABCEP Solar Entry Level - Oct 1/2','Larry','Hays','larry@actionem.com','10/30/1941','Electrical Contractor','Action Electrical Maintenance, Inc.','19606 NE Archery Summit Rd.',NULL,'Dayton','Oregon','97114','503-680-2152','503-864-4593',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-30 12:44:34','Energy Management Certification Program','Lelawattee','ManooRahming','TEGL@batelnet.bs','09.10.60','Mechanical Engineer','The Engineering Group','P.O. Box CB-11678','Adelaide Road','Nassau','Non-US','000000','242 362 1717','242 362 0074 ',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-28 20:16:03','Energy Management Certification Program','Fredrick','Hammer','fham001@verizon.net','07/12/1956','Engineer','Lefebure Engineering','2020 Maltby Rd.','#7-177','Bothell','Washington','98022','2065109035',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-24 15:23:26','Energy Management Certification Program','Mark ','Brann','mark.brann@autopkg.com',60869,'Facility Engineer','Automated Packaging Systems','25900 Solon Rd',NULL,'Solon','Ohio','44146','330.342.2768',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-20 12:01:05','PV Commercial - Nov 6/7','Mike','Middleton','mmiddleton@solarcity.com','1/2/77','Construction Manager','Solar City Corp.','1521 SE 21st Ave., Apt 1',NULL,'Portland ','Oregon','97214','503-828-5499',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-17 13:11:03','PV Commercial - Nov 6/7','Mike','Middleton','mmiddleton@solarcity.com','1-2-77','Construction Manager','Solar City Corporation','1521 SE 21st Ave., Apt 1',NULL,'Portland ','Oregon','97214','503-828-5499',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-16 12:42:11','PV Commercial - Nov 6/7','Rob','LaVigne','rlavigne@solarcity.com','8/12/1969','Regional Director','SolarCity Corp','6312 SW Capitol Hwy','No. 180','Portland','Oregon','97239','503-560-1005','503-536-6849',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-10 12:45:35','PV Commercial - Nov 6/7','Jim','Alexander','jim.alexander@cityofalbany.net','7-16-1984','Building Inspector','City of Albany','333 Broadalbin Street SW',NULL,'Albany','Oregon','97321','541-917-7553',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-09 13:01:48','PV Commercial - Nov 6/7','William','Dutton','bill@3delectrical.com','07/08/63','PM','3D Electrical Services, Inc.','PO Box 173',NULL,'Oregon City','Oregon','97045','503.657.9173','503.655.7140',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-09 12:59:36','PV Commercial - Nov 6/7','Michael','Dutton','mike@3delectrical.com','01/25/65','GM','3D Electrical Services, Inc.','PO Box 173',NULL,'Oregon City','Oregon','97045','503.657.9173','503.655.7140',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-08 14:10:42','PV Commercial - Nov 6/7','Paul','Crowe','Paul.CROWE@odot.state.or.us','07/27/1949','Traffic Signal Specialist','ODOT','455 Airport Road SE Bldg A',NULL,'Salem','Oregon','97301','503-986-2996','503-986-2839',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-08 13:25:55','PV Commercial - Nov 6/7','Douglas','Parsons','dparsons@SunEnergyPower.com','23 November 1955','CEO','SunEnergy Power Corporation','1133 NW Wall Street','Suite 305','Bend','Oregon','97701','619-548-4315','503-922-1552',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-08 13:09:17','PV Commercial - Nov 6/7','Stephen','Paisley','karen@northsideelectric.com','05/20/1951','ELECTRICIAN','NORTHSIDE ELECTRIC','PO BOX 12323',NULL,'Salem','Oregon','97309','503-585-4879','503-364-0248',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-08 13:03:20','PV Commercial - Nov 6/7','Dave','White','dave.a.white@ci.eugene.or.us','03/01/1949','Electrical Inspector','City of Eugene','99 W 10th Ave',NULL,'Eugene','Oregon','97401','541-682-5494','541-682-6806',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-08 13:00:19','PV Commercial - Nov 6/7','Gary','Andrews','gary.h.andrews@ci.eugene.or.us','04/04/1952','Electrical Inspector','City of Eugene','99 W 10th Ave',NULL,'Eugene','Oregon','97401','541-682-5494','541-682-6806',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-07 17:52:42','Building Operator Certification','Kean','Sabin','lshoop@themac.com','10.20.58','Facility Technician','Multnomah Athletic Club','1849 SW Salmon Street',NULL,'Portland','Oregon','97207','503.517.6659','503.525.8993',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-07 17:40:21','Building Operator Certification','Larry','Shoop','lshoop@themac.com','01.05.49','Maintenance Supervisor','Multnomah Atheltic Club','1849 SW Salmon Street',NULL,'Portland','Oregon','27207','503.517.6659','503.525.8993',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-06 19:58:18','PV Commercial - Nov 6/7','Don','Ugwudiobi','donausa@yahoo.com','12.25.60',NULL,NULL,'P.O.Box 737578',NULL,'Corona','New York','11373','718-760-9305',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-10-01 15:07:51','Sustainable Building Advisor Program','Marianne','McElroy','marianne.mcelroy@gmail.com','12-20-1978','Ms.',NULL,'2180 Pierce Street',NULL,'Eugene','Oregon','97405','541-337-0164',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-30 20:01:39','NABCEP Solar Entry Level - Oct 1/2','Cosmos','Corbin','cosmos@aesrenew.com','10/08/1977','Marketing/PR Dir.','Advanced Energy Systems','65 Centennial Loop',NULL,'Eugene','Oregon','97401','541-683-2345',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-30 19:58:56','NABCEP Solar Entry Level - Oct 1/2','Eden','Corbin','eden@aesrenew.com','6/24/1983','Dir. of Operation','Advanced Energy Systems','65 Centennial Loop',NULL,'Eugene','Oregon','97401','541-683-2345',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-30 18:35:55','Sustainable Building Advisor Program','Bruce','Lathers','lathers_bruce@salkeiz.k12.or.us','12/12/1950','Construction Manager','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','503 391-1133','503 375-7818',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-28 12:44:55','Sustainable Building Advisor Program','Deb','Brewer','debjacksonbrewer@gmail.com','2/11/1953',NULL,NULL,'5224 Cold Springs Way',NULL,'Eugene','Oregon','97405','541-556-1182',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-26 04:31:00','Building Operator Certification','TEST','TEST','ffj@gh.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97405','TEST',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-24 12:32:41','NABCEP Solar Entry Level - Oct 1/2','Kerry','MacKelvey','acesolar@gmail.com','11-25-1951','CEDS','American Community Energy','10550 Lake City Way','Unit F','Seattle','Washington','98125','866-654-6162','866-628-9507',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-23 13:08:44','Building Operator Certification','Scott','Gorton','sgorton@providence.org','1/11/58','Maintenance Tech III','Providence Hood River Memorial Hospital','Same as previous',NULL,'Hood River','Oregon','97','541-387-6293',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-22 13:57:30','Energy Management Certification Program','Andrew','Moody','skaterdj2b@gmail.com','12-30-1978',NULL,NULL,'1589 ferry st. #2',NULL,'Eugene','Oregon','97401','(985)859-2626',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-19 18:18:25','NABCEP Solar Entry Level - Oct 1/2','Jorge','Algeciras','orientelectric@verizon.net','4-09-64','Vice President','Orient Electric, Inc.','30532 SE Bluff Rd',NULL,'Gresham','Oregon','97080','503-663-5881','503-663-3187',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-18 16:55:14','NABCEP Solar Entry Level - Oct 1/2','Knute','Nemeth','tunaguys@charter.net','sept 27 1956','Fisherman','tuna guys','po 5775',NULL,'Charleston','Oregon','97420','(541) 260-0312',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-18 15:56:23','Building Operator Certification','Troy','Hartfeil','troyh@heinz-mech.com','3-21-66','Commercial Service Manager','Heinz Mechanical, Inc.','2615 NW St. Helens Rd',NULL,'Portland','Oregon','97210','503-317-1156','503-220-0260',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-17 19:55:59','Building Operator Certification','Eugene','Farr','gfarr@wschrio.edu','02/12/1978','Facilities Tech II','Western States Chiropractic College','2900 NE 132nd Ave',NULL,'Portland','Oregon','97230','503-740-8201',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-17 16:46:36','Building Operator Certification','Tracey ','Blue','Tracey@tigard-or.gov','1/21/65','Building Tech 2','City of tigard','13125 SW Hall Blvd',NULL,'Tigard','Select...','97223','503-718-2605','503-684-8840',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-17 14:20:38','PV Commercial - Sept 18','Richard','Wilson','Richard.E.Wilson@state.or.us','09/09/1974','Wireless Tech','STATE OF OREGON','OREGON STATE POLICE','455 AIRPORT ROAD SE, BLDG C','Salem','Oregon','97301','503-986-2673','503-986-2899',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-17 12:42:14','NABCEP Solar Entry Level - Oct 1/2','Jack','Haggard','codeelectr@aol.com','6/26/1957','President','Code Electric Inc.','2717 22nd St SE',NULL,'Salem','Oregon','97302','503-581-8684','503-364-4229',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-16 15:01:08','Building Operator Certification','Mark','Ralston','mdralston@bpa.gov','7/9/54','Energy Efficiency Representative','Bonneville Power Administration','905 NE 11th Ave',NULL,'Portland','Oregon','97232','503-230-3175','503-230-3186',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-16 14:46:19','PV Commercial - Nov 6/7','Thomas','Dunlap','twd22@hotmail.com',62277,'Technician','Advanced Energt Systems','1660 W. Broadway',NULL,'Eugene','Oregon','97402','541-505-8570',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-16 14:39:53','NABCEP Solar Entry Level - Oct 1/2','Thomas','Dunlap','twd22@hotmail.com',62277,'Technician',NULL,'1660 W. Broadway',NULL,'Eugene','Oregon','97402','541-505-8570',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-15 15:50:12','NABCEP Solar Entry Level - Oct 1/2','SaraHope','Smith','hopecreations@gmail.com','4/9/67','Ms.',NULL,'9628 NW Arborview Dr',NULL,'Portland','Oregon','97229','415.717.2589',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-15 14:21:05','Building Operator Certification','Eric','Otterman','bschmit@billnaito.com','10/30/1980','Facilities Maintenance','Bill Naito Company','2701 NW Vaughn Street',NULL,'Portland','Oregon','97210','5032287275','5032738356',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-12 10:03:03','Building Operator Certification','Suzanne','Twarog','smtwarog@bpa.gov','04-21-61','Facilities Maintenance','All Star','5411 NE Hwy 99','mail stop- NWFR-PSB-2','Vancouver','Washington','98663','360-418-2192','360-418-2449',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-12 09:51:25','Building Operator Certification','Dean','Conroy','djconroy@bpa.gov','3-9-63','HVAC Tech.','Allstar','905 NE. 11th Ave.',NULL,'Portland','Oregon','97232','(503)230-5745','(503)230-5915',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-11 19:32:43','NABCEP Solar Entry Level - Oct 1/2','Keith','Knowles','Peterson421@comcast.net','5/15/74','Owner','Robert Knowles Const','29655 NE Benjamin Rd ','29655 NE Benjamin Rd  ','Newberg ','Oregon','97123','971-322-5933','503-537-9727',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-09 23:48:53','Sustainable Building Advisor Program','Jay','Janin','Jay_Janin@Yahoo.com','3/21/61',NULL,NULL,'2677 Onyx St.',NULL,'Eugene','Oregon','97403','541-554-6601',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-11 19:25:49','NABCEP Solar Entry Level - Oct 1/2','Nathan ','Peterson','Peterson421@comcast.net','3/13/80','Mechanical Con ','Robert Knowles Const','29655 NE Benjamin Rd ','29655 NE Benjamin Rd  ','Newberg ','Oregon','97123','971-322-5933','503-537-9727',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-09 12:35:35','PV Commercial - Sept 18','Gary','Muir','gary.w.muir@odot.state.or.us','11/05/1953','Wireless Systems Analyst','Oregon Department of Transportation','3339 Old Hwy 99S',NULL,'Roseburg','Oregon','97471','541-430-0471','541-957-3660',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-08 18:32:37','PV Commercial - Sept 18','Chance','Currington','chance.currington@sunlightsolar.com','5/29/1975','Project Manager','Sunlight Solar Energy','4 NW Franklin Avenue',NULL,'Bend','Oregon','97701','541.322.1910','541.322.1911',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-05 13:19:26','NABCEP Solar Entry Level - Sept 25/26','Travis','Tanner','travis.tanner@pacificorp.com','9/20/66',NULL,'Pacificorp','825 NE Multnomah, LCT 800',NULL,'Portland','Oregon','97232','503 813-6730',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-04 19:06:31','NABCEP Solar Entry Level - Sept 25/26','Emilio','Hernandez III','ehiii54tx@yahoo.com','05-05-1954',NULL,NULL,'10676 sw washington St.',NULL,'Portland','Oregon','97225','503-747-5299',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-04 12:28:52','NABCEP Solar Entry Level - Sept 25/26','Jun','Liu','tonyliuwa@gmail.com','08/32/1963','Project Engineer','Sunmodo Corp.','1118 NW KLICKITAT LANE',NULL,'Camas','Washington','98607','360-833-4585','503-863-3878',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-04 12:28:48','NABCEP Solar Entry Level - Sept 25/26','David','Andersen','suzanne@andersenelectric.com','09/05/1966','President','Andersen Electric, Inc','9390 SE Hide A Way Court',NULL,'Damascus','Oregon','97089','503-665-4327','503-665-8331',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-04 11:34:26','NABCEP Solar Entry Level - Oct 1/2','Francis','Ranney','francis@dcpower-systems.com','12/07/1958','Manager','DC Power','103 West North Street',NULL,'Healdsburg','California','95448','707-395-3159','707-433-7708',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-04 11:08:56','NABCEP Solar Entry Level - Sept 25/26','Robison','Godlove','godlove8457@comcast.net','12/24/76',NULL,'Solar Assist','320 High Street',NULL,'Eugene','Oregon','97401','541-687-1998',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-03 18:16:46','NABCEP Solar Entry Level - Sept 25/26','Michael','Moreland','ben@bacgen.com','11/03/1969','Project Manager','BacGen Technologies','4015 Beach Drive SW',NULL,'Seattle','Washington','98116','206 932 2382',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-03 15:40:14','NABCEP Solar Entry Level - Sept 25/26','Catherine','Brown','catherine.brown@spgsolar.com','11/2/1963','Director, Business Development','SPG Solar','20 Leveroni Court',NULL,'Novato','California','94949','530.520.2427',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-03 14:26:26','NABCEP Solar Entry Level - Sept 25/26','Bill','Boyk','cedarcanyon72@yahoo.com','5/11/47','President','AmeriStar EcoStations, LLC','P. O Box 192',NULL,'Banks','Oregon','97106','503-270-7804','503-324-5725',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-02 14:16:22','NABCEP Solar Entry Level – Sept 25/26','Todd','Rhodes','todd.rhodes@comcast.net','11/3/65',NULL,'Chandler Electric','9790 SW Cook Court',NULL,'Tigard','Oregon','97224','503-941-9503(547-3684)',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-02 13:40:06','NABCEP Solar Entry Level – Oct 1 /2','Aaron','Watzig','aaronw@westsideelectric.com','10/25/76','Electrician','Westside Electric','1834 SE Eighth',NULL,'Portland','Oregon','97214','503-209-3256','506-231-9987',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-02 12:20:41','Sustainable Building Advisor Program','Anne','DeLaney','delaney@bdarch.net','09/27/60','Architect','Bergsund DeLaney Architecture','1369 Olive Street',NULL,'Eugene','Oregon','97405','541-683-8661','541-683-1136',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-02 01:51:52','NABCEP Solar Entry Level – Sept 25/26','Martin','Larson','marty@timnaenergy.com','04/02/76','Engineer','Timna Energy','17825 NW Elkcrest Ct',NULL,'Portland','Oregon','97229','971-223-5522',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-02 01:47:36','Sustainable Building Advisor Program','Rudy','Berg','rudyberg@rio.com','10/5/42','Manager','Common Practice Building Design','195 E 32nd Ave',NULL,'Eugene','Oregon','97405','541-683-8963','541-683-8963',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-01 13:31:05','PV Commercial – Nov 6/7','Bruce','Fiero','willpowerelect@aol.com','6-26-53','Owner','Willpower Electric','5000 Fern VAlley Road',NULL,'Medford','Oregon','97504','541 973 7751','541 535 1650',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-01 13:20:41','NABCEP Solar Entry Level – Oct 1 /2','Bruce','Fiero','willpowerelect@aol.com','6-26-53','Owner','Willpower Electric','5000 Fern Valley Road',NULL,'Medford','Oregon','97504','541 973 7751','541 535 1650',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-08-29 18:35:52','Sustainable Building Advisor Program','Gary','Reiber','gdreiber@yahoo.com','08/01/1949','Architect','gLAs Architects','1055 Horn Lane',NULL,'Eugene','Oregon','97404','(541)543-7185',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-08-29 18:07:50','NABCEP Solar Entry Level – Sept 25/26','Eric ','Benjamin','llb@inlandelectricinc.com','05-27-1981',NULL,'Inland Electric, Inc.','360 SE Baseline  ',NULL,'Hillsboro','Oregon','97123','503-681-4700','503-681-4738',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-08-29 18:04:03','NABCEP Solar Entry Level – Sept 25/26','Kelly','Rainey','llb@inlandelectricinc.com','03-03-1979',NULL,'Inland Electric, Inc.','360 SE Baseline  ',NULL,'Hillsboro','Oregon','97123','503-681-4700','503-681-4738',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-08-29 12:39:49','NABCEP Solar Entry Level – Sept 25/26','Philip','Krain','philip@c-s-v.com','5/14/72','Project Manager','Real Energy Solutions','621 SW Alder #300',NULL,'Portland','Oregon','97205','971-322-8647','503-241-2204',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-08-29 12:33:22','NABCEP Solar Entry Level – Sept 25/26','Sandra ','Walden','swalden@c-s-v.com','5-9-51','President','Real Energy Solutions','621 SW Alder #300',NULL,'Portland','Oregon','97205','503-709-0820','503-241-2204',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2008-09-02 18:11:55','NABCEP Solar Entry Level - Sept 25/26','Edward','McDaniel','mmcdaniel1593@charter.net','08-14-1947','Owner','Eddie Mack''s Ent. Inc.','1210 Iris St',NULL,'Brookings','Oregon','97415','541-661-1593',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-24 16:55:22','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Catherine','Schainman','schainmank@catlin.edu','10-19-1966','Facilities Manager','Catlin Gabel School','8825 SW Barnes Road',NULL,'Portland','Oregon','97225','503-203-5129','503-203-5126',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-25 13:28:35','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Jeff','Hamman','jhamman@pps.net','5/9/77','Energy Program Manager','Portland Public Schools','501 N. Dixon',NULL,'Portland','Oregon','97227','503-916-3401',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-25 15:51:29','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','David','Reichman','reichmand@catlin.edu','01-05-1946','Maintenance Technician','Catlin Gabel School','8825 SW Barnes Rd',NULL,'Portland','Oregon','97225','5038201058','5032035126',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-26 15:38:48','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','James','Silk','jim.silk@gsa.gov','8/3/65','Property Manager','GSA','620 SW Main Street, Room 108',NULL,'Portland','Oregon','97205','503-326-4990','503-326-7101',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-08-26 15:46:31','Building Operator Cert. LEVEL 1 - Portland','Lizzy','Safranski','lsafranski@clarkpud.com','01-27-1983','Energy Conservation Program Manager','Clark Public Utilities','1200 Fort Vancouver Way',NULL,'Vancouver','Washington','98663','360-992-3053',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:19:46','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Brian','Weatherly','WEATHERLY_BRIAN@salkeiz.k12.or.us','1/27/63','Head Custodian','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503-399-3097','503-375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:24:40','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Marc','Collins','COLLINS_MARC@salkeiz.k12.or.us','7/9/63','Head Custodian','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:29:14','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Justin','Pierce','pierce_justin@salkeiz.k12.or.us','1/27/78','Custodian 4','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 37507847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:32:39','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Steve','Ernst','ernst_steve@salkeiz.k12.or.us','2/3/82','Custodian 4','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:35:44','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Jesus','Ochoa','ochoa_jesus@salkeiz.k12.or.us','7/3/65','Custodian 4','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:37:51','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','John','Gilbert','gilbert_john@fallscity.k12.or.us','12-07-70','Facilities Manager','Falls City School Dist. # 57','111 North Main St.',NULL,'Falls City','Oregon','97344','503-787-3521','503-787-5805',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:38:46','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Tim','Gregory','gregory_tim@salekiz.k12.or.us','8/8/61','Custodian 4','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:41:39','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Klint','Bechtel','bechtel_klint@salkeiz.k12.or.us','9/17/64','Custodian 4','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-02 14:44:09','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Sal','Ramos','ramos_sal@salkeiz.k12.or.us','5/25/61','Custodian 4','Salem Keizer Public Schools','Central Services','3630 State Street','Salem','Oregon','97301','503 399-3097','503 375-7847',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-06 09:17:17','Building Operator Cert. LEVEL 1 - Portland','Douglas','Hannan','douglas.hannan@ocdc.net','02/03/1953','Facilities Safety Tech','OCDC','PO Box 263',NULL,'Woodburn','Oregon','97071','503-570-1110',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-07 15:26:48','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Jeff','Hemelstrand','jeff.hemelstrand@ocdc.net','05/01/1967','Facilities Safety Tech','OCDC','PO Box 263',NULL,'Woodburn','Oregon','97071','503-570-1110',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-09 07:36:25','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Terry','Brock','terry.l.brock@odot.state.or.us','9/9/1960','Electrician','ODOT','3339 old hwy 99 south',NULL,'Roseburg','Oregon','97470','541-580-8533','541-957-3660',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-09 09:01:14','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Josh','Hjertstedt','jhjertst@pps.net','02/11/2011','Capital Planning Program Manager','Portland Public Schools','501 North Dixon Street','- Facilities & Asset Management','Portland ','Oregon','97227','503-867-4870','503-916-3253',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-14 17:00:46','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Stetson','James','sjames2@pps.net','02/21/1964','Supervisor','Portland Public Schools','501 N. Dixon',NULL,'Portland','Oregon','97227','5039163414',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-14 17:16:11','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Tom','Pagh Jr','tpagh@pps.net','09/25/1967','Supervisor','PPS','501 N Dixon st',NULL,'Portland','Oregon','97227','503-916-3423','503-916-3044',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-15 12:53:14','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Bryon','Booze','bbooze@pps.net','07-05-67','Fos','Portland public schools','501 N. Dixon',NULL,'Portland','Oregon','97227','503-867-4872','503-916-3044',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-15 15:29:23','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','John','Weaver','jweaver@pps.net','03/30/51','Field Operation Supervisor','Portland Public Schools','501 N. Dixon',NULL,'Portland','Oregon','97227','503 916-3104','503 916-3044',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-15 16:11:39','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Antonye','Harris','aharris2@pps.net','01/29/1961','Field Operation Supervisor','Facility','501 n. Dixon Street',NULL,'Portland','Oregon','97227','503-867-4873','503-916-3044',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-16 13:40:32','Click here to select...','Jerry','Lively','jlively@pps.net','02/23/1955','Sr. Maintenance Manager','Portland Public Schools','501 N Dixon St.',NULL,'Portland','Oregon','97227','503-593-9473','503-916-3177',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-09-26 22:45:56','2012 Energy Management Certificate (EMC)','Rajender','Beniwal','rajender.beniwal@wipro.com','09/05/2011',NULL,NULL,'3204 ravens crest drive',NULL,'Plainsboro','New Jersey','08536','7323258498',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-03 15:13:15','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','John','Meyer','john.meyer@corvallis.k12.or.us','07/08/1953','Custodial Supervisor','Corvallis School District','1555 SW 35th St.',NULL,'Corvallis','Oregon','97339','541-757-5999','541-757-5749',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-04 15:54:52','Sustainable Building Advisor Pro.','Mike','McCallum','emc2mm@yahoo.com','02/06/1961',NULL,'M design','85879 Cougar Ln',NULL,'Eugene','Oregon','97402','5419540036',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-05 11:25:47','Click here to select...','Annette','Jackson','gigimyrr@gmail.com','09/16/61','Instructor',NULL,'424 W. 23rd Ave.',NULL,'Eugene','Oregon','97405','541-344-1952',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-05 12:06:14','Oregon Commercial Energy Code Training - Nov 1','Jim','Poore','jimmie.d.poore@doc.state.or.us','10/10/1956','Senior Project Manager','Oregon Department of Corrections','1793 13th St SE',NULL,'Salem','Oregon','97302','503-932-2119',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-07 14:10:07','Oregon Commercial Energy Code Training - Nov 1','Rose','DeBono','rosedb@uoregon.edu','09/02/1953','Small Projects Coordinator','University Of Oregon','1276 University of Oregon',NULL,'Eugene','Oregon','97403','541-346-2281',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-12 13:35:23','Oregon Commercial Energy Code Training - Nov 1','Teri ','Jones','terij@uoregon.edu','1-17-1957','Energy Assistant','University of Oregon','1276 University of Oregon',NULL,'Eugene','Oregon','97403','541-346-6859',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-12 13:40:16','Oregon Commercial Energy Code Training - Nov 1','Jeff ','Madsen','jmadsen@uoregon.edu','1-20-1964','Energy Manager','University of Oregon','1276 University of Oregon',NULL,'Eugene','Oregon','97403','541-346-2256',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-12 13:45:51','Oregon Commercial Energy Code Training - Nov 1','Tom ','Shepard','toms@uoregon.edu','10/16/1969','Capital Construction Manager','University of Oregon','1276 University of Oregon',NULL,'Eugene','Oregon','97403','541-346-6959',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-13 15:12:06','Oregon Commercial Energy Code Training - Nov 1','Simon','Heth','simonh@ehomecomfort.com','08/03/1977','Plumbing Supervisor','Home Comfort Heating & Air Conditioning','PO Box 20205',NULL,'Eugene','Oregon','97402','541-345-2838','541-302-3070',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-13 15:14:01','Oregon Commercial Energy Code Training - Nov 1','Aaron','Duncan','aarond@ehomecomfort.com','4/30/1965','Commercial HVAC Sales','Home Comfort Heating & Air Conditioning','PO Box 24205',NULL,'Eugene','Oregon','97402','541-345-2838','541-302-3070',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-14 07:52:39','Oregon Commercial Energy Code Training - Nov 1','Dave','Bragg','dave@commair.biz','8/17/1957','General Mgr',NULL,'1665 Irving Rd',NULL,'Eugene','Oregon','97402','541-461-4821','541-461-6104',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-14 08:50:57','Oregon Commercial Energy Code Training - Nov 1','Beau','Pichel','bpichel@automaticheatco.com',1311956,'Commercial estimator','Automatic Heat Company','3675 franklin blvd',NULL,'Eugene','Oregon','97403','541-726-7656',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-14 10:49:22','Oregon Commercial Energy Code Training - Nov 1','Linn','West','linn@awjarchitects.com','6/17/48','Architect','Affolter West & Jones','1600 Valley River Dr ','Suite 270','Eugene','Oregon','97401','541-342-6511',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-16 21:28:41','2012 Energy Management Certificate (EMC)','Steve','Parr','parr4@rocketmail.com','08/25/1972',NULL,NULL,'18375 NW Chemeketa Lane Apt B',NULL,'Portland','Oregon','97229','503-372-9462',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-17 14:05:29','Oregon Commercial Energy Code Training - Nov 1','Shelley','Stephenson','shelley.stephenson@eweb.org','08/13/1980','Energy Management Specialist','EWEB','500 E 4th Ave',NULL,'Eugene','Oregon','97401','541-685-7314','541-685-7314',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-20 00:45:28','2012 Energy Management Certificate (EMC)','Hilary','Aben','tellaben@gmail.com','01/13/1983','Student','Texas A&M university','502 southwest pkwy','111','College Station','Texas','77840','8322291346',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-20 08:50:55','Oregon Commercial Energy Code Training - Nov 1','Mike','Koch','bjkoch49@comcast.net','9/19/71','Owner','Valley Heating','3800 Coburg Rd',NULL,'Eugene','Oregon','97408','541-485-0123',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-20 20:46:14','2012 Energy Management Certificate (EMC)','Ranjan','Verma','ranjan.verma46@gmail.com','01-07-1989',NULL,NULL,'vill.and post- Marikpur,dist- jaunpur,(up) India','vill.and post- Marikpur,dist- jaunpur,(up) India','Juanpur','Indiana','222203','+917357443466',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-21 03:40:24','2012 Energy Management Certificate (EMC)','Andrew','Mnzava','andrewmnzava@gmail.com',1979,'Engineer','Camco','p.o.box 77213 ',NULL,'Dar es Salaam','Non-US','255022','+255784659161',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-24 13:55:12','Oregon Commercial Energy Code Training - Nov 1','George','Geiger','ggeiger@harveyandprice.com','03/12/1961','Mechanical Designer','Contractor','2015 Nugget Way',NULL,'Eugene','Oregon','97403','541-746-1621','541-746-8729',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-28 10:45:11','Oregon Commercial Energy Code Training - Nov 1','Mark','Mudder','mmudder@harveyandprice.com','11/07/1958','HVAC Estimator','Harvey & Price Company','2015 Nugget Way',NULL,'Eugene','Oregon','97403','541-746-1621','541-746-8729',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-28 10:51:05','Oregon Commercial Energy Code Training - Nov 1','Leonard','Madison','lmadison@harveyandprice.com','10/06/1961','Forman','Harvey & Price Company','2015 Nugget Way',NULL,'Eugene','Oregon','97403','541-746-1621','541-746-8729',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-10-31 12:16:41','Oregon Commercial Energy Code Training - Nov 1','Gary','Heldt','heldt@4j.lane.edu','4/20/1956','Engineer','Lane County School District 4J','715 W 4th Ave',NULL,'Eugene','Oregon','97402','541.790.7400','541.790.7404',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-02 14:56:50','2012 Energy Management Certificate (EMC)','Sonja','Mae','maesunrise@gmail.com','09/13/1979','Adjunct Faculty','Lane Community College','4000 E. 30th Ave',NULL,'Eugene','Oregon','97405','541.913.8551',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-06 08:53:33','Building Operator Cert. LEVEL 1 - Portland','Iyaturemye','Aime','iyaim@yahoo.com','08/06/1979','Mr','KIST','P.O.Box 3900',NULL,'Kigali','Non-US','250','+250788605641',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-23 11:08:15','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Kord','Dickson','INFO@SERVCOINC.NET','07/10/1964','PLUMBING SALES MGR','LEBANON SERVCO INC','1200 E GRANT ST.',NULL,'Lebanon','Oregon','97355','541-451-5090','541-451-3603',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-23 13:49:46','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Todd','Shelton','todd@cjhansen.com','4/8/1966','Estimator / Project Management','CJ Hansen Co.','3552 Silverton Rd',NULL,'Salem','Oregon','97305','503-362-3643','503-566-3487',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-24 09:57:31','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Stan ','Boucher','stan@chss.us','11/07/1968','President','CHS Services, Inc.','PO Box 7272',NULL,'Salem ','Oregon','97303','503-581-6999','503-540-8691',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-24 10:01:11','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Peter','Reddekopp','stan@chss.us','09/05/1985','Technician','CHS Services, Inc.','PO Box 7272',NULL,'Salem','Oregon','97303','503-581-6999','503-540-8691',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-28 10:59:09','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Matt','Battjes','matt@solutions21st.com','08.06.79','Solar Energy Project Manager','Sustainable Solutions Unlimited','1339 SE 8th ',NULL,'Portland','Oregon','97214','5032272047',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-11-29 08:30:31','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Greg','Robben','robbenrent@robbeninc.com','09/06/1963','OWNER','ROBBEN HEATING & A/C','3244 NE HIGHWAY 101',NULL,'Lincoln City','Oregon','97367','541-994-5530','541-994-7230',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-07 11:21:24','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Steve','Carpentier','Steve@energyunlimitedllc.com','02/08/1975',NULL,'Energy unlimited LLC','38888 pioneer blvd',NULL,'Sandy','Oregon','97055','503-333-8050',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-07 13:18:13','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Leo','Borton','office@meticulousplumbing.com','06/25/1965','Owner','Meticulous Plumbing','12518 NE Airport Way','Suite 148','Portland','Oregon','97230','503-208-2812',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-08 15:18:51','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Jack','Hansen','jackhansen@bullmountainmech.com','5/3/47','Owner','Bull Mountain Htg. A/C & Insulation','6520 SW Rosewood ST',NULL,'Lake Oswego','Oregon','97035','503-612-6677',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-12 09:37:26','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Christine','Grube','goodenergyretrofit@gmail.com','05-25-1964','Owner','Good Energy Retrofit','1132 SW 57th Ave',NULL,'Portland','Oregon','97221','503-318-1323',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-12 09:44:30','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Colby','Keppinger','cgk85@hotmail.com','08-27-1985','Owner','Pintsize Plumbing','485 Oregon Ave NE',NULL,'Salem','Oregon','97301','503-302-2932',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 13:00:25','Renewable Energy Feasibility Workshop - April 19-20, 2012','Eric','Grape','egrape@uoregon.edu','12-09-1961',NULL,NULL,'1276 University of Oregon',NULL,'Eugene','Oregon','97403','5413462378',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-14 09:24:44','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Curt','Cheever ','ccheever@hswcorp.com','04/21/54','Branch Manager ','Roto-Rooter ','28655 SW Boones Ferry Rd ',NULL,'Wilsonville ','Oregon','97070','503-682-9774','503-685-9754',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-14 12:46:06','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Brad ','Buckmaster','brad@buckmasterpro.com','9/1/63','President','Buckmaster Pro Plmg. & Htg.','Po Box 1029',NULL,'Lebanon','Oregon','97355','541-451-5900','541-451-1638',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-15 08:30:57','Building Operator Cert. LEVEL 2 - Portland','Jerry','Deem','jdeem@nbsrealtors.com','7/10/64','Building Enginerr','Norris Beggs & Simpson','One Centerpointe','One Centerpointe drive','Lake Oswego','Oregon','97035','503-684-6000','503-624-0636',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-16 12:28:27','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Keith','Jensen','Redfishllc@gmail.com','5/29/56','Owner','Redfish Contractors LLC','PO Box 13176',NULL,'Portland','Oregon','97213','5033072353',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-16 13:43:05','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Greg','Coleman','greg@solcoast.com','11-26-69','Project Manager','Sol Coast Consulting & Design','299 S Bayshore Dr',NULL,'Coos Bay','Oregon','97420','541-217-1719','541-269-2097',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-19 11:39:44','Renewable Energy Feasibility Workshop - April 19-20, 2012','Jacquelyn','Pliler','jacque.d.pliler@gmail.com','04/26/1962','CSBA/Energy Manager/Owner','NW Sustainable Green Consulting','255 NW Island Circle A2',NULL,'Beaverton','Oregon','97006','(503)734-4450',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-19 12:27:14','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Jonathan','Grant','Jonathan@bullmountainmech.com','10/23/79','Service Manager','Bull Mountain Htg. A/C & Insulation','6520 SW Rosewood ST',NULL,'Lake Oswego','Oregon','972035','503-612-6677','503-692-3084',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-19 14:03:45','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Bradley','Gunn','Brad@SimplySustainable.net','00/11/22','Principal','Simply Sustainable, LLC','7826 SE 19TH AVE',NULL,'Portland','Oregon','97202','9712551302',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-20 11:08:50','2012 Energy Management Certificate (EMC)','Bonita','Steers','lynde0823@live.com','08/23/1950',NULL,NULL,'4668 Hubbard Creek Rd',NULL,'Umpqua','Oregon','97486','541-459-7726',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-20 13:28:48','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Dale','Bowder','Dale.E.Bowder@orst.edu','10-29-1950','P.E.',NULL,'PO Box 446',NULL,'Albany','Oregon','97321','541-619-3409',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-21 11:16:22','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Juan ','Serpa Munoz','juan.serpamunoz@eweb.org','05-19-76','Energy Specialist I','EWEB','500 E 4th Ave',NULL,'Eugene ','Oregon','97401','541-685-7445','541-685-7303',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-22 10:30:11','Click here to select...','Robert','Brierley','Robert@revivalenergygrou.com',7021982,'Owner','Revival Energy Group','6014 Lincoln Ave',NULL,'Vancouver','Washington','98663','360-907-6279','360-719-7860',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-22 14:28:44','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Andrew','Scheidt','andrew@centralairpdx.com','01/26/1972','Owner','Central Air, Inc.','po box 433',NULL,'Clackamas','Oregon','97015','503-656-1908','503-650-33898',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-24 21:30:00','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Steve','Mayes','stai_71563@hotmail.com','11/26/55',NULL,NULL,'320 Main St',NULL,'Fairview','Oregon','97024','19715703526',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-27 10:37:39','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Kelly','Sumetz','kellysum@co.clackamas.or.us','04/01/1977','Green Building Specialist','Clackamas County','150 Beavercreek Rd.',NULL,'Oregon City','Oregon','97045','503-742-4460',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-27 15:37:35','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Jesse','Zamudio','info@plumbing-concepts.com','09-19-1960','Journeyman plumber','energy trust','16969 S.E. 232nd Dr.',NULL,'Damascus','Oregon','97089','503-317-0864',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-27 16:10:28','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Eric','Andrews','eric@ecosolarnow.com','10/29/1970','Business Owner','Eco Solar, Inc.','PO Box 5194',NULL,'Klamath Falls','Oregon','97601','5412733200','5418824309',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-27 16:12:43','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Coty','Gottlieb','coty@ecosolarnow.com','10/1/87','Project Manager','Eco Solar, Inc.','PO Box 5194',NULL,'Klamath Falls','Oregon','97601','5412733200','541-882-4309',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-27 16:14:24','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Zaidi','Langworthy','zaidi@ecosolarnow.com','6/10/67','Project Manager','Eco Solar, Inc.','PO Box 5194',NULL,'Klamath Falls','Oregon','97601','5412733200','541-882-4309',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-29 13:33:34','Renewable Energy Feasibility Workshop - April 19-20, 2012','Alex','Inman','ainman@intelepoint.com','11/14/1968','Energy Specialist','Intelepoint','4127 NE 11th ave.',NULL,'Portland','Oregon','97211','503-754-8665',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-30 21:32:27','Building Operator Cert. LEVEL 2 - Portland','Derrick','Elkins','Delkins@lhs.org','03/21/1971','Facilities Supervisor ','Legacy Health','6381SE Cavalier Way',NULL,'Milwaukie','Oregon','97267','503-786-2834',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2011-12-31 06:59:07','Solar Water Heating Tech Training - Jan 10th-13th (Fairview, OR)','Mike','Davis','mikedavis555@charter.net','6/14/1959','President','SOS Plumbing Inc','206 S Pacific Hwy',NULL,'Talent','Oregon','97540','541 535 5063','541 535 3964',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-05 07:11:08','Building Operator Cert. LEVEL 1 - Portland (OSFMA)','Christine','Drane','christinedrane@hotmail.com','12/13/1970','Management Executive','Globe inc','45 trinity avenue sw','atlanta','Atlanta','Georgia','30303','678-845-8246','800-757-6029',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-05 10:49:46','2012 Energy Management Certificate (EMC)','Yonas ','Hagos','yonnasgk@gmail.com','20/04/1986','Engineer','Arbaminch University','Arbaminch University',NULL,'Arbaminch','Non-US','21','+251911463654',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-08 10:11:36','2012 Energy Management Certificate (EMC)','Matthew','Wise','mattwise1@me.com','7/27/1976',NULL,NULL,' 2222 Willamette St., Apt. 22',NULL,'Eugene','Oregon','97405','210-452-6842',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 10:31:06','Renewable Energy Feasibility Workshop - April 19-20, 2012','Bill','Fashing','bill.fashing@mccog.com','05-27-1961','Community Development Dir','Mid-Columbia Council of Govt','1113 Kelly Ave',NULL,'The Dalles','Oregon','97058','541-298-4101','541-298-2084',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 10:44:22','Renewable Energy Feasibility Workshop - April 19-20, 2012','Sarah','Mazze','sarah@trig-cli.org','12/3/77','Program Manager','The Resource Innovation Group','540 Oak St.','Suite E.','Eugene','Oregon','97404','541 654 4052',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 12:12:22','Renewable Energy Feasibility Workshop - April 19-20, 2012','Brad','Hunter','bhunter@craft3.org','03/20/1973','Business Lender','Craft3','1000 SW Broadway','Suite 1000','Portland','Oregon','97205','503 688 1715',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 12:36:20','Renewable Energy Feasibility Workshop - April 19-20, 2012','Robert','Wallace','robert@wyeast-rcd.org','10/31/74','Executive Director/Energy Efficiency Analyst','Wy','2325 River Rd','Suite #2','The Dalles','Oregon','97058','541-815-5503',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 12:48:26','Renewable Energy Feasibility Workshop - April 19-20, 2012','Jeff','Rola','jprola51@aol.com','07/26/1953','Director','Deschutes Soil ','64682 Cook Ave., Suite 71',NULL,'Bend','Oregon','97701','5414106707',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 13:08:18','Renewable Energy Feasibility Workshop - April 19-20, 2012','Matthew','King','matt@wallowaresources.org','12/17/1984','Renewable Energy Program Coordinator','Wallowa Resources','401 NE 1st suite A',NULL,'Enterprise','Oregon','97828','5414264100',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 13:45:34','Renewable Energy Feasibility Workshop - April 19-20, 2012','Amanda','Green','energy@cascadepacific.org','6/6/80','Energy Field Analyst','Cascade Pacific RCD','33630 McFarland Rd',NULL,'Tangent','Oregon','97389','541-231-8918',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 13:47:05','Renewable Energy Feasibility Workshop - April 19-20, 2012','Keli','Kuykendall','keli@cascadepacific.org','4/21/61','Executive Director','Cascade Pacific RCD','33630 McFarland Rd',NULL,'Tangent','Oregon','97389','541-231-7486',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 22:14:40','Renewable Energy Feasibility Workshop - April 19-20, 2012','Chad','Davis','cdavis@sustainablenorthwest.org','9/6/76','Program Director','Sustainable Northwest','813 SW Alder Ave','Suite 500','Portland','Oregon','97205','503-221-6911',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-17 22:39:18','Renewable Energy Feasibility Workshop - April 19-20, 2012','Pat','Downing','nolimits@frontiernet.net','3/17/50','Executive Director','Rusk Ranch Nature Center','POB 646',NULL,'O''Brien','Oregon','97534','541-596-2543',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-18 10:00:15','Renewable Energy Feasibility Workshop - April 19-20, 2012','Bob ','Rogers','robert.rogers@oit.edu','11/02/48','Renewable Energy Engineer','Lake County resources','93659 Dairy Creek Lane',NULL,'Lakeview ','Oregon','97630','541-947-5461',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-19 08:41:55','Renewable Energy Feasibility Workshop - April 19-20, 2012','Tracy','Bailey','tracyb@ctsi.nsn.us','09/20/1958','Community Developer','Confederated Tribes of Siletz Indians','PO Box 549',NULL,'Siletz','Oregon','97380','541-444-8278',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-19 09:22:23','Renewable Energy Feasibility Workshop - April 19-20, 2012','Marcus','Kauffman','mkauffman@odf.state.or.us','3/16/68','Biomass Resource Specialist','Oregon Dept. of Forestry','1758 NE Airport Rd.',NULL,'Roseburg','Oregon','97470','541-440-3412',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-19 18:55:28','Renewable Energy Feasibility Workshop - April 19-20, 2012','Patricia','Gouveia','pgouveia@orcca.us','02/02/1953','Essential Services Director','Oregon Coast Community Action','2110 Newmark Ave',NULL,'Coos Bay','Oregon','97420','541-435-1700','541-435-7050',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-20 08:40:00','Renewable Energy Feasibility Workshop - April 19-20, 2012','Dan','Moore','dmoore@rvcog.org','12/18/1951','Planning Coordinator','Rogue Valley Council of Governments','P.O. Box 3275',NULL,'Central Point','Oregon','97502','541-423-1361',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-20 09:44:42','Renewable Energy Feasibility Workshop - April 19-20, 2012','Greg','Coleman','greg@solcoast.com','11-26-69','Project Manager','Sol coast Consulting & Design','299 S Bayshore Dr',NULL,'Coos Bay','Oregon','97420','541-217-1719',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-20 10:40:14','Renewable Energy Feasibility Workshop - April 19-20, 2012','Ed','Wales','edgar.wales@energytrust.org','02/27/1950','Government Sector Account Manager','Energy Trust of Oregon','421 SW Oak',NULL,'Portland','Oregon','97204','503-445-2954',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-20 22:43:42','Renewable Energy Feasibility Workshop - April 19-20, 2012','Diane','Henkels','dhenkels@actionnet.net','11-11-64','Attorney','Diane Henkels, Attorney','6228 SW Hood Ave','& Newport, OR ','Portland','Oregon','97239','541-270-6001',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-21 12:48:26','Renewable Energy Feasibility Workshop - April 19-20, 2012','Paul','Cook','paulburtoncook@gmail.com',8221985,'Renewable Energy Technology Student','Columbia Gorge Community College','1207 15th Street',NULL,'Hood River','Oregon','97031','541-806-4487',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-21 15:19:33','Renewable Energy Feasibility Workshop - April 19-20, 2012','Fred','Vosper','Fred.Vosper@gmail.com','11/25/1963','Council Member','Wy''East RC&D','3305 Columbia View Dr.',NULL,'The Dalles','Select...','97058','503-949-0225',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-23 09:42:57','Renewable Energy Feasibility Workshop - April 19-20, 2012','Tony','Kauffman','info@driftcreek.org','10/07/1969','Director','Drift Creek Camp','PO Box 1110',NULL,'Lincoln City','Oregon','97367','541-992-2556','none',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-23 09:45:51','2012 Energy Management Certificate (EMC)','Gerald Esambe','Njume','esames2003@yahoo.co.uk','15/03/1984',NULL,NULL,'Munkhagsgatan 160',NULL,'Linkoping','Non-US','58725','0046704816178',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-23 16:40:06','Building Operator Cert. LEVEL 1 - Portland','Jake','Gora','jgunderthesun@gmail.com','9/28/1980','HVAC Specialist','Reed College','3203 SE Woodstock Blvd.',NULL,'Portland','Oregon','97206','503-764-6914',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-01-26 15:13:07','Renewable Energy Feasibility Workshop - April 19-20, 2012','Emily','Ackland','eackland@aocweb.org','06/08/1977','Environmental Policy Manager','Assoc of Oregon Counties','1201 Court St NE','Suite 130','Salem','Select...','97301','503 585 8351',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-01 14:26:21','Renewable Energy Feasibility Workshop - April 19-20, 2012','Jennifer','Gleason','jen@elaw.org','11-19-1965','Staff Attorney','Environmental Law Alliance Worldwide (ELAW) and Adjunct Instructor at UO Law','1877 Garden Ave.',NULL,'Eugene','Oregon','97403','541-687-8454',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-01 16:23:44','Renewable Energy Feasibility Workshop - April 19-20, 2012','Brad','Emerson','bemerson@ci.bend.or.us','08-09-53','Special Projects Manager','City of Bend','710 NW Wall Street',NULL,'Bend','Oregon','97701','541-317-3054','541-385-6676',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-03 10:03:20','Renewable Energy Feasibility Workshop - April 19-20, 2012','Russell','Williams','ruwilliams@co.linn.or.us','04.15.1962','Director','Linn County','330 s.w. 3rd street',NULL,'Albany','Oregon','97321','541-967-3880',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-03 10:20:57','Renewable Energy Feasibility Workshop - April 19-20, 2012','Alex','Ridley','aridley@co.linn.or.us','09/20/1988','Operations Engineer','Linn County, Oregon','330 SW Third Avenue',NULL,'Albany','Oregon','97321','5419673880',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-06 14:38:49','Building Operator Cert. LEVEL 1 - NE Oregon','Kate ','Linder','linderk@umatillasd.org','08/10/54','Maintenance ','Umatilla School District #6R','1001 6th Street',NULL,'Umatilla','Oregon','97882','541-571-4356',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-07 08:53:47','Building Operator Cert. LEVEL 1 - NE Oregon','Will','Mills','will.mills@lagrande.k12.or.us','01/08/1955','Facilities Maintenance II','La Grande School District','1305 North Willow Street',NULL,'La Grande','Oregon','97850','541.786.0597','541.663.3224',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-07 10:16:53','Building Operator Cert. LEVEL 1 - NE Oregon','Craig','Beers','craig.beers@pilotrock.k12.or.us','4/11/53','Head Custodian','Pilot Rock School District','PO Box A',NULL,'Pilot Rock ','Oregon','97868','541-443-2361','541-443-3550',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-07 10:19:04','Building Operator Cert. LEVEL 1 - NE Oregon','Tom','Humphreys','tom.humphreys@pilotrock.k12.or.us','7/21/52','Head Custodian','Pilot Rock School District','PO Box BB',NULL,'Pilot Rock','Oregon','97868','541-443-8291','541-443-8000',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-07 12:02:48','Building Operator Cert. LEVEL 1 - Portland','Lizzy','Safranski','lsafranskI@clarkpud.com',1271983,'Commercial Program Manager','Clark Public Utilities','1200 Fort Vancouver Way',NULL,'Vancouver','Washington','98668','360-992-3053',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-09 10:21:16','Renewable Energy Feasibility Workshop - April 19-20, 2012','Nathan','Ulrich','nate-mars@gorge.net','5/20/77','Forest Business Program Manager','Mt. Adams Resource Stewards','PO Box 152',NULL,'Glenwood','Washington','98619','509-364-3600',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-09 14:51:02','Building Operator Cert. LEVEL 1 - NE Oregon','Don','Barney','don.barney@crookcounty.k12.or.us','10-07-1965','Lead Groundskeeper','Crook County School District','797 NE First St.',NULL,'Prineville','Oregon','97754','541-447-4419','541-416-8889',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-13 10:55:05','Building Operator Cert. LEVEL 1 - NE Oregon','Greg','Russell','Russellfarm@hotmail.com','07-12-1966','Plant Services Journeyman ','Walla Walla General Hospital','84576 Eastside Rd.',NULL,'Milton-Freewater','Oregon','97862','541-938-4133',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-14 15:30:53','2012 Summer Energy Educator Series (SEES)','Jake','Hildebrant','jake.hildebrant@kctcs.edu','11/23/1975','Assistant Professor','Madisonville Community College','2000 College Drive',NULL,'Madisonville','Kentucky','42431','(270) 824-1991',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-14 17:48:57','2012 Summer Energy Educator Series (SEES)','Ricky','Hall','rhall0012@kctcs.edu','10-19-1959','Instructor','KCTCS/JCTC','1000 Community College Drive',NULL,'Louisville','Kentucky','40272','502-296-2188',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-24 12:19:20','Renewable Energy Feasibility Workshop - April 19-20, 2012','Yorick','de Tassigny','yorick.detassigny@ontariooregon.org','10/26/1973','Facilities Manager','City of Ontario','444 SW 4th Street',NULL,'Ontario','Oregon','97914','541-889-4814',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-27 10:03:01','Renewable Energy Feasibility Workshop - April 19-20, 2012','Susan','Ross','deborah.cook@deschutes.org','12/17/1963','Director, Prop and Fac Dept','Deschutes County','Property & Facilities Dept','14 NW Kearney Avenue','Bend','Oregon','97701','541-383-6713','541-317-3168',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-28 09:04:36','Renewable Energy Feasibility Workshop - April 19-20, 2012','Rebecca','Hillwig','hillwig.rebecca@deq.state.or.us','5/3/1957','Small Business Assistance Program Coordinator','Dept of Environmental Quality','811 SW Sixth Ave',NULL,'Portland','Oregon','97204','503-229-5376','503-229-5675',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-28 16:34:10','Renewable Energy Feasibility Workshop - April 19-20, 2012','Carrie','Capp','capp.carrie@deq.state.or.us','4/1/1979','Air Quality Planner','Oregon Dept. of Environmental Quality','811 SW 6th Ave. ',NULL,'Portland','Oregon','97204','503-229-5868',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-02-29 07:58:46','Renewable Energy Feasibility Workshop - April 19-20, 2012','Peter','Gutowsky','peterg@co.deschutes.or.us','11-23-68','Principal Planner','Deschutes County','Community Development Department','117 NW Lafayette Street','Bend','Oregon','97701','541-3308612',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-01 08:06:35','Building Operator Cert. LEVEL 1 - NE Oregon','Wes','Dunbar','wes.dunbar@union.k12.or.us','05-04-1952','Maintenance Employee','Union School District','166 Dearborn',NULL,'Union','Oregon','97883','541-562-5278','541-562-9028',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-05 08:35:27','Renewable Energy Feasibility Workshop - April 19-20, 2012','Sam','Goldstein','sam.goldstein@or.usda.gov',7041964,'Community Programs Director','USDA Rural Development','1201 NE Lloyd Blvd, Suite 801',NULL,'Portland','Oregon','97232','5034143362','5034143383',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-06 09:29:49','Building Operator Cert. LEVEL 1 - NE Oregon','Dave','Kosey','dave.kosey@pendleton.k12.or.us','02/06/1953','Inside Maintenance','Pendleton SD','1207 SW Frazer Ave.',NULL,'Pendleton','Oregon','97801','541-379-6360',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-07 11:07:58','2012 Summer Energy Educator Series (SEES)','Robert','Clark','rclark@jjc.edu','12/24/76','Instructor','Joliet Junior College','717 Moen Ave',NULL,'Rockdale','Illinois','60436','815-791-3390',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-08 14:05:03','Building Operator Cert. LEVEL 1 - Portland','Eric','Patton','epatton@fvrl.org','7-15-1971','Facilities Assistant','Fort Vancouver Regional Library District','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','360-695-1561',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-09 10:47:45','Building Operator Cert. LEVEL 1 - Medford','Troy','Boyd','boydt@eaglepnt.k12.or.us','03/23/62','Maintenance II','Jackson County School District 9','P.O. Box 548',NULL,'Eagle Point','Oregon','97524','541 830-1240','541 830-6375',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-09 15:43:14','Building Operator Cert. LEVEL 1 - NE Oregon','Bob','Bennett','bbennett@ontario.k12.or.us','11/13/62','Maintenance Supervisor','Ontario School District','195 SW 3rd Ave',NULL,'Ontario','Oregon','97914','541-235-4006','541-889-8553',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-12 14:35:26','Renewable Energy Feasibility Workshop - April 19-20, 2012','Chuck','Thurman','cthurman@ci.monmouth.or.us','01/14/1957','Superintendent','City of Monmouth Power & Light','401 Hogan Rd',NULL,'Monmouth','Oregon','97361','503-838-3526',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-13 08:07:29','Building Operator Cert. LEVEL 1 - Medford','Steve','Lambert','lamberts@eaglepnt.k12.or.us','7/26/58','Maintenance II','Jackson County School District 9','P.O. Box 548',NULL,'Eagle Point','Oregon','97524','541 830-6376','541 830-6375',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-14 15:01:18','Renewable Energy Feasibility Workshop - April 19-20, 2012','John','Milandin','johnjanet_milandin@msn.com','10/08/30','Member','Oakridge Economic Development Advisory Committee ','76750 High Prairie Rd',NULL,'Oakridge','Oregon','97463','541 782 2815',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-16 09:04:38','Renewable Energy Feasibility Workshop - April 19-20, 2012','Linc','Cannon','linc@ofic.com','10/28/1951','Director, Froest Resources','OFIC','1149 Court St',NULL,'Salem','Oregon','97302','(503) 586-1245',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-16 11:00:11','Building Operator Cert. LEVEL 1 - Portland','Maria D','Ortiz','maria.ortiz9@pcc.edu','03-01-1964','Custodial','Facilities Management Services','2885 sw 170th ave apt f ','n/a','Beaverton','Oregon','97006','503-992-6351','n/a',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-16 12:47:55','Building Operator Cert. LEVEL 1 - Portland','Truong','Vu','truongdinhvu@hotmail.com','04/04/1957',NULL,'PCC','17516 NW Springville rd #B13',NULL,'Portland','Oregon','97229','(503)690-8049',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-16 23:12:56','Renewable Energy Feasibility Workshop - April 19-20, 2012','Thomas','Beber','tbeb14@yahoo.com','02/14/87','Eugene alternative energy',NULL,'1312 hammock st.',NULL,'Eugene ','Oregon','97401','541-687-2533',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-19 07:39:53','Renewable Energy Feasibility Workshop - April 19-20, 2012','Craig','Volz','craig.d.volz.ctr@us.army.mil','12-23-1956','Resource Efficiency Manager','Oregon Military Department','1776 Militia Way SE',NULL,'Salem','Oregon','97302','503-584-3864','503-584-3584',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-19 08:24:00','Building Operator Cert. LEVEL 1 - Portland','Amy','Foster','amy_foster@hms.harvard.edu','11/18/67',NULL,'Harvard Medical School, NEPRC','1 Pine Hill Drive',NULL,'Southborough','Massachusetts','01752','508-624-8055',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-19 10:32:06','Building Operator Cert. LEVEL 1 - Portland','Jose','Solis','SOLISJ@OHSU.EDU','2/15/52','MAINTENANCE FACILITIES ASSISTANT','OHSU','3181 SW SAN JACKSON PARK RD','N/A','Portland','Oregon','97239','503-418-4419','N/A',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-20 11:53:12','Renewable Energy Feasibility Workshop - April 19-20, 2012','Elizabeth','McNannay','elizabeth@resourceconsultants.org','5/29/1983','President','Resource Consultants, Inc','PO Box 212',NULL,'Williams','Oregon','97544','541-890-5575',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-20 19:26:42','Renewable Energy Feasibility Workshop - April 19-20, 2012','John','Bacchetti','john.bacchetti@oit.edu','5/23/1964','ENERGY SPECIALIST','OREGON INSTITUTE OF TECHNOLOGY','809 WEST OREGON AVE',NULL,'Klamath Falls','Oregon','97601','541-281-2027',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-22 09:14:48','Building Operator Cert. LEVEL 1 - NE Oregon','Jess','Nowland','jess.nowland@tamastslikt.org','9/16/1980','Assitant Facility Manager','Tamastslikt/CTUIR','47106 Wildhorse Boulevard',NULL,'Pendleton','Oregon','97801','5414297722','5414297722',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-22 16:34:46','Building Operator Cert. LEVEL 1 - NE Oregon','Michael','Cooper','mike.cooper@tamastslikt.org','7/12/56','Facilities Manager','CTUIR - Tamastslikt','47106 Wildhorse Blvd.',NULL,'Pendleton','Oregon','97801','541.429.7710','541.966-9927',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-24 23:53:48','Sustainable Building Advisor Pro.','Bill','Eitenmiller','bill.eitenmiller@gmail.com','08/28/1985',NULL,NULL,'1280 Bailey Ave',NULL,'Eugene','Oregon','97402','541-222-9906',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-26 08:00:17','Building Operator Cert. LEVEL 1 - Portland','Jeff','Elsasser','jelsasse@mesd.k12.or.us','9-25-1959','Custodian II','Multnomah ESD','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','503-257-1514','503-257-1519',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-26 08:00:56','Building Operator Cert. LEVEL 1 - Portland','Todd','Burgess','tburgess@mesd.k12.or.us','9/18/1959','Custodian II/Driver','Multnomah ESD','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','503-257-1624','503-257-1519',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-27 08:56:54','Building Operator Cert. LEVEL 1 - Portland','Jose','Solis','solisj@ohsu.edu','2-15-1952','Facilities Technician Assistant','OHSU','3181 SW Sam Jackson Park Rd.',NULL,'Portland','Oregon','97140','503 494 8155',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-03-29 05:11:51','2012 Energy Management Certificate (EMC)','Shahin','Azad','bidyut134@gmail.com','29/08/1985','Mr.','University of Dhaka','D-3, Dom Inno Reviera','118, Kazi office Lane','Maghbazar, Dhaka','Select...','1217','+88 0191700035',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-02 13:01:01','Building Operator Cert. LEVEL 1 - Portland','William','Glenn','billystarfish71@gmail.com','6/8/71','Apprentice Engineer','Kaiser Permanente','11835 SE Yamhill',NULL,'Portland','Oregon','97216','503-954-7467','503-571-8587',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-03 15:17:12','Building Operator Cert. LEVEL 1 - Medford','Joe','Pahl','dpo@lakehealthdistrict.org','04/30/1982',NULL,'Lake Health District','PO Box 884',NULL,'Lakeview','Oregon','97630','541-709-1671',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-04 16:46:02','Building Operator Cert. LEVEL 1 - Portland','Rod','Maynard','maynard@gresham.k12.or.us','12/30/55','Maintenance Tech','Gresham-Barlow School District','2020 SE Fleming Ave',NULL,'Gresham','Oregon','97080','5032584711','5036674687',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-06 09:36:10','Renewable Energy Feasibility Workshop - April 19-20, 2012','Mike ','Carpenter','mikecgroup@comcast.net','2-28-1952','Mr','Energy Recovery Group, LLC','P O Box 21420',NULL,'Salem','Oregon','97307','9712399692','8663963683',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-06 10:52:52','Building Operator Cert. LEVEL 1 - Portland','David','Burdick','d.burdick@greenlodgingpartners.com','10/5/1958','Owner','Green Lodging Partners','4917 SE Aldercrest Rd',NULL,'Portland','Oregon','97222','503 654 2070',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-10 14:46:56','Building Operator Cert. LEVEL 1 - Portland','Bryan','Knopf','bknopf@shorenstein.com','4/19/58','Asst:chief engineer',NULL,'10220 sw greenburg rd, suite 310',NULL,'Portland','Oregon','97223','503-519-7381','503-619-3110',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-11 09:28:37','Renewable Energy Feasibility Workshop - April 19-20, 2012','Terry','Mock','TMock@SLDI.org','7-19-50','Trustee','Ocean Mountain Ranch','PO Box 529',NULL,'Port Orford','Oregon','97465','541-373-0090',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-12 08:42:00','Building Operator Cert. LEVEL 1 - Portland','William','Glenn','billystarfish71@gmail.com','6/8/71','Apprentice Engineer','Kaiser Permanente','11835 SE Yamhill',NULL,'Portland','Oregon','97216','503-954-7467','503-571-8587',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-12 13:38:50','Building Operator Cert. LEVEL 1 - Portland','Gary','Crapser','crapser4@gresham.k12.or.us','04/15/76','Custodian','Gresham Barlow School District','21030 se Main dr',NULL,'Gresham','Oregon','97030','503-310-5330','503-661-4989',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:28:19','Building Operator Cert. LEVEL 1 - Portland','Oscar','Aguila','oscar.aguila@pcc.edu','07/29/56','Associate Custodial Manager','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8491 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:29:48','Building Operator Cert. LEVEL 1 - Portland','Cole','Blasdell','cole.blasdell@pcc.edu','03/24/89','Custodian','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-7412 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:31:05','Building Operator Cert. LEVEL 1 - Portland','Ana ','Castillo','ana.castillo@pcc.edu','10/10/63','Custodian','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-7301 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:32:59','Building Operator Cert. LEVEL 1 - Portland','Tony','DeRoest','tony.deroest@pcc.edu','5/18/56','FOMS -III','PCC -FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8337 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:34:31','Building Operator Cert. LEVEL 1 - Portland','Sharon','Dewitt','sharon.dewitt15@pcc.edu','12/19/53','Groundskeeper II','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-5119',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:35:47','Building Operator Cert. LEVEL 1 - Portland','Jeff','Glowacki',' jeffrey.glowacki@pcc.edu','2/21/66','Custodian','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-4328',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:37:19','Building Operator Cert. LEVEL 1 - Portland','Ammon','Knight','ammon.knight@pcc.edu','11/28/67','Custodian','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8486',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:38:35','Building Operator Cert. LEVEL 1 - Portland','Sara ','Lampert','sara.lampert@pcc.edu','3/8/76','Lead Custodian','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-4328 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:40:01','Building Operator Cert. LEVEL 1 - Portland','Russel','Lampton','russell.lampton@pcc.edu','1/28/64','Groundskeeper II','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8486',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:41:39','Building Operator Cert. LEVEL 1 - Portland','Travis','Magee','travis.magee@pcc.edu','9/12/84','FOMS I','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-7412',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:43:17','Building Operator Cert. LEVEL 1 - Portland','Karen','Maxwell','karen.maxwell1@pcc.edu','3/6/81','Associate Custodial Manager','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-7412 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:45:02','Building Operator Cert. LEVEL 1 - Portland','Steve','Morse','steven.morse@pcc.edu','12/25/58','AutoCad/Bim Administrator','PCC - FMS','12000 SW 49th ave',NULL,'Portland','Oregon','97219','971-722-8306 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:46:19','Building Operator Cert. LEVEL 1 - Portland','Mike','Nelson','michael.nelson@pcc.edu','1/27/58','FOMS I','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-4328 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:48:27','Building Operator Cert. LEVEL 1 - Portland','Ryan','Parker','ryan.parker5@pcc.edu','4/9/83','Office Assistant II - SRC','PCC -FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-4800',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:49:39','Building Operator Cert. LEVEL 1 - Portland','Hank','Scarborough','henry.scarborough@pcc.edu','11/15/58','FOMS II','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-4328 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:50:55','Building Operator Cert. LEVEL 1 - Portland','Troung','Vu','truong.vu@pcc.edu','4/4/57','Custodian','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-7301 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 12:51:51','Building Operator Cert. LEVEL 1 - Portland','Bill','Welty','william.welty@pcc.edu','2/10/70','FOMS III','PCC - FMS','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8219 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 13:33:36','Building Operator Cert. LEVEL 1 - Portland','Colleen','Peterson','cpeterson@clarkpud.com','04/27/1981','Key Accounts Manager','Clark Public Utilities','320 NW 194th Street',NULL,'Ridgefield','Washington','98642','360-521-0679',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-16 13:46:22','Renewable Energy Feasibility Workshop - April 19-20, 2012','Phil','Stenbeck','phil.stenbeck@co.crook.or.us','6/1/62','Assistant Planning Director','Crook County Planning Department','300 NE Third Street Rm. 11',NULL,'Prineville','Oregon','97754','(541) 447-8156',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-17 06:15:20','2012 Summer Energy Educator Series (SEES)','Popoola','Olawale ','popoolao@tut.ac.za','18-07-1966','Mr','Tshwane University of Technology','24, Bushbuck Lane','Monument park','Pretoria','Non-US','0181','+27763195080','+27123825195',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-23 14:06:03','2012 Summer Energy Educator Series (SEES)','William','Clark','bclark@rose.edu','6/26/1950','Environmental Coordinator','Rose State College','6420 SE 15th Street',NULL,'Midwest City','Oklahoma','73110','(405) 733-7488',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-04-23 14:11:21','2012 Summer Energy Educator Series (SEES)','Stan','Greil','sgreil@rose.edu','9/2/1953','VP Workforce Development','Rose State College','6420 SE 15th Street',NULL,'Midwest City','Oklahoma','73110','(405) 733-7488',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-01 21:32:12','2012 Summer Energy Educator Series (SEES)','Shih Wen','Young','YoungSM@arc.losrios.edu','02/13/1966','Professor','American River College','4700 College Oak Dr.',NULL,'Sacramento','California','95841','916-484-8343',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-14 12:29:25','2012 Energy Management Certificate (EMC)','Chris','Jones','chris.jones@eweb.org','05/29/73','Associate Engineer','Eugene Water & Electric Board','500 E. 4th Ave',NULL,'Eugene','Oregon','97401','541-685-7549','541-685-7549',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-14 13:44:11','2012 Energy Management Certificate (EMC)','Arthur','Lee','iaqauditor@yahoo.com','07/03/1957',NULL,NULL,'236 S 3rd St. #342',NULL,'Montrose','Colorado','81401','970 209-2462',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-14 22:48:41','2012 Energy Management Certificate (EMC)','Salma','Abdelhamid','192asawer@gmail.com','10/09/1976','Mrs.','Asawer Oil& Gas Co.Ltd;
','Sudan','Afroca Street','Khartoum','Non-US','111111','00249912802440',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-18 01:47:59','2012 Energy Management Certificate (EMC)','Alexandra','Zakharova','al_ekca@mail.ru','10/21/1989','Ms','South Ural State University','76, Lenin avenue',NULL,'Chelyabinsk','Non-US','454080','+7-351-267-9135','+7-351-267-9135',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-18 01:53:49','2012 Energy Management Certificate (EMC)','Tatiana','Barbasova','barbasow@mail.ru','02/05/1978','Mrs.','South Ural State University','76, Lenin avenue',NULL,'Chelyabinsk','Non-US','454080','+7-351-267-9135','+7-351-267-9135',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-18 01:58:29','2012 Energy Management Certificate (EMC)','Dmitry','Shnayder','polytech@mail.ru','02/03/1977','Prof','South Ural State University','76, Lenin avenue',NULL,'Chelyabinsk','Non-US','454080','+7-351-233-1192','+7-351-267-9135',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-20 10:50:07','2012 Energy Management Certificate (EMC)','Soumen ','Sarkar','soumen665@gmail.com','20/10/1986','Sarkar','West Bengal Power Development Corp. Ltd.','Vill- Lakshminathpur, P.o- Baduria','24 PGS(N), West Bengal, India','Basirhat','Non-US','743401','+919830374665',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-22 13:42:04','2012 Energy Management Certificate (EMC)','Amanda','Evans','Amanda.evans@sfcc.edu','05/28/1961',NULL,'Santa Fe Community College','6401 Richards Ave',NULL,'Santa Fe','New Mexico','87508','505-690-2603','505-428-1000',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-22 13:44:07','2012 Summer Energy Educator Series (SEES)','Amanda','Evans','Amanda.evans@sfcc.edu','05/28/1961',NULL,'Santa Fe Community College','6401 Richards Ave',NULL,'Santa Fe','New Mexico','87508','505-690-2603',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-05-30 13:56:57','Building Operator Cert. LEVEL 1 - Medford','Justin','Azevedo','wellsj@kcsd.k12.or.us','06/15/68','Supervisor','Klamath County School Dist','10501 Washburn Way',NULL,'Klamath Falls','Oregon','97603','541-883-5011','541-883-5021',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-01 08:06:13','2012 Energy Management Certificate (EMC)','Dobby','Schmidt','dobby.schmidt@sfcc.edu','07/06/1963','POM Superviser','SFCC','6401 Richards Ave.',NULL,'Santa Fe','New Mexico','87508','505-629-5888',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-04 09:33:17','Building Operator Cert. LEVEL 1 - Medford','John','Dowling','jdowling@skylakes.org','07-07-50','Lead Engineer','SkyLakes Medical Center','2865 Daggett Avenue',NULL,'Klamath Falls','Oregon','97601','541 274 5801','541 274 2049',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-05 13:46:43','2012 Summer Energy Educator Series (SEES)','Daniel','Ratcliff','dratcliff@rose.edu','4/22/1966','Professor','Rose State College','6420 SE 15th St.',NULL,'Midwest City','Oklahoma','73110','405-733-7566','405-739-0349',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-05 15:17:24','2012 Energy Management Certificate (EMC)','Zachary ','Morton','zachm@ci.hillsboro.or.us','01/27/82','Facilities tech 2','City of Hilssboro','150 E Main',NULL,'Hillsboro','Oregon','97123','503-939-1472','503-615-3443',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-14 16:20:29','2012 Energy Management Certificate (EMC)','Vikki','Lawson','vlawson@cityoftacoma.org','4/22/1971','Account Executive','Tacoma Public Utilities','3628 S. 35th St.',NULL,'Tacoma','Washington','98409','253-502-8538','253-779-7702',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-16 17:51:35','Sustainable Building Advisor Pro.','John','Gentile','jag4biz@gmail.com','06/26/2012',NULL,'JAG','PO Box 69',NULL,'Corvallis','Oregon','97339','5419089403',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-19 09:53:07','2012 Energy Management Certificate (EMC)','Eric','Winn','eric.j.winn@multco.us','05/04/1977','Energy Utility Specialist','Multnomah County','401 N Dixon St',NULL,'Portland','Oregon','97227','503-988-3322',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-20 12:52:03','2012 Energy Management Certificate (EMC)','Ken','Mecham','kmecham@dtcc.edu','01/15/1943','Instructor','Delaware Tech','100 Campus Dr',NULL,'Dover','Delaware','19904','302-858-8538',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-22 13:07:33','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Kim','Wade','executive1@qwestoffice.net','06.25.1977','Chief Engineer','Able Engineering','8626 SW 20th',NULL,'Portland','Oregon','97219','614.946.5347','503.227.3119',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-25 10:32:41','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Bryan','Knopf','bknopf@shorenstein.com','4/19/58','Asst: Chief Engineer','Lincon Center','10220 sw greenburg road',NULL,'Portland','Oregon','97223','503-519-7381','503-619-3110',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-26 12:22:11','2012 Energy Management Certificate (EMC)','Erinn','Cypher','erinn@rhtenergy.com','08/02/1985','Energy Analyst','RHT Energy Solutions','1215 Stowe Ave.',NULL,'Medford','Oregon','97501','541-770-5884','541-770-7477',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-28 09:30:57','2012 Energy Management Certificate (EMC)','Dave','Towner','dtowner@nbsrealtors.com','5/27/1997',NULL,'Norris, Beggs and Simpson','121 SW Morrison, Suite 200',NULL,'Portland','Oregon','97204','360.852.9600',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-06-28 22:38:15','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Luis','Huertas','skyisthelimit12@hotmail.com','12/11/79','Building Engineer','Norris Beggs Simpson','16000 sw 81st PL',NULL,'Tigard','Oregon','97224','503 309 9372',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-07-02 12:01:22','2012 Energy Management Certificate (EMC)','Dave','Rosholm','drosholm@cityoftacoma.org','02-13-67','Account Executive','Tacoma Public Utilities','3628 South 35th Street',NULL,'Tacoma','Washington','98409','253-341-0953',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-07-05 13:59:42','Building Operator Cert. LEVEL 2 - Portland','Eric','Patton','epatton@fvrl.org','7/15/1971','Facilities Assistant','Fort Vancouver Regional Library District','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','360-606-7268','360-693-2681',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-07-09 15:15:05','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Joey','DiGiovannangelo','joey.digiovannangelo@philomath.k12.or.us','03/05/87','Lead Maintenance','Philomath School District','1620 Applegate Street',NULL,'Philomath','Oregon','97370','541-929-3169','541-929-3991',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-07-12 08:44:45','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jack','Stutz','jstutz@peacehealth.org','3/20/60','Facilities Engineer','PeaceHealth','123 International way',NULL,'Springfield','Oregon','97477','541-743-4703','541-686-8372',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-07-17 23:52:54','Sustainable Building Advisor Pro.','Clint','Baldwin','cabbycorp@hotmail.com','5/1/1979','Building Designer/Carpenter','CABBY Design','2095 NW Delridge Ave.',NULL,'Roseburg','Oregon','97471','541-430-9040',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-07-30 11:12:17','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jeff','Elsasser','jelsasse@mesd.k12.or.us','9-25-1959','Custodian II','Multnomah ESD','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','503-257-1514','503-257-1519',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-08-16 13:58:02','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Seth','McCoy','seth@mightyacorn.com','08/16/71','Facilities Coworker','IKEA US West Inc','10280 NE Cascades Pkwy',NULL,'Portland','Oregon','97220','503 205-6611',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-08-16 14:28:59','Building Operator Cert. LEVEL 1 - NE Oregon','Jim ','Silk','james.silk@gsa.gov','8/3/1965','Property Manager','GSA','620 SW Main St.','Suite 108','Portland','Oregon','97204','503-326-4990','503-326-7101',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-08-23 15:25:04','Building Operator Cert. LEVEL 2 - Portland','Elaine','La Rochelle','exl01@grh.org','7/11/1959','Facilities Director','Grande Ronde Hospital','900 Sunset Dr',NULL,'La Grande','Oregon','97850','541-963-1554','541-962-2550',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-08-27 06:43:24','Building Operator Cert. LEVEL 2 - Portland','Andey','Westgaard','awestgaard@yahoo.com','06/25/1954',NULL,NULL,'16530 23rd Ave SE ','A2','Bothell','Washington','98012','206-228-5764',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-08-27 09:37:24','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Kathleen','Belkhayat','kathleen.belkhayat@energytrust.org','05/20/1982','Project Manager','Energy Trust of Oregon','421 SW Oak Street','Ste 300','Portland','Oregon','97204','503-307-6114',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-08-31 10:31:27','Building Operator Cert. LEVEL 2 - Portland','Jesse','Wicker','Jesse.wicker@greshamoregon.gov','6-6-81','Facilities Maintenance Tech ll','City of Gresham','1333 NW Eastman Pkwy',NULL,'Gresham','Oregon','97030','503-618-2423',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-05 09:27:59','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Dan ','Donaldson','Donaldsd@ohsu.edu','3/10/1961','Operating Engineer','CBRE','3303 SW Bond Avenue','Please bill us ','Portland','Oregon','97206','503-418-9961','503-494-6716',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-05 09:31:34','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jenny ','Johnson','JoJenny@ohsul.edu ','5/5/1974','Maintenance Technician','CBRE','3303 SW Bond Avenue',NULL,'Portland','Oregon','97239','503-418-9611','503-494-6716',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-05 11:25:34','Building Operator Cert. LEVEL 2 - Portland','Heidi','Burkart','heidi.burkart@camas.wednet.edu','02/04/1972','Operations Coordinator','Camas School District','841 NE 22nd Ave',NULL,'Camas','Washington','98607','360-833-7402',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-06 10:25:54','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Rod','Maynard','maynard@gresham.k12.or.us','12/30/55','Maintenance Tech','Gresham-Barlow School District','2020 SE Fleming Dr',NULL,'Gresham','Oregon','97080','5032584711','5036674687',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-06 13:33:26','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Billy','Groat','bgroat@billnaito.com','30/25/1973','Facilities HVAC Tech','Bill Naito Company','2701 NW Vaughn St.','Suite 390','Portland','Oregon','97210','5032246971',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-06 16:25:20','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Gary Alan','Crapser II','crapser4@gresham.k12.or.us','04/15/76','Custodian','Gresham Barlow School Dist.','21030 SE Main Dr.',NULL,'Gresham ','Oregon','97030','503-310-5330',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-07 10:42:20','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Larry','Hatton','mwinder@nbsrealtors.com','1/24/66','Chief Engineer','Norris, Beggs &Simpson','121 SW Morrison, Suite 200',NULL,'Portland','Oregon','97204','5038499069',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-10 13:50:42','Sustainable Building Advisor Pro.','Bruce ','Gier','gierb@pdc.us','03/16/53','Facilities supervisor','Portland Development Commission','222 N.W. 5th Ave.',NULL,'Porland','Oregon','97209','503-823-3438','503-823-3368',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-10 16:50:57','Building Operator Cert. LEVEL 2 - Portland','Doug','Thompson','dthompson@billnaito.com','2-8-57','Lead Maintenance Tech','Bill Naito Company','2701 NW Vaughn Street','Suite 390','Portland','Oregon','97210','503 228-7275',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-12 14:14:29','Building Operator Cert. LEVEL 2 - Portland','Don ','Mattson','Don.Mattson@vansd.org','02/20/1961','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-4781',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-12 14:19:21','Building Operator Cert. LEVEL 2 - Portland','Rodney','McDonald','Rodney.McDonald@vansd.org','07/14/1954','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-4781',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-12 14:38:02','Building Operator Cert. LEVEL 2 - Portland','Terry ','Millard','Terry.Millard@vansd.org','02/06/1952','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-4781',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-17 13:31:29','Building Operator Cert. LEVEL 1 - Medford','Jess','Miller','jess.miller@umpqua.edu','09-24-67','Director of Facilities and Special Events','Umpqua Community College','1140 College Rd.','PO Box 967','Roseburg','Oregon','97470','541-440-4698','541-440-7734',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-17 13:34:16','Building Operator Cert. LEVEL 1 - Medford','Jim ','Epley','jim.epley@umpqua.edu','12-09-65','Lead Maintenance Technician','Umpqua Community College','1140 College Rd.','PO Box 967','Roseburg','Oregon','97470','541-440-4698','541-440-7734',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-24 10:42:40','Building Operator Cert. LEVEL 2 - Portland','Stacy','Milnes','smilnes@pps.net','6/20/1961','Electrical asst. foreman','Portland Public Schols','501 N. Dixon st.',NULL,'Portland','Oregon','97227','503.916.3455',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-24 11:59:42','Building Operator Cert. LEVEL 2 - Portland','Daniel','Lemay','dlemay@pps.net','10/05/1987','Facilities Operations Manager','Portland Public Schools','501 N Dixon St',NULL,'Portland','Oregon','97227','503-916-3104',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-25 06:02:17','Building Operator Cert. LEVEL 2 - Portland','Steve','Hoecker','shoecker@pps.net','10/17/69','Electrical Supervisor','PPS','501 N. Dixon Street',NULL,'Portland','Oregon','97227','503-577-9336',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-25 06:09:11','Building Operator Cert. LEVEL 2 - Portland','Eugene','Osborn','gosborn@pps.net','12/06/56','Asst. foreman','PPS','1710','redwood CT.','Forest Grove','Oregon','97116','503-320-0884',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-25 06:50:53','Building Operator Cert. LEVEL 2 - Portland','Patrick','McMenomy','pmcmenomy@pps.net','02-04-1959','Multi Craft Forman','Portland Public Schools','501 N. Dixon St.',NULL,'Portland','Oregon','97227','503-522-4626',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-25 06:52:26','Building Operator Cert. LEVEL 2 - Portland','Jeff','Lewis','jlewis@pps.net','02/14/1974','Sr. Maint. Mgr','Portland Public Schools','501 N Dixon',NULL,'Portland','Oregon','97217','5039163084',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-09-28 13:54:50','Building Operator Cert. LEVEL 2 - Portland','Bjurke','Thornburgh','bthornbu@pcc.edu','11/09/1954','Facilities Maintrenance III','Portland Community College','120000 Sw 49th Avenue','CSB 314','Portland','Oregon','97219','971 722 5510',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-01 07:36:37','Building Operator Cert. LEVEL 2 - Portland','John','Soukup','john.soukup@pcc.edu','5/21/47','HVAC FOMS III','Portland Community Col','12000 SW 49th Ave. ','Sylvania Campus','Portland','Oregon','97219','503 722 4248',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-01 10:35:58','Building Operator Cert. LEVEL 2 - Portland','Anne','Olsofka','anne.olsofka@pcc.edu','06/16/1960',NULL,'Portland Community College','SY Campus CSB 314','12000 SW 49th Ave','Portland','Oregon','97219','503-519-6896',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-01 12:37:10','Building Operator Cert. LEVEL 2 - Portland','John','Gilbert','gilbert_john@fallscity.k12.or.us','12/07/70','Facilities Manager','k-12','111 North Main Street',NULL,'Falls City','Oregon','97344','503-787-3521','503-787-5805',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-01 14:30:46','Building Operator Cert. LEVEL 2 - Portland','Tony','DeRoest','tony.deroest@pcc.edu','5/18/56','FOMS-III','PCC-FMS','12000 SW 49th Ave.',NULL,'Portland','Oregon','97219','971-722-8337',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-02 12:38:55','Building Operator Cert. LEVEL 2 - Portland','Jerry','Lively','jlively@pps.net','02/23/1955','Sr. Maint. Manager','Portland School Dist @1','501 N Dixon St.',NULL,'Portland','Oregon','97227','360-773-8749','503-916-3177',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-02 12:55:30','Building Operator Cert. LEVEL 2 - Portland','Todd','Shird','tshird@pps.net','9/26/63','Mechanical trades foreman','PPS','2139 se beavercreek ln.',NULL,'Troutdale','Oregon','97060','9712193930',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-02 13:29:13','Building Operator Cert. LEVEL 2 - Portland','Jerry','Turney','jturney@pps','05/27/1960','Assst mech foreman','portland public schools','9617 ne 179th street',NULL,'Battleground','Washington','98604','360-573-0945',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-09 07:44:53','Building Operator Cert. LEVEL 1 - Medford','Tracy','Grauf','tracy.grauf@glide.k12.or.us','03/03/69','Maintenance Supervisor','Glide School Dist. #12','301 Glide Loop Dr.',NULL,'Glide','Oregon','97443','541-430-5069','541-496-4300',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-15 11:34:35','Building Operator Cert. LEVEL 1 - Medford','Rick','Rose','rick.rose@medford.k12.or.us','5/21/1957','Mechanical supervisor','Medford School District','815 S. Oakdale',NULL,'Medford','Oregon','97501','541.842.3646','541.842.1160',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-15 11:52:47','Building Operator Cert. LEVEL 1 - Medford','James','McClure','jmcclure@roguecc.edu','1-19-63','Building & Grounds Maintenance Worker','Rogue Community College','3345 Redwood Hwy',NULL,'Grants Pass','Oregon','97527','541-245-7572','541-245-7594',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-15 14:02:40','Building Operator Cert. LEVEL 1 - Medford','Robert','Blevens','rblevens@roguecc.edu','05/08/61','Buildings & Grounds Maintenance Worker','Rogue Community','3345 Redwood Hwy.',NULL,'Grants Pass','Oregon','97527','541-956-7333','541-471-3540',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-15 14:06:56','Building Operator Cert. LEVEL 1 - Medford','Zander ','Willis','zwillis@roguecc.edu','4-20-81','Maintenance Electrician','Rogue Community College','3345 Redwood Hwy',NULL,'Grants Pass','Oregon','97527','541-956-7333','541-956-3540',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-18 09:03:19','Building Operator Cert. LEVEL 1 - Medford','Jonathan','McCalip','mccalija@jacksoncounty.org','10/10/1967','Manager','Jackson County','141 Eagle View Drive',NULL,'Eagle Point','Oregon','97524','541-210-0189','541-774-6729',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-22 08:55:55','Building Operator Cert. LEVEL 1 - Medford','Billy','Scofield','scofw@sou.edu','3/11/1968','Reactive Maintenance Lead','Southern Oregon University FMP','351 Walker Ave',NULL,'Ashland','Oregon','97520','541-552-6231','541-552-6235',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-22 09:08:45','Building Operator Cert. LEVEL 1 - Medford','Tony','Torresan','torresan@sou.edu','10/15/1953','Maintenance Projects Lead','Southern Oregon University FMP','351 Walker Ave',NULL,'Ashland','Oregon','97520','541-552-6231','541-552-6235',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-10-29 09:41:08','2013 Energy Management Certificate (EMC)','Justin','Holzgrove','justinh@masonpud3.org','01/14/1982','Conservation Manager','Mason County PUD 3','PO Box 2148',NULL,'Shelton','Washington','98584','360-426-8255','360-426-8547',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-11-16 07:59:25','Building Operator Cert. LEVEL 1 - Medford','Rick','Holder','rick.holder@sutherlin.k12.or.us','8/21/51','Director of Facilities','Sutherlin School 130','531 E Central Ave.',NULL,'Sutherlin','Oregon','97479','541 459 4301',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-12-03 09:38:43','Building Operator Cert. LEVEL 1 - Corvallis','Tammy','Jack','tjack@paccast.com','05/31/1968','Facilities Engineering Manager','ATI Pacific Cast Technologies','150 Queen Ave. SW',NULL,'Albany','Oregon','97322','541-967-4875',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-12-10 11:10:44','Building Operator Cert. LEVEL 1 - NE Oregon','Andre','Hage','andre.hage@sage.com','dec 05 196','Facilities Manager','Sage Software Inc','15195 nw Greenbrier Pkwy',NULL,'Beaverton','Oregon','97006','503.439.5525',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-12-10 12:12:00','Building Operator Cert. LEVEL 1 - Portland (Dec.4 – June 5)','Luke','Jarmer','ljarmer@riverstoneres.com','10/10/1980','Maintenance Manager','Riverstone Residential Group','222 SW Harrison St. Suite G11',NULL,'Portland','Oregon','97201','503-523-6940','503-295-7780',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-12-10 16:18:57','Building Operator Cert. LEVEL 1 - Medford','RICK','Holder','rickholder580@hotmail.com','8/21/1951','Director of maintenance','sutherlin school','531 e central avenue',NULL,'Sutherlin','Oregon','97479','541 430 1554','541 459 3210',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-12-14 09:29:54','Building Operator Cert. LEVEL 1 - Medford','Tyler','Tull','ttull@roguecc.edu','4-14-1978','Facilities/Maintenance','Rogue community college','117 S. Central',NULL,'Medford','Oregon','97501','541 787 1701',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2012-12-28 11:02:42','Building Operator Cert. LEVEL 1 - Corvallis','Valerie','Tincher','valt@overleaflodge.com','9/13/1982','Maintenance Supervisor','Overleaf Lodge','P.O Box 280',NULL,'Bend','Oregon','97709','541-961-8703','541-330-1660',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-02 22:26:33','2013 Energy Management Certificate (EMC)','Eveonne','Harper','2smart4allu@gmail.com','2smart4all',NULL,NULL,'3001 N 2ND ST',NULL,'LA Grande','Oregon','97850','5416050011',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-04 09:06:01','Building Operator Cert. LEVEL 1 - Corvallis','Eric','Severson','eric@nwmechanical.net','5/1/72','President','Northwest Mechanical','PO Box 1593','PO Box 1593','Alany','Oregon','97321','541-967-7094','541-967-7089',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-05 12:58:59','2013 Energy Management Certificate (EMC)','Jesse','Officer','jesse.officer@gmail.com','10 15 1977',NULL,NULL,'846 s 71 st ',NULL,'Springfield','Oregon','97478','541 231 4970  ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-07 10:04:44','Building Operator Cert. LEVEL 1 - NE Oregon','Jon','Weir','Jon.Weir@vansd.org','3/28/76','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-3310',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-07 10:10:52','Building Operator Cert. LEVEL 1 - NE Oregon','Brian','Thomas','Brian.Thomas@vansd.org','1/5/66','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-2057',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-07 10:16:10','Building Operator Cert. LEVEL 1 - NE Oregon','Sam','Amituanai','Sam.Amituanai@vansd.org','11/8/51','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360)313-2004',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-07 10:25:36','Building Operator Cert. LEVEL 1 - NE Oregon','Bart','Corcoran','Bart.Corcoran@vansd.org','3/28/64','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360)',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-07 10:33:29','Building Operator Cert. LEVEL 1 - NE Oregon','Quinto','Forlini','Quinto.Forlini@vansd.org','6/11/47','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360)313-3022',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-07 10:44:23','Building Operator Cert. LEVEL 1 - NE Oregon','Ben','Johnston','Benjamin.Johnston@vansd.org','2/1/72','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','(360) 313-3065',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-14 06:30:34','Building Operator Cert. LEVEL 2 - Pendleton','Craig','Gaines','craig.gaines@miltfree.k12.or.us','09/07/1966','Lead Custodian','M-F School District #7','306 SW 2nd ',NULL,'Milton-Freewater','Oregon','97862','541-938-5504','541-938-6615',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-14 15:17:20','Building Operator Cert. LEVEL 1 - Corvallis','Brian','Kruse','brian.kruse@elkton.k12.or.us','6/10/1976','Maintenance Director','Elkton School District','PO Box 390',NULL,'Elkton','Oregon','97436','5415842228x212','5415842227',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-14 15:19:51','Building Operator Cert. LEVEL 1 - Portland','Eric','Heimann','eric.heimann@nike.com','05-20-1985','HVAC Technician','Nike','1 Bowerman Drive',NULL,'Beaverton','Oregon','97005','224-612-0408','503-671-6381',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-15 15:11:26','Building Operator Cert. LEVEL 1 - Portland','Michelle','Missfeldt','mmissfeldt@clarkpud.com','11-01-1961','Key Accounts Manager','Clark Public Utilities','1200 Fort Vancouver Way',NULL,'Vancouver','Washington','98663','360-992-3109','360-992-3140',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-15 15:59:45','Building Operator Cert. LEVEL 1 - Portland','Debbie','DePetris','ddepetris@clarkpud.com','04/25/1970','Key Accounts Manager','Clark Public Utilities ','1200 Fort Vancouver Way',NULL,'Vancouver ','Washington','98668','360-992-3279',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-17 12:20:37','Building Operator Cert. LEVEL 1 - Portland','Dave','Josephson','djosephson@fvrl.org','9/28/1964','Asst Facilities Manager','Fort Vancouver Regional Library District','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','360-699-8841',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-17 12:23:25','Building Operator Cert. LEVEL 1 - Portland','Carl','Sofie','csofie@fvrl.org','9/3/1972','Fleet/Facilities Specialist','Fort Vancouver Regional Library District','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','360-906-2327',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-17 16:35:37','Sustainable Building Advisor Pro.','Collin','OCoyne','rusticfunction@gmail.com','10/09/1976',NULL,NULL,'2095 W 28th ave',NULL,'Eugene','Oregon','97405','541 337-6994',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-17 16:37:11','2013 Energy Management Certificate (EMC)','Collin','OCoyne','rusticfunction@gmail.com','10/09/1976',NULL,NULL,'2095 W 28th ave',NULL,'Eugene','Oregon','97405','541 337-6994',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-18 20:34:01','Building Operator Cert. LEVEL 1 - Portland','Kimberly','Betts','Kim.Betts@Boyds.com','01/31/1965','Roastery Maintenance Support Specialist','Boyd Coffee Company','19730 N.E. Sandy Blvd.',NULL,'Portland','Oregon','97230','971-227-9378',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-22 12:56:06','Building Operator Cert. LEVEL 1 - Portland','Darren','Caniparoli','caniparolid@sherwoodoregon.gov','5/15/69','Operation Supervisor','City of Sherwood','15527 SW Willamette St',NULL,'Sherwood','Oregon','97140','503-925-2334','503-625-0679',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-01-23 11:38:10','Building Operator Cert. LEVEL 1 - Portland','Dean','Hackney','hdhackney@gmail.com','11-02-1970','Building Engineer','NBS','121 SW Morrison Street Suite 200',NULL,'Portland ','Oregon','97204','503-273-0381',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-02-04 10:46:13','Building Operator Cert. LEVEL 1 - Medford','Tyler','Tull','ttull@roguecc.edu','04-14-1978','Facilities','Rogue Community College','1845 N. Keene way dr. apt 4',NULL,'Medford','Oregon','97504','541-821-3269',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-02-12 17:35:55','Building Operator Cert. LEVEL 1 - Salem','Jeff','Hanson ','hansonj@lanecc.edu ','05/04/1962',NULL,'Lane Community College','33493 Morse ave','1353 Keller St','Creswell','Oregon','97426','5419517195',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-02-21 12:03:40','Building Operator Cert. LEVEL 1 - Portland','Donald','Beasley','dqbeasley@gmail.com','03/05/1968',NULL,NULL,'0650 SW Lowell St. #335',NULL,'Portland','Oregon','97239','8053950102',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-05 11:43:52','2013 Energy Management Certificate (EMC)','Dale','Trombley','dtrombley@bates.ctc.edu','09-30-1956','Instructor','BatesTechnical College','2201 S. 78th Street',NULL,'Tacoma','Washington','98409','253-680-7448','253-680-7401',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-06 09:44:02','Building Operator Cert. LEVEL 1 - Salem','Floyd ','Peterson','Floyd.Peterson@das.state.or.us','12/29/1962','HVAC Supervisor','DAS, EAM, Maintenance','1240 Ferry St., SE',NULL,'Salem','Oregon','97301','503-373-2363','503-378-7087',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 10:41:28','Building Operator Cert. LEVEL 1 - Salem','Jeremy','Russell','Russell_Jeremy@salkeiz.k12.or.us','12-17-78','Custodian 2','Salem Keizer School Dist.','1090 Pleasent Grove rd ',NULL,'Turner','Oregon','97392','971-218-5268',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 10:50:03','Building Operator Cert. LEVEL 1 - Salem','Katie','Cota','Cota_Katie@salkeiz.k12.or.us','02/26/1974','Lead Custodian','Salem/Keizer Sch.Dist. 24j','3630 State St.',NULL,'Salem','Oregon','97301','(503)399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 10:51:57','Building Operator Cert. LEVEL 1 - Salem','David','Moes','davidhmoes@live.com','08/29/1962','Lead Custodian','School District','1652 Wiltsey Rd. S.E. #35',NULL,'Salem','Oregon','97306','503-990-6286',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 11:04:06','Building Operator Cert. LEVEL 1 - Salem','Gary','Brown','brown_gary@salkeiz.k12.or.us','04/29/1953','Custodian 3','Salem Keizer Schools','3630 State St.',NULL,'Salem','Oregon','97301','503-399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 13:00:19','Building Operator Cert. LEVEL 1 - Salem','Justin','Pierce','pierce_justin@salkeiz.k12.or.us','1/27/78','Custodian 4','Salem Keizer school district','3630 state st','2440 Lancaster Drive NE','Salem ','Oregon','97305','503-399-3080',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 14:07:05','Building Operator Cert. LEVEL 1 - Salem','Joseph','Dull','dull_joseph@salkeiz.k12.or.us','05-12-1965','Lead Custodian','Salem Keizer School District','1640 Waln St SE',NULL,'Salem','Oregon','97306','503-399-2062',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 14:59:35','Building Operator Cert. LEVEL 2 - Pendleton','Jim ','MacKay','jim.mackay@lagrandesd.org','2/26/51','Maintenance supervisor','LaGrande School District','1305 North Willow Street',NULL,'La Grande','Oregon','97850','541-786-1465','541-663-3211',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 15:44:43','Building Operator Cert. LEVEL 1 - Salem','Michael','Kelley','mikelley2582@gmail.com','04/30/1953','Custodian 2','Salem Keizer Schools','736 Royalty Dr NE',NULL,'Salem','Oregon','97301','5035078594',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-12 19:59:23','Building Operator Cert. LEVEL 1 - Salem','Christopher','Allen','scruffie53@centurylink.net','10/09/1962','Custodian 4','salem keizer school distict 24j','1262 royvonne #55',NULL,'Salem','Oregon','97302','5035698284',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-13 09:09:57','Building Operator Cert. LEVEL 1 - Portland','David','Gutierrez','david.gutierrez@autodesk.com','06/20/1982','Facility Coordinator','Jones Lang LaSalle @ Autodesk','5400 Meadows Rd','Suite 500','Lake Oswego','Oregon','97035','503-333-9524','503-707-3601',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-13 09:10:20','Building Operator Cert. LEVEL 1 - Salem','Paul','Kaplan','KAPLAN-PAUL@salkeiz.k12.or.us','07-19-1961','Custodian 2','Salem-Keizer Public Schools','894 Meadowlawn DR.SE',NULL,'Salem','Oregon','97317','5033168156',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-13 11:18:23','Building Operator Cert. LEVEL 2 - Pendleton','William','Mills','kooskia8@yahoo.com','01/08/1955','Facilities Maintenance 2','La Grande School District','1505 L ave',NULL,'La Grande','Oregon','97850','541-786-0597',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-13 11:53:32','Building Operator Cert. LEVEL 1 - Salem','Tony','Gohl','gohl_tony@salkeiz.k12.or.us','06-17-1980','Custodian 2','Salem keizer public schools (custodial services)','1115 prince court sw',NULL,'Dallas','Oregon','97338','503-507-2548',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-13 14:35:37','Building Operator Cert. LEVEL 1 - Salem','Jay','Reed','2xmaskids@msn.com','10-04-61','Custodian 3','salem/keizer 24 j','4789 joyce st ne',NULL,'Keizer','Oregon','97303','503-390-7254',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-14 10:18:44','Building Operator Cert. LEVEL 1 - Salem','Randy','Paulson','repaulson@bpa.gov','05/10/1959','GENERAL MAINTENANCE WORKER','G4S INTEGRATED FACILITIES SVCS.','905 NE 11TH AVE NWF-B1',NULL,'Portland','Oregon','97232','503-230-5745','503-230-5915',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-15 09:13:10','Building Operator Cert. LEVEL 2 - Pendleton','James','Preston','jpreston@bluecc.edu','01-10-2013','Maintenance','Blue Mountain Community College','PO Box 100','2411 NW Carden Ave','Pendleton','Oregon','97801','541-278-5906','541-278-5844',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-18 10:49:00','Building Operator Cert. LEVEL 1 - Salem','Stewart','McLaughlin','cmclaughlin@bpa.gov','05/01/60','Asst. Facilities Mgr.','G4S-IFS / NWF-B1','905 NE 11th Ave.',NULL,'Portland','Oregon','97232','503-230-5750','503-230-5915',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-25 11:49:24','Building Operator Cert. LEVEL 1 - Salem','Gary','Johnson','gajohnson@bpa.gov','9/27/63','Facilities Operations Specialist','Bonneville Power Administration','PO Box 3621 - NWMR-PSB-2',NULL,'Portland','Oregon','97208','360-418-2706',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-03-28 12:17:36','Building Operator Cert. LEVEL 2 - Pendleton','David','Franklin','dave.franklin@wildhorseresort.com','7/16/63','Facility Maintenance Director','Wildhorse Resort Casino','46510 Wildhorse Blvd.',NULL,'Pendleton','Oregon','97801','541-966-1540',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-02 10:11:13','2013 Energy Management Certificate (EMC)','Angalee','OConnor','angalee@rhtenergy.com','01/10/75','Outreach Manager','RHT Energy Solutions','1215 Stowe Avenue',NULL,'Medford','Oregon','97501','541-770-5884','541-770-7477',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-03 06:54:48','Building Operator Cert. LEVEL 2 - Pendleton','Shawn','Hansen','hansens@umatillasd.org','03/03/1978','Maintenance','Umatilla School District 6R','1001 Sixth St',NULL,'Umatilla','Oregon','97882','541-561-5435','541-922-4565',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-16 14:00:58','Building Operator Cert. LEVEL 2 - Pendleton','Brett','Kamm','bkamm@gshealth.org','01-23-1969','Bio Med Tech','Good Shepard Medical Center','33968 E Loop Road',NULL,'Stanfield','Oregon','97875','541-561-4162',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-16 14:28:19','Building Operator Cert. LEVEL 2 - Pendleton','Terrell','Carpenter','terrell_carpenter@yahoo.com','07/08/1978',NULL,'Blue Mt. Hospital','170 ford rd.',NULL,'John Day','Oregon','97845','541-555-1212',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-16 14:57:58','Building Operator Cert. LEVEL 2 - Pendleton','Steve','Hill','steve77@centurytel.net','05/05/1961','Director of Facilities Services','Blue Mt. Hospital','170 Ford Road',NULL,'John Day','Oregon','97845','541-575-1311',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-16 15:22:14','Building Operator Cert. LEVEL 2 - Pendleton','Ashley','McCabe','ashley.mccabe@ione.k12.or.us','12/27/58','Maintenance','Ione SD','PO Box 167',NULL,'Ione','Oregon','97843','541-571-3668',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-04-23 12:21:57','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Melinda','Shumaker','shumakerm@nclack.k12.or.us','4/18/1971','Facilities Manager','North Clackamas School District','12449 SE Fuller Rd.',NULL,'Milwaukie','Oregon','97222','503-353-6061',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-05-10 06:58:10','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Luis','Huertas','3huertas@gmail.com','12/11/1979','Building Engineer','Norris Beggs & Simpson','16000 sw 81st PL',NULL,'Tigard','Oregon','97224','503 309 9372',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-05-15 08:01:50','Building Operator Cert. LEVEL 2 - Pendleton','Don','Barney','don.barney@crookcounty.k12.or.us','10/07/65','Lead Grounds','Crook County SD','797 NE First',NULL,'Prineville','Oregon','97754','541-447-4419',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-05-28 11:09:49','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Mychael','Havens','mychael_havens@co.washington.or.us','04/12/1985','Facilities Maintenance Technician','Washington County','169 N. First Ave.',NULL,'Hillsboro','Oregon','97124','503 209 3563',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-05-28 11:18:11','2013 Energy Management Certificate (EMC)','Kenneth ','Wilson','kwilson@centurybuilders.net','6/7/1956',NULL,'Highlands Energy Services','5114 E. Clinton Way Ste 111',NULL,'Fresno','California','93727','209-484-4807',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-05-28 21:26:52','2013 Energy Management Certificate (EMC)','Margaret','Towle Strong','margaret.m.towlestrong.nfg@mail.mil','07/01/1957','Interim Energy Manager','Oregon Military Department','360 Fawk St Se',NULL,'Salem','Oregon','97302','503-931-6681',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-08 11:03:58','2013 Energy Management Certificate (EMC)','Jeff','Henderson','jeff.l.henderson@boeing.com','3/20/1960','Facilities manager','Boeing Company','19000 NE Sandy Blvd',NULL,'Portland','Oregon','97294','503-676-1439',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-12 08:54:21','2013 Energy Management Certificate (EMC)','Christian','Bernard','christian@rhtenergy.com','9-12-90','Energy Analyst','RHT Energy Solutions','1215 Stowe Ave.',NULL,'Medford','Oregon','97501','541-770-5884','541-770-7477',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-12 12:51:01','2013 Energy Management Certificate (EMC)','Jimmy ','Poore','Jimmie.D.Poore@doc.state.or.us','10/10/','Senior Construction Project Manager','Oregon Department of Corrections','Facilities Services','3601 State Street','Salem','Oregon','97301','503 932 2119','503 378 6536',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-12 12:56:08','2013 Energy Management Certificate (EMC)','Rachael','Halstead Jeffreys','Rachael.R.Halstead-Jeffreys@doc.state.or.us','4/10/1979','Construction Project Manager','Oregon Department of Corrections','Facilities Services','3601 State Street','Salem','Oregon','97301','503 779 7937','503 378 6536',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-14 14:45:22','2013 Energy Management Certificate (EMC)','Autumn','Marks','autumn.d.marks@lmco.com','11/22/1972','Business Development','Lockheed Martin','105 17th Ave Ct',NULL,'Milton','Washington','98354','253 508 7116',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-17 08:30:39','Building Operator Cert. LEVEL 1 - Portland','Bill','Peterson','wdpeterson@bpa.gov','11/04/1954','Maintenance Supervisor','G4S Integrated Facility Services','905 NE 11th Ave.','NWF-B1','Portland','Oregon','97232','503-230-5754','503-230-5915',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-17 08:54:17','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','CJ','Rachko','CJ.RACHKO@PORTLANDOREGON.GOV','12/13/1957','FACILITIES TECH','CITY OF PORTLAND','1120 SW 5TH AVE','106/1204','Portland','Oregon','97204','503-823-8009','503-823-1064',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-19 08:31:52','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Pat','Moran','PATRICK.MORAN@PORTLANDOREGON.GOV','10/29/1959','FACILITIES TECH','CITY OF PORTLAND','1120 SW 5TH AVE','106/1204','Portland','Oregon','97204','503-823-8689','503-823-1064',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-06-24 08:53:55','Building Operator Cert. LEVEL 2 - Pendleton','Success A B','Dennis','successab.dennis@yahoo.com','26/07/1976','Mr.','Environmental Protection Agency','4th Strtee','Sinkor','Monrovia','Non-US','4024','231886575787',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-07-01 10:13:04','Building Operator Cert. LEVEL 1 - Portland','John','Conway','john.conway@greshamoregon.gov','9/30/1958','Facilities Maintenance Tech 1','City of Gresham, OR.','1333 NW Eastman Parkway',NULL,'Gresham','Oregon','97030','503-793-1597',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-08-04 12:58:12','Sustainable Building Advisor Pro.','Collin','OCoyne','rusticfunction@gmail.com','10/09/1976',NULL,NULL,'2095 w 28th ave',NULL,'Eugene','Oregon','97405','541 337-6994',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-08-12 10:56:26','Building Operator Cert. LEVEL 1 - Portland','Casey','Barkmeier','cbarkmeier@ci.oswego.or.us','10-12-79',NULL,'City Of Lake Oswego','380 A ave. ',NULL,'Lake Oswego','Oregon','97034','503-534-5731',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-08-21 21:02:36','Sustainable Building Advisor Pro.','Vanita','Saini','ar.vanita@gmail.com','21-07-1979','Architect','cac architects','h-81,sec-63,noida,india',NULL,'Noida','Select...','121004','919711135911',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-09-17 14:04:53','Building Operator Cert. LEVEL 1 - Portland','Lance','Nelson','lancenelson2010@hotmail.com','9/9/1960','Building Engineer','AAT/Township Engineering','700 N.E. Multnomah','Suite 800','Portland ','Oregon','97232','503-459-7448',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-09-23 11:30:32','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Menno','Swart','mswart@ttsd.k12.or.us','9-3-1961','Building Specialist IV','Tualatin High school','22300 SW Boones Ferry Rd.',NULL,'Tualatin','Oregon','97062','503-431-5611','503-431-5610',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-09-30 12:29:30','Building Operator Cert. LEVEL 1 - Portland','Ryan','Wiley','ryand.wiley@gmail.com','11/26/1985','Asst. Chief Engineer','Jones Lang LaSalle','3140 watercrest rd',NULL,'Forest Grove','Oregon','97116','5033478014',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-10-02 10:06:53','Building Operator Cert. LEVEL 1 - Portland','Cory','Churchill','cory_churchill@co.washington.or.us','5/18/1983','Facilities maintenance technician','washington county','13285 SW havencrest st.',NULL,'Beaverton','Oregon','97005','1-503-969-0344','1-503-846-6859',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-10-02 11:11:36','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Nick','Archer','nick.archer@co.washington.or.us','2/5/1984',NULL,'Washington County','169 N 1st Ave. MS 42',NULL,'Hillsboro','Oregon','97124','503-793-3766',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-10-10 17:42:58','Building Operator Cert. LEVEL 2 - Pendleton','Eric','Heimann','Eric.heimann@nike.com','5/20/1985','HVAC tech','Nike','One Bowerman drive. ',NULL,'Beaverton','Oregon','97005','2246120408',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-10-16 15:23:44','Building Operator Cert. LEVEL 2','Edin','Didovic','edin.didovic@nike.com','01/06/1973','Maintenance Tech','Nike Inc','One Bowerman Drive',NULL,'Beaverton','Oregon','97005','(971)409-8814',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-10-22 09:10:28','Building Operator Cert. LEVEL 2','Thomas','Valentino','tom.valentino@cityofalbany.net','9-1-59','Building maint. lead','city of Albany','333 Broadalbin st. sw',NULL,'Albany','Oregon','97321','541-974-2253',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-10-24 19:15:45','Building Operator Cert. LEVEL 1 - Oregon Coast','Mike','Thurber','mthurber@live.com','05/04/57','Maint. Supt.','Reedsport School Dist.','2374 High St.',NULL,'Reedsport','Oregon','97467','5412712903',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-11-07 15:45:47','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Robert','Lemmon','bob@indigo12west.com','12/15/82','Facility Manager','Gerding Edlen Management','12600 SW Crescent Street #211',NULL,'Beaverton','Oregon','97005','503.539.0842',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-11-20 14:12:21','Building Operator Cert. LEVEL 1 - Oregon Coast','Ed','Flinter','edf@nestucca.k12.or.us','12/18/67','Maintenance Coordinator','Nestucca Valley School District','P.O. Box 99',NULL,'Cloverdale','Oregon','97112','503-664-6221',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-11-20 14:31:08','Building Operator Cert. LEVEL 1 - Oregon Coast','Thomas','Kosinski','thomas.kosinski@ah.org','9-16-59','HVAC engineer','Tillamook Regional Medical Center','1000 3rd st',NULL,'Tillamook','Rhode Island','97141','503-812-5607',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-11-20 22:59:38','2014 Energy Management Certificate (EMC)','Mohammed M','Alkahtani','mkahtani@kacst.edu.sa','10/10/1969','Electrical engineer','SEEC','Saudi Energy Efficiency Center',NULL,'Riyadh','Non-US','11442','+966546958887',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-11-25 09:58:55','Building Operator Cert. LEVEL 1 - Oregon Coast','Wade','Carey','wcarey@cencoast.com','6/27/69','Energy Services Admin','Central Lincoln PUD','P.O. Box 1126',NULL,'Newport','Oregon','97365','541.574.2068',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-11-25 15:43:47','Building Operator Cert. LEVEL 1 - Oregon Coast','Jerry','Howell','jerryh@cwcresort.com','01/29/65','Maintenance Supervisor','Chinook Winds Casino','1777 NW 44th ST.',NULL,'Lincoln City','Oregon','97367','541-996-5792','541-996-5724',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-02 08:25:04','Building Operator Cert. LEVEL 2','Kim','Wade','executive1@qwestoffice.net','06.25.1977','Engineer','Able Engineering','811 sw 6th ave',NULL,'Portland','Oregon','97205','614 946 5347',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-02 09:15:23','Building Operator Cert. LEVEL 1 - Bend','Curtis','Gustafson','Curtisg@cwcresort.com','04/06/63','Hvac technician','Chinook winds resort','1777 be 44st.',NULL,'Lincoln City','Oregon','97367','541 996 5825',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-10 08:20:58','Building Operator Cert. LEVEL 1 - Oregon Coast','Michael','Butler','smckdaddy174@hotmail.com','04 01 1974','Maintenance','cwc','227 s drift creek rd ',NULL,'Lincoln City','Oregon','97367','541 992 4193',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-10 10:26:15','Building Operator Cert. LEVEL 1 - Oregon Coast','Rod','Hatch','rodneyh@cwcresort.com','09-14-53','Maintenance Supervisor','Chinook Winds ','1777 NW 44th',NULL,'Lincoln City','Oregon','97367','541-992-6467',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-12 08:28:04','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Peter','Emerson','pmemerson@bpa.gov','6-14-1964','Facilities Operations Specialist Supervisor','Bonneville Power Administration','NWMR-PSB-2','5411 NE HWY 99','Vancouver','Washington','98663','360-418-2728',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-13 10:39:14','Building Operator Cert. LEVEL 2','Andre','Hage','andre.hage@sage.com',12051965,'Facilities manager','sage','15195 nw greenbrier pkwy',NULL,'Beaverton','Oregon','97006','5034395525',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-19 13:27:30','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Peter','Emerson','pmemerson@bpa.gov','1/1/1960','Supervisory Facility Operations Specialist','Bonneville Power Administration','PO Box 3621-NWMR-PSB-2',NULL,'Portland','Oregon','97208','360-418-2728',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2013-12-28 12:50:30','2014 Energy Management Certificate (EMC)','John','Mulumba','johnr@ssdcontrols.co.za','06/01/1975','Technologist','ssdcontrols','unit 8;
 cavi court Estoril road',NULL,'Cape Town','Non-US','7449','27215572056',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-03 08:42:00','Building Operator Cert. LEVEL 2','Dave','Josephson','djosephson@fvrl.org','09/28/64','Assistant Facilities Manager','Fort Vancouver Regional Library District','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','360-699-8841','360-693-2681',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-07 14:19:38','Building Operator Cert. LEVEL 1 - Salem','David','Kennedy','davek@ori.org','3-29-60','Facilities tech','ORI','1776 Millrace Dr. ',NULL,'Eugene','Oregon','97405','541-225-8849',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-10 17:50:40','Building Operator Cert. LEVEL 2','Stewart','McLaughlin','cmclaughlin@bpa.gov','05/01/1960','Asst. Facility Mgr.','G4S-IFS','905 NE 11th Ave.','NWF-B1','Portland','Oregon','97232','503-230-5750','503-230-5915',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-13 08:54:23','Building Operator Cert. LEVEL 1 - Salem','Christopher','Campbell','Callencampbell8883@gmail.com','08/08/1983',NULL,NULL,'345 commercial st',NULL,'Salem','Oregon','97301','503-358-5673',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-14 21:23:26','Building Operator Cert. LEVEL 2','Eric','Heimann ','Eric.heimann@nike.com','05/20/1985','Maintenance technician ','Nike','10228 se pine st. Apt A103',NULL,'Portland','Oregon','97216','2246120408',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-15 10:10:53','Building Operator Cert. LEVEL 2','Randy','Paulson','repaulson@bpa.gov','05/10/1959','GENERAL MAINTENANCE WORKER','G4S IFS','905 NE 11TH AVE NWF-B1',NULL,'Portland','Oregon','97232','503-230-5745','503-230-5915',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-15 10:39:12','Building Operator Cert. LEVEL 1 - Columbia Gorge','Sharon','Ohnstad','sohnstad@klickpud.com','09/18/1964','Energy Services Specialist','Klickitat PUD','1313 S. Columbus Ave',NULL,'Goldendale','Washington','98620','509-773-7622','509-773-4969',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-15 14:43:36','Building Operator Cert. LEVEL 1 - Salem','Jackie','Sather','jackie@thecollegian.com','10-25-65','Maintenance','The Collegian','1810 Alder St.',NULL,'Eugene','Oregon','97401','541-852-6065',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-14 22:30:18','Building Operator Cert. LEVEL 2','Nicholas','Archer','nick_archer@co.washington.or.us','02-05-1984','Maint Tech ','Washington County Facilities','169 N First Ave m.s 42',NULL,'Hillsboro','Oregon','97124','503-793-3766',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-01-30 21:03:52','2014 Energy Management Certificate (EMC)','Daniel','Kang','Dkang07@yahoo.com','06/29/1989',NULL,NULL,'2800 Applewood Lane Apt. 73',NULL,'Eugene','Oregon','97408','541-499-3983',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-14 22:30:00','Building Operator Cert. LEVEL 2','Mychael','Havens','mychael_havens@co.washington.or.us','4-12-1985','Facilities Maintenance Technician','Washington County Facilities','169 N First Avenue','Mail Stop 42','Hillsboro','Oregon','97124','503-209-3563','503-846-6780',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-14 22:45:18','Building Operator Cert. LEVEL 2','Cory','Churchill','cory_churchill@co.washington.or.us','5/18/83','Facilities maintenance technician','Washington County','169 N. First Avenue, MS 42',NULL,'Hillsboro','Oregon','97124','503-969-0344','503-846-6859',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-21 19:48:05','Building Operator Cert. LEVEL 1 - Bend','TEST','TEST','westerholme@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Georgia','97405','TEST',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-21 19:51:18','Building Operator Cert. LEVEL 1 - Columbia Gorge','Bill','Harrington','harringtonb@nwasco.k12.or.us','01/20/59',NULL,'N Wasco SD','3632 W 10th St',NULL,'The Dalles','Oregon','97058','541-506-3430',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-24 17:45:39','Building Operator Cert. LEVEL 1 - Columbia Gorge','Dennis','Whitehouse','whitehoused@nwasco.k12.or.us','03/03/60',NULL,'North Wasco School District','3632 West 10th',NULL,'The Dalles','Oregon','97058','541-506-3430',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-24 19:45:05','Building Operator Cert. LEVEL 1 - Columbia Gorge','Dale','Whitaker','richard.whitaker@providence.org','05/02/56',NULL,'Providence Hood River','P.O. Box 149','811 13th St.','Hood River','Oregon','97031','541-387-6430',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-24 21:59:45','Building Operator Cert. LEVEL 2','Steven','Needham','steven.needham@ikea.com','03/26/51',NULL,'Ikea','10280 NE Cascades Parkway',NULL,'Portland','Oregon','97220','503-281-8028 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-24 22:01:39','Building Operator Cert. LEVEL 2','Seth','McCoy','seth.mccoy@ikea.com','08/16/71',NULL,'Ikea','10280 NE Cascades Parkway',NULL,'Portland','Oregon','97220','503-281-8028 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-24 22:03:43','Building Operator Cert. LEVEL 2','Jason','Duhl','jason.duhl@ikea.com','02/26/14',NULL,'Ikea','10280 NE Cascades Parkway',NULL,'Portland','Oregon','97220','503-281-8028 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-26 18:33:58','Building Operator Cert. LEVEL 1 - Salem','Shane','Lutton','lutton_shane@salkeiz.k12.or.us','10/06/70',NULL,'Salem Keizer School District','2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503-580-1367',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-26 18:36:57','Building Operator Cert. LEVEL 1 - Salem','Jerome','Kruse','kruse_jerome@salkeiz.k12.or.us','09/24/85','Night Custodian 2','Salem Keizer School District','2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503-689-3021',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-26 18:39:50','Building Operator Cert. LEVEL 1 - Salem','Samuel','Venezio','venezio_samuel@salkeiz.k12.or.us','12/24/72','Custodian',NULL,'2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503-856-5431',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-26 19:18:19','Building Operator Cert. LEVEL 1 - Salem','Ken','Compton','compton_Ken@salkeiz.k12.or.us','02/27/66',NULL,'Salem Keizer School District','2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503-587-9501',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-27 00:41:40','Building Operator Cert. LEVEL 1 - Bend','Matthew','Crosby','matthew_crosby@co.washington.or.us','08-08-78','Facilities Maintenance Tec II','Washington County','169 N First Ave MS #42',NULL,'Hillsboro','Oregon','97124','503-816-7546',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-27 20:02:36','Building Operator Cert. LEVEL 1 - Salem','Christopher','Arreola','arreola_christopher@salkiez.k12.or.us','04/05/81',NULL,'Salem Keizer School District','2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503-302-2597',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-27 20:40:52','Building Operator Cert. LEVEL 1 - Columbia Gorge','Maya','Hooper','maya.hooper@insitu.com','01/24/86',NULL,'INSITU','118 E Columbia River Way',NULL,'Bingen','Washington','98605','509-493-6956',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-27 23:33:14','Building Operator Cert. LEVEL 1 - Salem','Aaron','Scott','scott_aaron@salkeiz.k12.or.us','09/30/70',NULL,'Salem Keizer School District','2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503.508.6215',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-01 20:08:32','2014 Energy Management Certificate (EMC)','MUHAMMAD','Asghar','eng.asgharkhan@gmail.com','14/12/1980','Engineer','Habibullah Costal Power Company Limited','House # 8-40/73-A Muhalla Tin Town Afghan Road Pashtoon Darah, Quetta Balochistan Pakistan.',NULL,'Quetta Balochistan Pakistan.','Non-US','87300','00923234529875',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-02-28 00:31:49','Building Operator Cert. LEVEL 1 - Columbia Gorge','Martie','McQuain','martie.mcquain@umatillaelectric.com','6/28/58','Facilities Administrator','Umatilla Electric Cooperative','PO Box 1148',NULL,'Hermiston','Oregon','97838','541-564-4404',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 07:29:36','Building Operator Cert. LEVEL 1 - Salem','Jesus','Maciel Ochoa','ochoa_j_jesus_m@salkeiz.k12.or.us','07/03/1965','Lead Custodian ','Salem Keizer Public Schools','2510 Hollywood Dr. NE ',NULL,'Salem','Oregon','97305','503-949-6737',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 18:15:02','Building Operator Cert. LEVEL 1 - Salem','Ramon','Medina','medinar64@hotmail.com','03/18/64',NULL,'Salem Keizer School District','1235 NE 17th St.',NULL,'Salem','Oregon','97301','503.910.8315',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 23:16:54','Building Operator Cert. LEVEL 1 - Columbia Gorge','Lance','Kublick','lance-kublick@nwasco.com','01/02/64',NULL,'Northern Wasco School District','2345 River Rd',NULL,'The Dalles','Oregon','97058','541.296.2226',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 23:19:19','Building Operator Cert. LEVEL 1 - Columbia Gorge','Travis','Hardy','Travis-Hardy@nwasco.com','11/20/75',NULL,'Northern Wasco PUD','2345 River Rd',NULL,'The Dalles','Oregon','97058','541.296.2226',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 23:19:21','Building Operator Cert. LEVEL 1 - Columbia Gorge','Travis','Hardy','Travis-Hardy@nwasco.com','11/20/75',NULL,'Northern Wasco PUD','2345 River Rd',NULL,'The Dalles','Oregon','97058','541.296.2226',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 23:52:15','Building Operator Cert. LEVEL 1 - Columbia Gorge','James ','Frost','james.frost@providence.org','03/04/14',NULL,'Providence  ','1950 Sterling Place',NULL,'Hood River','Oregon','97031','541.387.6430',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-03 23:54:29','Building Operator Cert. LEVEL 1 - Columbia Gorge','Michael','Knott','michael.knott@providence.org','03/06/14',NULL,'Providence Down Manor','1950 Sterling Place',NULL,'Hood River','Oregon','97031','541-387-6430',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-04 19:26:23','Building Operator Cert. LEVEL 1 - Salem','Greg','Slivkoff','gregslivkoff@yahoo.com','08-07-1950',NULL,NULL,'3855 3rd Ave N',NULL,'Keizer','Oregon','97303','503-851-3156',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-05 17:29:00','Building Operator Cert. LEVEL 1 - Salem','Greg','Slivkoff','gregslivkoff@yahoo.com','08-07-1950','Trainee','Willamette University','3855 3rd Ave N',NULL,'Keizer','Oregon','97303','5038513156',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-06 23:48:20','Building Operator Cert. LEVEL 1 - Salem','Scott','Wargnier','swargnier@cityofsalem.net','11/10/59',NULL,'City of Salem Facilities Division','1580 20th St. SE','Bldg #24','Salem','Oregon','97302','503.588.6306',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-10 23:02:51','Building Operator Cert. LEVEL 2','Jess','Miller','jess.miller@umpqua.edu','09-24-67','Director of Facilities and Special Events','Umpqua Community College','1140 College Road','PO Box 967','Roseburg','Oregon','97470','541-440-4698','541-440-7734',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-03-12 19:51:15','Building Operator Cert. LEVEL 1 - Portland','Rand','Gardner','randg27@yahoo.com','5/28/1981','HVAC Service Tech',NULL,'36775 Eldridge Dr',NULL,'Sandy','Oregon','97055','5097501099',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-02 19:28:35','Building Operator Cert. LEVEL 1 - Portland','Brian','Nelson','Brian.Nelson@Hillsboro-Oregon.gov','08/19/72','HVAC Tech','City of Hillsboro','1890 NE Griffin Oaks Street',NULL,'Hillsboro','Oregon','97124','503-803-0566',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-03 20:43:42','Building Operator Cert. LEVEL 1 - Portland','Kenneth','Bates','Kenneth_Bates@beaverton.12.or.us','11/25/77','HVAC Foreman','Beaverton SD','2180 SW 170th Ave.',NULL,'Portland','Oregon','97006','503-591-4223',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-04 14:19:31','Building Operator Cert. LEVEL 1 - Portland','Shad','Crichton','shad.f.crichton@kp.org','12/18/1974','Apprentice Engineer','Kaiser Permanente','10180 SE Sunnyside Rd',NULL,'Clackamas','Oregon','97015','503.406.7268',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-05 16:19:53','Building Operator Cert. LEVEL 1 - Portland','Jim','Lodwick','nitchwick@comcast.net','5/28/1953','Facility Manager','Innovative Services NW','9414 NE Fourth Plain Rd',NULL,'Vancouver','Washington','98662','503-351-2722',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:22:41','Building Operator Cert. LEVEL 1 - Portland','James','Gallien','tina.parkvold@pcc.edu','10/17/78','Spec/fac operations maint',NULL,'1530 SW 201st Ave',NULL,'Beaverton','Oregon','97006','971-722-5504',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:25:14','Building Operator Cert. LEVEL 1 - Portland','Miles ','Craig','tina.parkvold@pcc.edu','9/28/74','Spec/Facilities Oper Main',NULL,'6514 NE 25th',NULL,'Portland','Oregon','97211','971-722-7301',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:29:44','Building Operator Cert. LEVEL 1 - Portland','Duane','Johnson','tina.parkvold@pcc.edu','8/31/60','Spec/Facilities Oper Main',NULL,'5094 SE Allan Rd',NULL,'Milwaukie','Oregon','97267','971-722-8338',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:31:58','Building Operator Cert. LEVEL 1 - Portland','Bob','George','tina.parkvold@pcc.edu','9/30/66','Spec/Facilities Oper Main',NULL,'10650 SW 121st Ave Unit 37',NULL,'Tigard','Oregon','97223','971-722 8113',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:34:39','Building Operator Cert. LEVEL 1 - Portland','Sean','Scorby','tina.parkvold@pcc.edu','9/14/70','Classified- full time',NULL,'12000 SW 49th Ave SY CSB',NULL,'Portland','Oregon','97280','971-722-8113',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:37:37','Building Operator Cert. LEVEL 1 - Portland','Mark','Parkvold','tina.parkvold@pcc.edu','4/19/68','Mgr/Campus Facil Custodian',NULL,'11330 SW Nova Ct',NULL,'Tigard','Oregon','97223','971-722-5568',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:40:18','Building Operator Cert. LEVEL 1 - Portland','Frank','Harris','tina.parkvold@pcc.edu','2/3/56',NULL,NULL,'2305 SE82nd and Division, MTH 132A',NULL,'Portland','Oregon','97216','971-722-6204',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:42:11','Building Operator Cert. LEVEL 1 - Portland','Mitch','Gilmore','tina.parkvold@pcc.edu','8/31/60',NULL,NULL,'2305 SE 82nd and Division, AB 55',NULL,'Portland','Oregon','97216','971-722-8339',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:46:12','Building Operator Cert. LEVEL 1 - Portland','Donnell','Smith','tina.parkvold@pcc.edu','11/21/52','Lead Custodian',NULL,'6243 NE 10th Ave',NULL,'Portland','Oregon','97211','971-722 -7301',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:52:04','Building Operator Cert. LEVEL 1 - Portland','Cythina','McKinney','tina.parkvold@pcc.edu','9/24/64','Lead Custodian',NULL,'705 N. Killngsworth St, CA PSEB 118',NULL,'Portland','Oregon','97217','971-722-7301',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:55:08','Building Operator Cert. LEVEL 1 - Portland','Luat','Tra n','tina.parkvold@pcc.edu','9/1/51',NULL,NULL,'705 N. Killngsworth St, CA PSEB 118',NULL,'Portland','Oregon','97217','971-722-5268',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:57:09','Building Operator Cert. LEVEL 1 - Portland','Joanne','Callahan','tina.parkvold@pcc.edu','5/1/56',NULL,NULL,'12000 SW 49th Ave SY CSB 314',NULL,'Portland','Oregon','97280','971-722-4328',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-08 17:59:38','Building Operator Cert. LEVEL 1 - Portland','Curtis','Jones','tina.parkvold@pcc.edu','4/19/43','Spec/facilities oper main.',NULL,'13070 SW Allen Blvd',NULL,'Beaverton','Oregon','97205','971-722-8146',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-09 02:53:24','Building Operator Cert. LEVEL 1 - Portland','Kenneth','Anderson','TheEnergyGleaners@comcast.net','2-10-1951','Engineer','The Energy Gleaners','668 McVey Ave','Suite 60','Lake Oswego','Oregon','97034','503-481-0444','503-908-0316',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-11 21:31:11','Building Operator Cert. LEVEL 1 - Portland','Lucas','Blasdell','lucas.blasdell@pcc.edu','07/08/1992','Spec/Facilities Oper Main','PCC','12000 SW 49th Ave ','SY CSB 314','Portland','Oregon','97219','971-722-6204',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-14 20:32:28','Building Operator Cert. LEVEL 1 - Columbia Gorge','Jeffrey','Jones','jeffrey.jones@insitu.com','06/20/1976','Electritcian','Insitu','118 East Columbia Riverway',NULL,'Bingen','Oregon','97031','5096375729',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-16 16:57:00','Building Operator Cert. LEVEL 2','Terry','Bartlous','tbartlous@co.clatsop.or.us','01/08/1954','Maintenance Tech','Clatsop County Oregon','800 Exchange St.','Suite 222','Astoria','Oregon','97103','503-338-3695','503-325-8606',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-16 16:59:28','Building Operator Cert. LEVEL 2','John','Kurns','jkurns@co.clatsop.or.us','09/01/1956','Maintenance Supervisor','Clatsop County Oregon','800 Exchange St.','Suite 222','Astoria','Oregon','97103','503-338-3695','503-325-8606',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-23 21:57:20','Building Operator Cert. LEVEL 1 - Bend','Christy','Nachand','cavemannachand@yahoo.com','1`-17-1955','Locksmith','Oregon State University','1426 6th Avenue SE',NULL,'Albany','Oregon','97321','541-990-5760',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-30 15:10:08','June 18-19 2-day Water Conservation Seminar - Portland','Joe','Gamble','joe.gamble15@pcc.edu','12/20/1966','Associate Maintenance Manager','PCC','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8049',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-04-30 15:10:38','June 18-19 2-day Water Conservation Seminar - Portland','Joe','Gamble','joe.gamble15@pcc.edu','12/20/1966','Associate Maintenance Manager','PCC','12000 SW 49th Ave',NULL,'Portland','Oregon','97219','971-722-8049',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-02 17:58:25','June 18-19 2-day Water Conservation Seminar - Portland','Jeff','Sandberg','jeff.sandberg@portlandoregon.gov','10/26/59','Water Conservation Programs Coordinator','Portland Water Bureau','1120 SW 5th Ave., Rm. 600',NULL,'Portland','Oregon','97204','503.823.4307',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-05 14:45:45','June 18-19 2-day Water Conservation Seminar - Portland','e','v','vidale@lanecc.edu',11111,NULL,NULL,'3510',NULL,'Eugene','Oregon','97404','463-6163',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-05 16:16:06','June 18-19 2-day Water Conservation Seminar - Portland','Linda','Ayala','layala@ci.olympia.wa.us','02/13/1970','Program Assistant - Drinking Water Conservation, Backflow Prevention','City of Olympia, Public Works Water Resources','PO Box 1967',NULL,'Olympia','Washington','98607','360-759-6570',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-05 16:20:12','June 18-19 2-day Water Conservation Seminar - Portland','Erin','Conine','econine@ci.olympia.wa.us','09/29/1973','Water conservation Program Coordinator','City of Olympia','PO Box 1967',NULL,'Olympia','Oregon','98507','360.570.3793',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-06-06 21:39:44','June 18-19 2-day Water Conservation Seminar - Portland','Michael','Watson','michael.watson@providence.org','11/25/1960','Lead Engineer','Providence Health','9205 SW Barnes Rd.',NULL,'Portland','Oregon','97225','503-216-9931',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-06 16:05:19','June 18-19 2-day Water Conservation Seminar - Portland','Erin','Conine','econine@ci.olympis.wa.us','09/20/1973','Water Conservation Program Director','City of Olympia','PO Box 98507',NULL,'Olympia','Washington','98507','360-570-8340',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-06 16:11:45','June 18-19 2-day Water Conservation Seminar - Portland','Erin','Conine','econine@ci.olympia.w.us','09/29/1973','Water Conservation Program Director','City of Olympia','PO Box 1967',NULL,'Olympia','Washington','98507','360-570-8340',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-06 16:41:20','June 18-19 2-day Water Conservation Seminar - Portland','Erin','Conine','econine@ci.olympia.wa.us','09/20/1973','Water conservation Program director','Cityof Olympia','PO Box 98507',NULL,'Olympia','Washington','98507','360-570-8340',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-09 21:33:32','June 18-19 2-day Water Conservation Seminar - Portland','Marci','Humlie','meh@mc-power.com','5/7/67','Resource Specialist','McMinnville Water & Light','1206 NE Cowls Street',NULL,'McMinnville','Oregon','97128','503-435-3118',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-13 19:39:28','Building Operator Cert. LEVEL 1 - Portland','Martin','Garcia','mgarcia@pcc.edu','12/19/1965','Lead Custodian','PCC','12000 ','SY CSB 314','Portland','Oregon','97280','971-722-4328',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-13 19:41:56','Building Operator Cert. LEVEL 1 - Portland','Krissy','Hedges','krissy.hedges@pcc.edu','09-22-1988','Lead Custodian','PCC','15967 SW Sunset Court','Unit 505','Sherwood','Oregon','97140','971-722-4872',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-13 19:43:40','Building Operator Cert. LEVEL 1 - Portland','Malou','Ensign','mensign@pcc.edu','08/27/1964','Lead Custodian','PCC','12000 SW 49th Ave','SY CSB 314','Portland','Oregon','97280','971-722-6204',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-13 19:46:10','Building Operator Cert. LEVEL 1 - Portland','Lucas','Blasdell','luke.blasdell@pcc.edu','07/08/1992','FOMS I','PCC','12000 SW 49th St.','SY CSB 314','Portland','Oregon','97280','971-722-6204',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-15 17:50:00','June 18-19 2-day Water Conservation Seminar - Portland','Rich','Barrows','rich.barrows@portlandoregon.gov','10/15/61',NULL,NULL,'1120 sw 5th ave, Rm 600',NULL,'Portland','Oregon','97204','503 823-4307',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-28 16:16:25','June 18-19 2-day Water Conservation Seminar - Portland','Stephanie','Lee','stephanie.lee@pacificorp.com','04-07-1970','Project Manager','PacifiCorp','825 NE Multnomah',NULL,'Portland','Oregon','97232','503-331-4362',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-29 15:24:39','June 18-19 2-day Water Conservation Seminar - Portland','Anitra','Accetturo','aaccetturo@cob.org','10/01/1978','Water Conservation Program Coordinator','City of Bellingham','2221 Pacific St.',NULL,'Bellingham','Washington','98229','360-778-7732',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-29 18:46:32','June 18-19 2-day Water Conservation Seminar - Portland','Art','Garro','art.garro@pullman-wa.gov','01/24/1965','Maintenance & Operations Superintendent','City of Pullman, Washington','325 SE Paradise Street',NULL,'Pullman','Washington','99163','509-338-3238',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-29 18:48:31','June 18-19 2-day Water Conservation Seminar - Portland','Keith','Kirpes','keith.kirpes@pullman-wa.gov','3/14/67','Operations Supervisor','City of Pullman, Washington','325 SE Paradise Street',NULL,'Pullman','Washington','99163','509-338-3256',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-05-29 23:24:20','June 18-19 2-day Water Conservation Seminar - Portland','William','Heston','william.heston@providence.org','10-30-56','Building Systems Manager','Providence Health & Services','4805 NE Glisan',NULL,'Portland','Oregon','97213','503-215-8522','503-215-6053',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-06-02 23:21:36','June 18-19 2-day Water Conservation Seminar - Portland','Lucas','Johnson','lucas@cascadiaconsulting.com','08/28/1982','Associate','Cascadia Consulting Group','1109 1st Ave #400',NULL,'Seattle','Washington','98101','8056793616',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-06-04 17:40:40','June 18-19 2-day Water Conservation Seminar - Portland','Lucas','Johnson','lucas@cascadiaconsulting.com','08/28/1982','Associate','Cascadia Consulting Group','1109 1st Ave #400',NULL,'Seattle','Washington','98101','8056793616',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-06-05 16:56:11','Building Operator Cert. LEVEL 1 - Portland','Jose','Castelan','caniparolid@sherwoodoregon.gov','5-11-63','Maintenance Worker','City of Sherwood','15527 SW Willamette St',NULL,'Sherwood','Oregon','97140','503-925-2334',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-06-13 20:20:33','June 18-19 2-day Water Conservation Seminar - Portland','Mark','Taratoot','Kerrie.Cook@corvallisoregon.gov','05/19/1967',NULL,'City of Corvallis, Public Works','P.O. Box 1083',NULL,'Corvallis','Oregon','97339','541-766-6916','541-766-6920',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-07-23 16:34:46','Building Operator Cert. LEVEL 1 - Portland','Brandon','Curry','brandon.curry@cityofalbany.net','4-23-77','Building maint II','city of albany','333 Broadalbin',NULL,'Albany','Oregon','97321','541-974-6423','541917-7776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-08-17 17:28:17','Building Operator Cert. LEVEL 1 - Portland','Shea','Davis','shea.davis@xen-com.com','05/18/1986','Maintenance Manager','Pioneer Place','888 SW 5th Ave','Suite 930','Portland','Oregon','97204','5033179388',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-08-17 17:29:45','2015 Energy Management Certificate (EMC)','Shea','Davis','shea.davis@xen-com','05/18/1986','Maintenance Manager','Pioneer Place','888 SW 5th Ave','Suite 930','Portland','Oregon','97222','5033179388',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-02 21:53:07','Building Operator Cert. LEVEL 1 - Columbia Gorge','Joseph','Ferres','joe.ferres@ocdc.net','9/4/70','Facilities and safety technician ','OCDC','1300 west 9th street',NULL,'The Dalles','Oregon','97058','541-980-7250','541-296-0143',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-04 14:29:05','Building Operator Cert. LEVEL 1 - Bend','Susan','Deen','susan.deen@ci.vancouver.wa.us','02-14-54','Building Repair Specialist','City of Vancouver','PO Box1995','4711 E Fourth Plain Blvd.','Vancouver','Washington','98668','360-696-8177','360-487-8280',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-04 14:33:35','Building Operator Cert. LEVEL 1 - Bend','Susan','Deen','susan.deen@ci.vancouver.wa.us','02-14-1954','Building Repair Specialist','City of Vancouver','PO Box 1995','4711 E Fourth Plain Blvd.','Vancouver','Washington','98668','360-607-8632','360-487-8082',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-05 06:03:33','Building Operator Cert. LEVEL 1 - Portland','Tony','Perez','aperez@ttsd.k12.or.us','10-17-1973','Custodial services coordinator',NULL,'6960 SW Sandburg Street',NULL,'Tigard','Oregon','97007','503-568-4738',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-10 14:52:37','Building Operator Cert. LEVEL 1 - Portland','Dan','Norfleet','Dan.Norfleet@cityofvancouver.us','5/28/1947','Facilities Superintendent','City of Vancouver','P O Box 1995','4711 E. Fourth Plain Blvd.','Vancouver','Washington','98668','360-487-8390','360-487-8280',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-10 20:57:16','Building Operator Cert. LEVEL 1 - Portland','Duane ','Durrow','ddurrow@billnaito.com','7-10-1956','HVAC Technician','Bill Naito Co','2701 NW Vaughn St suite 323',NULL,'Portland ','Oregon','97210','503-224-6971',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-12 17:29:55','Building Operator Cert. LEVEL 1 - Oregon Coast','Casey ','Thomas','casey@1000incmanagement.com','01/24/1983','Utility tech ','1000INC','1000 sw broadway ','suite 930','Portland','Oregon','97205','5032273959','5032272018',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-16 23:59:08','Building Operator Cert. LEVEL 1 - Portland','Tony','Perez','aperez@ttsd.k12.or.us','10/17/1973','Custodial Services Coordinator','Tigard -Tualatin School District','6960 SW Sandburg Street',NULL,'Tigard','Oregon','97223','503-568-4738',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-17 17:15:19','Building Operator Cert. LEVEL 1 - Portland','Anna','Dinwiddie','adinwidd@mesd.k12.or.us','01/22/1987','Secretary III Technician ','Multnomah Education Service District','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','5032571785',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-17 17:29:28','Building Operator Cert. LEVEL 1 - Portland','Clinton','Alley','clinton.alley@newbergoregon.gov','06/04/1976','Facilities Maintenance Technician','City of Newberg','500 W. Third St.',NULL,'Newberg','Oregon','97132','971-246-0423',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-19 22:58:23','Building Operator Cert. LEVEL 1 - Portland','Logan','Schilling','lschilling@melvinmark.com','03/27/92',NULL,NULL,'6675 SE Furnberg st',NULL,'Milwaukie','Oregon','97222','971-303-3265','503-227-0352',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-22 17:02:14','Building Operator Cert. LEVEL 1 - Portland','Joni','Muller','jmulle01@mesd.k12.or.us','08/31/1962','Custodian II/Driver','MESD','11611 NE Ainsworth Cir',NULL,'Portland','Oregon','97220','503-257-1642',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-25 19:02:45','Building Operator Cert. LEVEL 1 - Bend','Ava','Joubert','ava.joubert@ehi.com','07/14/1967','Group Operations Manager','EAN Holdings, LLC','20400 SW Teton',NULL,'Tualatin, ','Oregon','97062','503 849 4461',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-29 21:07:46','Building Operator Cert. LEVEL 1 - Portland','Jason','Lovett','jason.lovett@ihs.gov','08/15/72','Director, Facilities Management','Indian Health Service Portland Area','1414 NW Northrup St','Suite 800','Portland','Oregon','97209','509-414-5531',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-29 21:16:08','Building Operator Cert. LEVEL 1 - Portland','Peter','Belisle','peter.belisle@ihs.gov','04/14/60','Facility Operations Specialist','Indian Health Service','3750 Chemawa Road NE',NULL,'Salem','Oregon','97304','503-304-7643',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-29 21:16:12','Building Operator Cert. LEVEL 1 - Portland','Peter','Belisle','peter.belisle@ihs.gov','04/14/60','Facility Operations Specialist','Indian Health Service','3750 Chemawa Road NE',NULL,'Salem','Oregon','97304','503-304-7643',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-09-30 14:23:55','Building Operator Cert. LEVEL 1 - Portland','Krista ','Pihlaja','krista.pihlaja@ihs.gov','5/31/81','Facilities Engineer Consultant','Indian Health Service Portland Area','1414 NW Northrup St','Suite 800','Portland','Oregon','97209','503-414-7782',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-10-02 16:39:16','Building Operator Cert. LEVEL 1 - Portland','Mark','McConnell','vickie@tvwd.org','02-06-1959','Building & Grounds Maint II','Tualatin Valley Water Disrict','1850 SW 170th Ave',NULL,'Beaverton','Oregon','97003','503-848-3079','503-356-3179',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-10-02 16:41:30','Building Operator Cert. LEVEL 1 - Portland','Sharon','Voelz','vickie@tvwd.org','01/05/1962','Building & Grounds Maint II','Tualatin Valley Water District','1850 SW 170th AVe',NULL,'Beaverton','Oregon','97003','503-848-3079','503-356-3179',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-10-15 16:27:26','Building Operator Cert. LEVEL 1 - Portland','Krista','Pihlaja','krista.pihlaja@ihs.gov','05/31/1981','Facilities Management Engineer Consultant','Indian Health Service','1414 NW Northrup','Suite 800','Portland','Oregon','97209','5034147782','5034147776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-10-17 02:21:40','Building Operator Cert. LEVEL 1 - Portland','David','Galego','dlgalego@comcast.net','1/22/63','Field Supervisor','Beaverton School District','16605 SW Oregon Jade Ct.',NULL,'Beaverton','Oregon','97007','(503)590-8952',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-12-11 23:57:14','Building Operator Cert. LEVEL 1 - Portland','Lura','Griffiths','lurag@triplepointenergy.com','05/04/1964','Energy Efficiency Engineer','Triple Point Energy','333 SW Taylor Street','Suite 300','Portland','Oregon','97204','971-678-3921',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2014-12-20 00:20:44','Building Operator Cert. LEVEL 1 - Bend','Jeremy','Kekahuna','kekahuna78@msn.com','1/27/1978',NULL,NULL,'1473 Grove Ave.',NULL,'Atwater','California','95301','(209)676-9061',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-01-21 20:44:16','Building Operator Cert. LEVEL 1 - Portland','Ronald','Osborne','ron@indigo12west.com',90263,NULL,NULL,'430 SW 13th Avenue',NULL,'Portland','Oregon','97205','503.501.7831',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-01-28 20:44:01','2015 Energy Management Certificate (EMC)','Salvador','Aguilar','sal.aguilar2@gmail.com',7151974,NULL,NULL,'PO Box 6838',NULL,'Beaverton','Oregon','97007','9716458652',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-01-30 17:27:11','2015 Energy Management Certificate (EMC)','Emma','Johnson','ejohnson@bellevuewa.gov','02/26/1979',NULL,NULL,'PO Box 90012',NULL,'Bellevue','Washington','98009','425.452.5246',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-02-23 19:17:36','2015 Energy Management Certificate (EMC)','Thomas','McDowell','tom@rhtenergy.com','4/13/54','Energy Analyst','RHT Energy Solution','1215 Stowe Avenue',NULL,'Medford','Oregon','97501','541-770-5884',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-02-23 19:21:17','2015 Energy Management Certificate (EMC)','Joshua','Berger','josh@rhtenergy.com','3/17/76','Energy Analyst','RHT Energy Solutions','1215 Stowe Avenue',NULL,'Medford','Oregon','97501','541-770-5884',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-03-03 17:43:01','Building Operator Cert. LEVEL 1 - Portland','Christopher','Marchand','marchandchristopher@yahoo.com','4/20/56','Mr','paradox','3131 SW.MARIGOLD ST APT.210',NULL,'Portland','Oregon','97219','5034522916',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-03-04 18:18:38','Building Operator Cert. LEVEL 1 - Portland','Toby','Thew','tthew@kiddermatthews.com','1/1/1980','Building Engineer','Kidder Matthews','One SW Columbia Street #950 ',NULL,'Portland','Oregon','97258','503-221-9900','503-221-2277',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-03-04 18:24:55','Building Operator Cert. LEVEL 1 - Portland','Allison','Haley','prallisonhaley@gmail.com','07/21/1990',NULL,NULL,'610 wassom st',NULL,'Lebanon','Oregon','97355','5414019266',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-03-06 23:19:51','Building Operator Cert. LEVEL 1 - Portland','Eduardo','Yanez','eduardo.yanez@greshamoregon.gov','11/23/72','Facilities maintenance technician 1','City of Gresham','1333 N.W. Estman parkway',NULL,'Gresham','Oregon','97030','971)201 9119','503)618 2512',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-03-22 20:05:47','2015 Energy Management Certificate (EMC)','Craig','Griffin','craiggriffin93@yahoo.com','10/30/78',NULL,NULL,'1028 103rd Ave',NULL,'Oakland','California','94603','510-878-0215',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-03-22 20:18:24','Building Operator Cert. LEVEL 1 - Portland','Wade','Matthews','wmatthews@threeriverscasino.com','07/21/1986','Maintenance Tech 1','Three Rivers Casino Resort','5647 Hwy 126',NULL,'Florence','Oregon','97439','541-991-7140','541-902-2966',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-04-12 18:48:10','Building Operator Cert. LEVEL 1 - Bend','Albert','Garcia','albert31126@yahoo.com','10/25/61','Service tech.',NULL,'737W Promontory Dr',NULL,'Newport Beach','California','92660','7149276271',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-11 17:30:39','2015 Energy Management Certificate (EMC)','George','Hecht','ghecht@uoregon.edu','6 jan 1947','AVP Campus Operations','U Oregon','1276 U Oregon',NULL,'Eugene','Oregon','97405','541 346-2290',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-09 06:59:18','Building Operator Cert. LEVEL 1 - Pendleton','Anthony','Citelli','tonycitelli@gmail.com','04/21/1962',NULL,NULL,'1327 SE Tacoma St.  ','#205','Portland','Oregon','97202','503-709-6788',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-05-12 19:49:59','2015 Energy Management Certificate (EMC)','Paul','Stuecker','joe.stuecker@hardin.kyschools.us','08/07/1978',NULL,'Early College and Career Center','200 University Drive',NULL,'Elizabethtown','Kentucky','42701','2702684014',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-05-17 20:06:13','2015 Energy Management Certificate (EMC)','Christopher','Bruno','chris@soundenvironmentalconsulting.com','06/23/1988',NULL,NULL,'1611 55th CT SE',NULL,'Auburn','Washington','98092','2539299810',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-05-18 06:16:29','2015 Energy Management Certificate (EMC)','Rashid Musallam Ali','Al Hashmi','hamood.alhajri@omanairports.com','00/00/0000','BUILDING SERVICE MAINTENANCE MANAGER','Oman Airports Management Company','Muscat International Airport','P.O. Box 1707, P.C. 111  ','Muscat','Non-US','111','0096824341490',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-15 21:17:50','Building Operator Cert. LEVEL 1 - Salem','Matthew','Reed','mreed90@msn.com','12/25/1990','Custodian','Salem Keizer Public Schools','942 Chickadee Ct NE',NULL,'Salem','Oregon','97301','503-428-0156',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-15 22:15:32','Building Operator Cert. LEVEL 1 - Salem','Andrew','Burri','burri_andrew@salkeiz.k12.or.us','6/10/66','Custodian 2','Salem Keizer schools','3630 State st','Custodial Dept.','Salem','Oregon','97301','5035852498',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 00:17:47','Building Operator Cert. LEVEL 1 - Salem','Norman','Laux','redremedy91@gmail.com','11/25/1991',NULL,NULL,'693 Clay ST E',NULL,'Monmouth','Oregon','97361','503-851-4340',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 04:18:35','Building Operator Cert. LEVEL 1 - Salem','Romualdo','Velazquez','velazquez_romualdo@salkeiz.or.us','02/07/1970','Custodian-3','salem keizer school district','3630 State St.',NULL,'Salem','Oregon','97301','503)399-3290',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 04:30:54','Click here to select...','Romualdo','Velazquez','velazquez_romualdo@salkeiz.k12.or.us','02/07/1970','Custodian-3','salem keizer school district','3630 State St.',NULL,'Salem','Oregon','97301','503) 399-3290',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 13:55:58','Building Operator Cert. LEVEL 1 - Salem','Diane','Knapke','knapke_diane@salkeiz.k12.or.us','5/24/1961','Custodian3','Salem-Keizer School Dist.','3697 Peck AVE SE',NULL,'Salem','Oregon','97302','503-580-1872',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 14:14:06','Building Operator Cert. LEVEL 1 - Salem','Jeffrey','Blatter','blatter_jeffrey@salkeizk12.or.us.','1-21-1956','Custodian 3','Salem Keizer School District','3324 Felina Ave. NE #175',NULL,'Salem ','Oregon','97301','503-689-5891',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 14:45:41','Building Operator Cert. LEVEL 1 - Salem','Nick','Rojas','rojasnicholas40@gmail.com','06/04/1983','Custodian 3','salem keizer school district','3630 state st',NULL,'Salem','Oregon','97301','503 399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-16 16:41:30','Building Operator Cert. LEVEL 1 - Salem','Mark','Starns','starns_mark@salkeiz.k12.or.us','08/23/1963','Custodian 3','Salem-Keizer School District','991 Queen Ct NE',NULL,'Salem','Oregon','97301','5033716464',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-17 17:04:28','Building Operator Cert. LEVEL 1 - Salem','Nara','Im','Im_Nara@salkeiz.k12.or.us','11./7/51','Custodian 3','Salem Keizer schools','3630 state street',NULL,'Salem','Oregon','97305','5033993097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-17 19:37:12','Building Operator Cert. LEVEL 1 - Salem','Anthony','Laux','laux_anthony@salkeiz.k12.or.us','11-14-1964','Custodian 2','Salem Keizer School Dist.','5875 Eastland Ave SE',NULL,'Salem','Oregon','97317','503-851-4526',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-17 22:42:45','Building Operator Cert. LEVEL 1 - Salem','Cliff','Leierer','leierer_cliff@salkeiz.k12.or.us','2-2-55','Custodian 2','Salem keizer Public School','1185 Winter St.',NULL,'Salem','Oregon','97301','503-302-6605','none',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-18 01:08:11','Building Operator Cert. LEVEL 1 - Salem','Robert','Boykin','boykin_robert@salkeiz.k12.or.us','09/25/1973','Custodian 2','Salem Keizer School District','969 Oakwood St. NE',NULL,'Keizer','Oregon','97303','503-912-7911',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-06-23 23:08:56','Building Operator Cert. LEVEL 1 - Medford','TEST','TEST','mandersj@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Alabama','34234','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 17:49:36','Building Operator Cert. LEVEL 1 - Salem','Craig','Richards','richards_craig@salkeiz.k12.or.us','12-21-60','Custodial','salem keizer sd','240 sw 49th ave.',NULL,'Salem','Oregon','97317','541-337-3199',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 17:52:38','Building Operator Cert. LEVEL 1 - Salem','David','Davidson','davidson_david@salkeiz.k12.or.us','7-25-64','Custodial','salem keizer sd','485 thomas lane ne',NULL,'Salem','Oregon','97301','971-304-9333',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 17:55:39','Building Operator Cert. LEVEL 1 - Salem','Sergio','Maciel','maciel_sergio@salkeiz.k12.or.us','3-7-77','Custodial','slam keizer sd','4404 katrina ct. ne',NULL,'Salem','Oregon','97305','971-239-3964',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 17:58:25','Building Operator Cert. LEVEL 1 - Salem','Jeff','Brittan','brittan_jeff@salkeiz.k12.or.us','09-05-72','Custodial','salem keizer sd','3458 livingston st. ne ','#303','Salem','Oregon','97301','503-302-9142',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 18:04:40','Building Operator Cert. LEVEL 1 - Salem','Craig','Richards','richards_craig@salkeiz.k12.or.us','12-21-60','Custodial','salem keizer sd','240 sw 49th ave.',NULL,'Salem','Oregon','97317','541-337-3199',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 19:27:58','Building Operator Cert. LEVEL 1 - Salem','Zachary','John','john_zachary@salkeiz.k12.or.us','10-23-90','Custodian 2','salem keizer sd','4086 netto lane ne',NULL,'Keizer','Oregon','97303','503-576-9324',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 19:30:22','Building Operator Cert. LEVEL 1 - Salem','Eudaldo','Macias','macias_eudaldo@salkeiz.k12.or.us','5-30-63','Custodian 3','salem keizer sd','4775 Lilac Lane NE',NULL,'Salem','Oregon','97305','503-689-7005',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 19:32:19','Building Operator Cert. LEVEL 1 - Salem','Lee','King','king_lee@salkeiz.k12.or.us','4-23-60','Custodian 3','salem keizer sd','367 18th st se',NULL,'Salem','Oregon','97301','503-884-0911',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-02 19:34:44','Building Operator Cert. LEVEL 1 - Salem','Greg','Cleveland','cleveland_greg@salkeiz.k12.or.us','12-10-68','Custodian 2','salem keizer sd','4854 southeaster ct ne',NULL,'Salem','Oregon','97305','503-914-9653',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-06 20:31:26','Building Operator Cert. LEVEL 1 - Salem','Dan','Detzel','detzel_dan@salkeiz.k12.or.us','08/24/65','Custodian 3','salem keizer sd','4186 kurth st. S',NULL,'Salem','Oregon','97302','503-409-4466',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-21 18:47:23','Building Operator Cert. LEVEL 1 - Portland','Jeff','Zimbrick','jzimbrick@beavertonoregon.gov','05/09/1969','Facilities Maintenance Technician','City of Beaverton','PO Box 4755',NULL,'Beaverton','Oregon','97076','503-526-2476',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-06 16:06:16','Building Operator Cert. LEVEL 2','Logan','Schilling','lschilling@melvinmark.com','03/27/1992','Building Engineer','Melvin Mark Companies','1500 SW 1st ave',NULL,'Portland','Oregon','97201','971 303 3265',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-07-30 15:31:11','Building Operator Cert. LEVEL 1 - Salem','Byron','Burks','burks_byron@salkeiz.k12.or.us','07/10/80',NULL,'Salem Keizer SD','4786 Tracy Street NE',NULL,'Keizer','Oregon','97303','503-399-3362',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-11 20:50:43','Building Operator Cert. LEVEL 2','Erik','Westerholm','Westerholme@lanecc.edu','01/01/01','Poobah','hoobahs','123 main',NULL,'Anytown','Oregon','97477','555-1212',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-11 20:59:57','Building Operator Cert. LEVEL 2','Erik','Westerholm','westerholme@lanecc.edu','10/01/02','Poobah','boo wah','123 main',NULL,'Anytown','Oregon','97401','555-1212',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-11 21:11:14','Building Operator Cert. LEVEL 2','Erik','Westerholm','westerholme@lanecc.edu','10/10/03','Poobah','woofer','123 main',NULL,'Anytown','Oregon','97477','541-555-1212',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-12 18:59:55','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Tym','Pearson','tym.pearson@ltd.org','10/30/90','Facilities Maintenance Generalist','Lane Transit District','P.O. Box 7070',NULL,'Springfield ','Oregon','97475','541-682-6100','541-682-6111',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-13 14:48:08','Building Operator Cert. LEVEL 1 - Portland','Eduardo','Yanez','eduardo.yanez@greshamoregon.gov','11/23/72','Facilities maintenance technician 1','City of Gresham','1333 N.W. Estman parkway',NULL,'Gresham','Oregon','97030','971)201 9119','503)618 2512',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-13 15:23:51','Building Operator Cert. LEVEL 1 - Portland','Matthew ','Olson','mrolson@uoregon.edu','11/08/1983','Electrical Coorinator','University of Oregon','1276 University of Oregon',NULL,'Eugene','Oregon','97402','541-346-2214',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-13 18:26:05','Building Operator Cert. LEVEL 1 - Salem','Adan','Ibarra','IBARRA_ADAN@salkeiz.k12.or.us','04/30/79','Custodian 3','Salem Keizer SD','2450 Lancaster Drive NE',NULL,'Salem','Oregon','97305','503-399-5533',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-14 16:24:33','Building Operator Cert. LEVEL 1 - Salem','Jesse','Gonzalez','GONZALEZ_JESSE@salkeiz.k12.or.us','01/21/1956','Custodian 3','Salem-Keizer SD','2450 Lancaster Drive NE',NULL,'Salem','Oregon','97305','503-399-3000.',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-14 16:29:51','Building Operator Cert. LEVEL 1 - Salem','Cruz','Ribera','RIBERA_CRUZ@salkeiz.k12.or.us','2/27/54','Custodian 3','Salem Keizer SD','2450 Lancaster Drive NE',NULL,'Salem','Oregon','97305','503-399-3000.',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-14 16:49:11','Building Operator Cert. LEVEL 1 - Salem','Jesse','Gonzalez','GONZALEZ_JESSE@salkeiz.k12.or.us','1/21/56','Custodian 3','Salem Keizer SD','2450 Lancaster Drive NE',NULL,'Salem','Oregon','97305','503-399-3000.',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-17 16:38:57','Building Operator Cert. LEVEL 1 - Portland','Mike','Wirkkula','michael.j.wirkkula@oregon.gov','09.05.1976','Energy Analyst','Oregon Dept. of Administrative Services','1240 Ferry St SE',NULL,'Salem','Oregon','97301','503.378.3535',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-17 17:53:20','Building Operator Cert. LEVEL 1 - Portland','Dave','Baca','Lynn.BACA@oregon.gov','01.01.1980',NULL,'Oregon Dept. of Adminstrative Services','1240 Ferry St SE',NULL,'Salem','Oregon','97301','503-373-2363',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-17 17:59:23','Building Operator Cert. LEVEL 1 - Portland','Mattew','Hall','matthew.hall@oregon.gov','01.01.1980',NULL,'Oregon Dept. of Adminstrative Services','800 Oregon St NE',NULL,'Portland','Oregon','97232','(503) 849-5383',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-17 18:02:26','Building Operator Cert. LEVEL 1 - Portland','Jeremy','Miller','jeremy.w.miller@oregon.gov','01.01.1980',NULL,'Oregon Dept. of Adminstrative Services','1240 Ferry St SE',NULL,'Salem','Oregon','97301','(503) 373-2368',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-18 13:51:29','Building Operator Cert. LEVEL 1 - Salem','fRITX','tHE cAT','JIMSMITH@AOL.COM','5/15/22','GONE WITH THE WIND',NULL,'555 NOLANE',NULL,'Humbolt','Texas','75701','414-555-1212',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-18 21:41:38','Building Operator Cert. LEVEL 1 - Portland','Rory','Greenfield','rory.greenfield@oregonmetro.gov','03/7/72','BOM','Metro Regional Government','600 NE Grand Ave.',NULL,'Portland','Oregon','97232','503-797-1599','503-797-1795',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-18 21:44:16','Building Operator Cert. LEVEL 1 - Portland','Thomas','Thornton','thomas.thornton@oregonmetro.gov','04/27/70','Maintenance Technician','Metro Regional Government','600 NE Grand Ave.',NULL,'Portland','Oregon','97232','503-797-1599','503-797-1795',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-20 18:53:12','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brad','McMurphy','mcmurphb@reed.edu','04/12/89','Maintenance Specialist','Reed College','3203 SE Woodstock BLVD',NULL,'Portland','Oregon','97202','503-969-8496',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-25 22:20:48','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Thomas','Aichele','Thomas.Aichele@rockwell.collins.com','08/22/1979','ES&H Specialist','Rockwell Collins','27300 SW Parkway Avenue',NULL,'Wilsonville','Oregon','97070','5034046833','503-404-6975',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-27 17:37:50','Building Operator Cert. LEVEL 1 - Portland','Jason','Stogin','jason.stogin@ikea.com','09/02/1973','Facilities Coworker','IKEA US WEST, INC Store 028','10280 NE Cascades Pkwy',NULL,'Portland','Oregon','97220','503 205 6611',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-27 17:43:55','Building Operator Cert. LEVEL 2','Jeremy','Boyd','jeremy.boyd@ikea.com','12/18/1981','Facilities Coworker','IKEA US WEST, INC Store 028','10280 NE Cascades Pkwy',NULL,'Portland','Oregon','97220','503 205 6611',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-28 20:19:34','Building Operator Cert. LEVEL 1 - Portland','Wade','Matthews','wmatthews@threeriverscasino.com','07/21/1986','Maintenance Tech 1','Three Rivers Casino Resort','5647 Hwy 126',NULL,'Florence','Oregon','97439','541-991-7140','541-902-2966',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-08-31 14:52:41','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jeff','Flaherty','Jflahe1@gmail.com','06/03/1975',NULL,NULL,'PO Box 626',NULL,'Sherwood','Oregon','97140','503-330-1443',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-01 21:38:55','Building Operator Cert. LEVEL 1 - Portland','Don','Gasser','dgasser@melvinmark.com','04-29-1964','Building Engineer','Melvin Mark Co.','111 SW Columbia #1380',NULL,'Portland','Oregon','97201','503 849-7225',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-02 17:18:43','Building Operator Cert. LEVEL 1 - Portland','Kevin ','Pruitt','kevin_pruitt@beaverton.k12.or.us','01/01/1960','Custodial Field Supervisor','Beaverton School District','2180 SW 170th Ave',NULL,'Beaverton','Oregon','97003','503-209-2233',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-03 15:23:46','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Troy','Builta','troy.builta@mhcc.edu','01/10/1969','Building Information Specialist ','Mt Hood Community College','26000 SE Stark Street ','Facilities Mapping AC254','Gresham ','Oregon','97030','503-491-6056',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-09 18:11:19','Building Operator Cert. LEVEL 1 - Portland','Lydia','Neill','lydia.neill@oregonzoo.org','10/30/60','Project Manager','Oregon Zoo','4001 SW Canyon Rd',NULL,'Portland','Oregon','97221','503-9754522',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-15 15:55:32','Building Operator Cert. LEVEL 1 - Portland','Jesse','Flores','jesse.flores@oregonmetro.gov','02/12/1965','Construction Project Manager','Mertro','600 NE Grand Ave. ',NULL,'Portland','Oregon','97232','503-797-1507',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-15 21:13:51','Building Operator Cert. LEVEL 1 - Portland','Trung','Bui','trungtoanbui@gmail.com','10/24/1975','Maintenance Technician','Willamette View, Inc.','12705 SE River Rd',NULL,'Portland','Oregon','97222','503-502-4254',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-09-21 23:29:22','Building Operator Cert. LEVEL 1 - Portland','Douglas','Stephens','douglas.stephens@oregon.gov','04-26-63','Electrician 2','OR DAS','1240 Ferry Street SE',NULL,'Salem','Oregon','97301','503-373-2316',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-10-29 17:53:48','Click here to select...','Chad','Palmer','clear2care@gmail.com','5/28/1975',NULL,NULL,'1451 pine st',NULL,'Oroville','California','95965','5305345245',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-11-16 17:19:00','Building Operator Cert. LEVEL 1 - Portland','Heber','Garzaro','garzaroh@ohsu.edu','12/23/82','Facilities tech','ohsu','10221 ne 13th ave apt 2',NULL,'Vancouver','Washington','98686','5039565891',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 21:40:56','Building Operator Cert. LEVEL 2','Duane','Johnson','duane.johnson4@pcc.edu','08-31-1960','FOM III','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228337',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 21:44:52','Building Operator Cert. LEVEL 2','James','Gallien','james.gallien@pcc.edu','10-17-1979','FOM II','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717225504',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 21:51:15','Building Operator Cert. LEVEL 2','Steven','Morse','steven.morse@pcc.edu','12-25-1958','CAD/BIM System Admin','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228306',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 21:54:10','Building Operator Cert. LEVEL 2','Rich','Weber','rich.weber@pcc.edu','04-24-1963','Irrigation tech','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228348',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 21:56:11','Building Operator Cert. LEVEL 2','Sean','Scorby','sean.scorby@pcc.edu','09-14-1970','FOM III','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228113',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:00:21','Building Operator Cert. LEVEL 2','Bob','George','bob.george@pcc.edu','09-30-1966','FOM II','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228041',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:05:22','Building Operator Cert. LEVEL 2','Lucas','Blasdell','luke.blasdell@pcc.edu','07-08-1992','FOMS I','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228338',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:07:07','Building Operator Cert. LEVEL 2','Darren','Metcalfe','darren.metcalfe@pcc.edu','05-12-1966','Fire/Life Safety','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717226202',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:09:33','Click here to select...','John','Zalas','john.zalas15@pcc.edu','10-24-1960','Fire/Life Safety','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717224647',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:11:00','Building Operator Cert. LEVEL 2','Travis','Ebert','travis.ebert@pcc.edu','10-27-1977','Plumber','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228093',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:12:34','Building Operator Cert. LEVEL 2','Doug','Jay','djay@pcc.edu','01-09-1964','FOM III','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717227385',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:13:59','Click here to select...','Travis','Magee','travis.magee@pcc.edu','09-12-1964','FOMS I','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717227423',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:19:26','Click here to select...','Hank','Scarborough','henry.scarborough@pcc.edu','11-15-1958','FOM III','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717224328',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-22 22:21:02','Click here to select...','Mitch','Kilgore','mitch.kilgore@pcc.edu','08-31-1960','Maintenance Manager','Portland Community College','12000 SW 4th Avenue','CSB 314','Portland','Oregon','97219','9717228339',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-27 21:17:21','Click here to select...','Klaudja','Karaj','klaudjakaraj31@gmail.com','10/10/1992',NULL,NULL,'Tirana',NULL,'Tirana','Non-US','8874857487','7878784654684',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-28 19:59:05','2016 Energy Management Certificate (EMC)','Amrou','Saleh','amrou.saleh11@gmail.com','01-01-1966','Mr','Alpha Technologies','315 E PHELPS ST',NULL,'Gilbert','Arizona','85295','360-927-4342',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2015-12-31 21:54:46','Building Operator Cert. LEVEL 2','Jeremy','Boyd','jeremy.boyd@ikea.com','12-18-81','Facilities Manager','IKEA','IKEA US West Inc., #028',NULL,'Portland','Oregon','97220','5032056635',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-06 18:11:38','Building Operator Cert. LEVEL 2','Shane','Killian','Skillian@township-engineering.com','11/27/1987',NULL,NULL,'700 Ne Multnomah Suite 300',NULL,'Portland','Oregon','97232','5034071682',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:01:38','Building Operator Cert. LEVEL 2','Kelly','McIvor','Kelly.McIvor@vansd.org','12/08/56',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603134451',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:06:26','Building Operator Cert. LEVEL 2','Patti ','Wait','Patti.Wait@vansd.org','10/03/57',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603131615',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:10:11','Building Operator Cert. LEVEL 2','Steve','Horton','Steve.Horton@vansd.org','03/28/65',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603133229',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:16:56','Building Operator Cert. LEVEL 2','Jason','Ackley','Jason.Ackley@vansd.org','10/24/77',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603137981',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:21:14','Building Operator Cert. LEVEL 2','Brian','Thomas','Brian.Thomas@vansd.org','01/05/66',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132057',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:24:35','Building Operator Cert. LEVEL 2','Oren','Burt','Oren.Burt@vansd.org','03/15/48',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603133515',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:28:02','Building Operator Cert. LEVEL 2','Eugene','Boyer','Eugene.Boyer@vansd.org','10/28/62',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132323',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-21 16:31:36','Building Operator Cert. LEVEL 2','Jon','Weir','Jon.Weir@vansd.org','03/28/76',NULL,'Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603133310',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-26 16:10:48','Building Operator Cert. LEVEL 2','Duane','Durrow','thendricks@billnaito.com','07/10/1956','HVAC Technician','Bill Naito Co','2701 NW Vaughn St suite 323',NULL,'Portland ','Oregon','97210','503-224-6971',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-01-28 16:44:52','Building Operator Cert. LEVEL 1 - Salem','Brian','Randall','brian.randall@assurant.com','02/13/1959','Supervisor, Facilities Maintenance','Assurant Solutions','1880 14th Ave SE',NULL,'Albany','Oregon','97322','541-223-0220',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-01 17:32:20','Building Operator Cert. LEVEL 2','Ben','Bronson','benjamin.bronson@providence.org','05-19-1980','Maint Tech 3','Providence Hood River','1550 Brookside Drive',NULL,'Hood River','Oregon','97031','541.387.1140',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-10 10:38:19','Building Operator Cert. LEVEL 1 - Bend','Magbeu Arsene','Kpo','arsene.mak36@gmail.com','01/02/1979','IT technician','UN','kpo@outlook.com','kpo@un.org','Daloa','Non-US','807','+22508922392',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-12 21:44:44','Building Operator Cert. LEVEL 2','Brad','McMurphy','mcmurphb@reed.edu','04/12/89','Maintenance Specialist','Reed College','3203 SE Woodstock BLVD',NULL,'Portland','Oregon','97202','503-969-8496',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-16 23:06:15','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Thomas','Aichele','thomas.aichele@rockwellcollins.com','08/22/1979','ES&H Specialist','Rockwell Collins','27300 SW Parkway Avenue',NULL,'Wilsonville','Oregon','97070','5034040615','5034046975',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-16 23:14:12','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','John','Manser','john.manser@rockwellcollins.com','11/14/1958','Facilities Technician','Rockwell Collins','27300 SW Parkway Avenue',NULL,'Wilsonville','Oregon','97070','5034040615','5034040615',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-17 21:39:25','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Adam','Hertel','ahertel@lclark.edu',1261977,NULL,'Lewis & Clark College','0615 SW Palatine Hill Rd',NULL,'Portland','Oregon','97219','5035162199',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-18 18:02:44','Building Operator Cert. LEVEL 1 - Portland','Timothy','Gendreau','Timothy.Gendreau@providence.org','04/15/1963','Maint. Tech. 1','Providence Hood River','1950 Sterling Place',NULL,'Hood River','Oregon','97031','5413871140','5413871140',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-18 20:00:50','Building Operator Cert. LEVEL 1 - Portland','Jordan','Pedersen','Jordan.Pedersen@providence.org','05/30/1992','Maint. Tech. 1','Providence Hood River','1950 Sterling Place',NULL,'Hood River','Oregon','97031','5413871140','5413871140',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 11:13:33','Please select a Training...','Richard','Pickerel','freedomsolar1@gmail.com','02/11/1980','Solar panel installation','Freedom Solar LLC - Orchard Park, NY','3461 North Benzing Rd.',NULL,'Orchard Park','New York','14127','8007279717','8007279717',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:16:26','Building Operator Cert. LEVEL 1 - Portland','Matthew','Wellnitz','matthew.wellnitz15@pcc.edu','03-13-1959','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717224922',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:19:23','Building Operator Cert. LEVEL 1 - Portland','Frank ','Harris','fharris@pcc.edu','02/03/1956','Custodial Manager','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717224922',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:21:34','Building Operator Cert. LEVEL 1 - Portland','Donna','Bezio','donna.bezio@pcc.edu','02/04/1970','Project Manager','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717224922',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:23:06','Building Operator Cert. LEVEL 1 - Portland','Mike','Jewett','michael.jewett16@pcc.edu','03/121963','PM Coordinator','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:25:30','Building Operator Cert. LEVEL 1 - Portland','David','Warren','david.warren5@pcc.edu','06/09/1970','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:27:09','Building Operator Cert. LEVEL 1 - Portland','Karen ','Bjornstrom','karen.bjornstrom@pcc.edu','10/10/1965','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:30:04','Building Operator Cert. LEVEL 1 - Portland','Roy','Shipman','harold.shipman15@pcc.edu','05/25/1971','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:32:03','Building Operator Cert. LEVEL 1 - Portland','Evan','Smith','evan.smith@pcc.edu','09/19/1985','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:33:37','Building Operator Cert. LEVEL 1 - Portland','Lisa','Howe','lisa.howe1@pcc.edu','03/28/1964','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:35:37','Building Operator Cert. LEVEL 1 - Portland','Anthony ','Cullen','anthony.cullen@pcc.edu','12/20/1988','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:39:21','Building Operator Cert. LEVEL 1 - Portland','Thomas','Schwartz','thomas.schwartz@pcc.edu','01/15/1986','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:43:17','Building Operator Cert. LEVEL 1 - Portland','Jeff','Edwards','jeff.edwards1@pcc.edu','11/05/1957','EH&S','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:44:41','Building Operator Cert. LEVEL 1 - Portland','Cen','Reers','ceneth.reers@pcc.edu','06/21/1966','Custodian','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-02-22 22:46:36','Building Operator Cert. LEVEL 1 - Portland','Jimmy','Hood','jimmy.hood@pcc.edu','02/03/1974','FOM II','Portland Community College','12000 SW 4th Avenue','CSB 207','Portland','Oregon','97219','9717228486','9717228470',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-03-17 16:14:52','Building Operator Cert. LEVEL 1 - Portland','Rudy','Mijo','mijor@oes.edu','7/10/1965','Maintenance Supervisor','Oregon Episcopal School','6300 sw Nicol rd.',NULL,'Portland','Oregon','97223','5034169386','5032931105',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-03-22 17:08:32','Building Operator Cert. LEVEL 1 - Portland','Mike','Wallace','KLibby@clarkpud.com','03/06','Energy Services Counselor','Clark Public Utilities','1200 Fort Vancouver Way','PO Box 8900','Vancouver','Washington','98668','360-992-3029','360-992-3038',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-03-22 17:21:10','Building Operator Cert. LEVEL 1 - Portland','Amber','Hall','KLibby@clarkpud.com','03/19','Energy Services Counselor','Clark Public Utilities','1200 Fort Vancouver Way','PO Box 8900','Vancouver','Washington','98668','360-992-3029','360-992-3038',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-03-22 22:45:50','2016 Energy Management Certificate (EMC)','Emmanuel ','Iwong','emmanuel@solarsister.org','28/09/1984','Mr','Solar Sister','The Resource Space, 12, Mabinuori Street, Gbagada',NULL,'Lagos','Non-US','2341','+2348160256670','+2348160256670',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-06-30 19:32:23','Building Operator Cert. LEVEL 1 - Salem','Marie','Davis Anderson','davis-anderson_marie@salkeiz.k12.or.us','01-24-1979','Custodian 2','salem keizer school district','935 hanson avenue S',NULL,'Salem','Oregon','97302','503-999-7022',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-06-30 18:46:33','Building Operator Cert. LEVEL 1 - Salem','Gerald','Claassen','claassen_gerald@salkeiz.k12.or.us','11/19/1942','Custodian 2','Salem/Keizer School District','3495 Liberty Rd. S.',NULL,'Salem','Oregon','97302','503-949-8111',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-04-26 20:57:24','2016 Energy Management Certificate (EMC)','Aaron','Presberg','apresberg@pps.net','04/01/1991','Energy Program Manager','Portland Public Schools','501 N. Dixon Street',NULL,'Portland','Oregon','97227','503-916-3279',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-03-31 23:05:10','Building Operator Cert. LEVEL 1 - Portland','Kristen','LaLonde','kristen.lalonde@odot.state.or.us','08/27/1983','Energy Analyst','Oregon Department of Transportation','200 Hawthorne Ave SE Ste B240',NULL,'Salem','Oregon','97301','5038965877',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-04-23 21:53:21','2016 Energy Management Certificate (EMC)','Adewumi','Alabi','dewumial@gmail.com','23-07-1989','Miss','Fidelity Bank Plc','10b, Thompson Okonkwo Street, Off Sanusi Fafunwa',NULL,'Victoria Island','Non-US','101245','+2348031161969',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-06-30 18:22:24','Building Operator Cert. LEVEL 1 - Salem','Michael','Conaway','conaway_mike@salkeiz.k12.or.us','10/20/59','LEAD CUSTODIAN 2',NULL,'466 RICHMOND AVENUE SE ',NULL,'Salem','Oregon','97301','503 203 3912',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-06-30 18:12:10','Building Operator Cert. LEVEL 1 - Salem','James','Thran','Thran_jim@SalKeiz.k12.or.us','3/7/68','Costodian 2','Salem-Keizer School District','6521 Cottonwood St. N.E.',NULL,'Salem','Oregon','97317','(503)363-5442',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-06-09 07:12:27','2017 Energy Management Certificate (EMC)','Dayne','Goodheart','daynegoodheart@gmail.com','01/05/1989',NULL,NULL,'28022 Over the Hill Drive',NULL,'Lapwai','Idaho','83540','2085537988',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-04-18 20:46:37','Please select a Training...','Larry','Miles','mileslarry54@yahoo.com',42950,NULL,NULL,'7037schroll st',NULL,'Lakewood','California','90713','5622343674',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-04-30 18:44:32','2016 Energy Management Certificate (EMC)','Eric','Gribin','egribin@tunxis.edu','3/16/58','Director','Energy Management Program','271 Scott Swamp Road',NULL,'Farmington','Connecticut','06032','860-773-1318',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-05-04 16:04:17','2016 Energy Management Certificate (EMC)','Emmanuel','Iwong','emmanuel@solarsister.org','28/09/1984','Mr','Solar Sister','3rd Avenue, F close, Plot 1311,Box 166, Festac Town, Lagos State Nigeria.','Office, 12A Dawudu Mabinuori Street Gbagada','Lagos','Non-US','2341','+2348160256670','8160256670',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-05-24 02:21:47','2016 Energy Management Certificate (EMC)','Harvey','Scott','hhscott94@gmail.com','02/21/2994',NULL,NULL,'1315 N. 10th Avenue.  Apt.  C',NULL,'Hanford','California','93230','5594693774',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-06-30 19:53:43','Building Operator Cert. LEVEL 1 - Salem','Walton','Richard','walton_rick@salkeiz.k12.or.us','4/27/61','Custodian 2','Salem Keizer school district','3630 state street Salem OR 97301-5316',NULL,'Salem','Select...','97306','503-991-8936',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-01 02:10:39','Please select a Training...','David','Cozort','2dave62@gmail.com','04-08-1962','Custodian','Salem keizer schools disterct ','2112 Linwood Nw','1212 Linwood','Salem','Oregon','97304','503-399-3457','503-399-3097',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-05 21:31:04','Building Operator Cert. LEVEL 1 - Salem','Jeffrey','Heater','heater_jeffrey@salkeiz.k12.or.us','10-02-1976',NULL,NULL,'3630 State Street ',NULL,'Salem','Oregon','97301','503-399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 14:17:50','Building Operator Cert. LEVEL 1 - Salem','Mateo','Gonzalez','Gonzalez_Mateo@salkeiz.k12.or.us','9/21/62','Custodian 2','SKSD','725 Market St. N.E..',NULL,'Salem','Oregon','97301','503-399-3151',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:27:58','Building Operator Cert. LEVEL 1 - Salem','Leticia','Camacho','camacho_leticia@salkeiz.k12.or.us','03/02/1988','Custodian 2','Salem-Keizer School District','2450 Lancaster Dr NE',NULL,'Salem','Oregon','97305','503-399-3215',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:30:36','Building Operator Cert. LEVEL 1 - Salem','Timmy','Fields','fields_timmy@salkeiz.k12.or.us',103163,NULL,NULL,'995 mcgilcrest st',NULL,'Salem','Oregon','97302','971 208 1541',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:33:26','Building Operator Cert. LEVEL 1 - Salem','Guillermo','Olivan','olivanguillermo@yahoo.com',62572,NULL,NULL,'4810 sunnyside rd SE Apt 12',NULL,'Salem','Oregon','97302','503 409 4003',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:36:30','Building Operator Cert. LEVEL 1 - Salem','James','Fritch','fritch_james@salkezi.k12.or.us','1/81964',NULL,NULL,'4348 buttercup ave ne',NULL,'Salem','Oregon','97301','5032694995',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:39:05','Building Operator Cert. LEVEL 1 - Salem','Vlad','Sjakovs','latviausa@yahoo.com','11/13/61',NULL,NULL,'1378 Angie way NE',NULL,'Keizer','Oregon','97303','9712182828',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:42:08','Building Operator Cert. LEVEL 1 - Salem','Carmelo','Gonzalez','gonzalez_jcarmen@salkezi.k12.or.us',2360,NULL,NULL,'4145 cranston street',NULL,'Salem','Oregon','97317','5039109026',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 17:42:13','Building Operator Cert. LEVEL 1 - Salem','Ana','Soto','SOTO_ANA@salkeiz.k12.or.us','04/ 05/195','Custodian 2','Salem-Keizer School District','4700 Arizona Avenue NE ','SCOTT ELEMENTARY ','Salem','Oregon','97305','503-949-6903',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 18:09:48','Building Operator Cert. LEVEL 1 - Salem','John','Garber','jmichaelgarb@gmail.com',33052,NULL,NULL,'460 vista ave se',NULL,'Salem','Oregon','97302','503 949 6367',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 19:03:28','Building Operator Cert. LEVEL 1 - Salem','Houch','Meas','meas_houch@salkeiz.k12.or.us','07/07/1975','Custodian 2','sksd','5130 copper creek loop ne ',NULL,'Salem','Oregon','97305','503-999-8416',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 19:19:12','Building Operator Cert. LEVEL 1 - Salem','Denton','VAN WYCK','VANWYCK_DENNY@SALKEIZ.K12.OR.US','08/03/1960','CUSTODIAN 2','SALEM -KEIZER SCHOOL DISTRICT','3630 STATE STREET',NULL,'Salem','Oregon','97301','503-399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 21:18:33','Building Operator Cert. LEVEL 1 - Salem','Shauna','Coleman','coleman_shauna@salkezi.k12.or.us','9/6/70',NULL,NULL,'1076 royalty drive',NULL,'Salem','Oregon','97301','5039104569',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-06 21:31:51','Building Operator Cert. LEVEL 1 - Salem','Ana','Soto','Soto_ana@salkeiz.k12.or.us ','04/05/1956','Custodian 2','Salem keizer school District ','4700 Arizona Ave. NE','Scott Elementary ','Salem ','Oregon','97305','503- 399- 3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-07 14:59:58','Building Operator Cert. LEVEL 1 - Salem','Jonathan','Scott','mrjscott6@yahoo.com','10-06-1980',NULL,NULL,'6170 McLeod ln ne',NULL,'Keizer','Oregon','97303','5039106739',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-07 16:33:55','Building Operator Cert. LEVEL 1 - Salem','John','Greer','greer_john@salkeiz.k12.or.us',5656,NULL,NULL,'1840 lorian ct SE',NULL,'Salem','Oregon','97302','5033646828',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-07 16:42:24','Building Operator Cert. LEVEL 1 - Salem','John','Garber','garber_john@salkeiz.k12.or.us',33052,NULL,NULL,'460 vista ave se',NULL,'Salem','Oregon','97302','5039496367',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-07 23:40:05','Building Operator Cert. LEVEL 1 - Salem','Jim','Fritch','fritch_jim@salkeiz.k12.or.us',1864,NULL,NULL,'4348 buttercup ave ne',NULL,'Salem','Select...','97301','5032694995',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-08 00:25:52','Building Operator Cert. LEVEL 1 - Salem','David','Cozort','2dave62@gmail.com','04-08-1962','Custodian 2','custodial services','775 Boone Rd SE #14',NULL,'Salem','Oregon','97306','5035595294','5035595294',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-08 15:40:11','Building Operator Cert. LEVEL 1 - Salem','Vernita','Maisel','maisel_vernita@salkeizk12.or.us','05-19-1956','Custodain 2',NULL,'849  45th Ave NE',NULL,'Salem','Oregon','97301','503 399-5548',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-08 18:07:44','Please select a Training...','TEST','TEST','S@gmail.com','TEST',NULL,NULL,'TEST',NULL,'TEST','Florida','97224','4659087495',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-08 18:28:55','Building Operator Cert. LEVEL 1 - Salem','Shauna','Coleman','coleman_shauna@salkeiz.k12.or.us','09/06/1970','Janitor','salemkeizerschools','1076 royalty dr ne',NULL,'Salem','Oregon','97301','5039104569',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-11 14:25:25','Building Operator Cert. LEVEL 1 - Salem','Mickey','Mcdowell','mickey_mcdowel@salkeiz.k12.or.us','03/05/1970','Custodail 4',NULL,'3632 state str ',NULL,'Salem','Oregon','97301','503/884/0326',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-15 00:25:42','Building Operator Cert. LEVEL 1 - Salem','Vernita','Maisel','vernitam56@gmail.com','5-19-56','Custodian 2','Salem Keizer Schools','849  45Th Ave NE',NULL,'Salem','Oregon','97301','503 399-5548',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-18 19:41:38','Building Operator Cert. LEVEL 1 - Salem','Guillermo','Olivan','olivanguillermo@yahoo.com','6-25-1972','Lead Custodian ','Salemkeizer School Distrit','4810 Sunnyside Rd Se ','Apt.12','Salem ','Oregon','97302','503 409 4003',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-18 20:29:56','Building Operator Cert. LEVEL 1 - Salem','Vlad','Sjakovs','SJAKOVS_VLAD@salkeiz.k12.or.us','11-13-61','Custodian 2','Salem/Keizer School District','1378 Angie way NE',NULL,'Keier','Oregon','97303','9712182828',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-21 19:54:03','Building Operator Cert. LEVEL 1 - Salem','Jonathan','Scott','mrjscott6@yahoo.com','10-06-1980','Custodian','Salem/Keizer school district','6170 Mcleod ln ne',NULL,'Keizer','Oregon','97303','503-910-6739',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-21 19:57:07','Building Operator Cert. LEVEL 1 - Salem','Barb','Fuller','bjfuller731@aol.com','09/58/59','C','Salem/Keizer school district','5500 reed rd',NULL,'Salem','Oregon','97306','503 3993178',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-21 20:02:47','Building Operator Cert. LEVEL 1 - Salem','Carmelo','Gonzalez','gonzalez_jcarmen@salkeiz.k12.or.us',20360,NULL,NULL,'4145 cranston St',NULL,'Salem','Oregon','97317','5039109026',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-07-29 03:09:48','Building Operator Cert. LEVEL 1 - Portland','Brent','Paul','paulb@loswego.k12.or.us','07*07*1979',NULL,NULL,'4200 douglas way',NULL,'Lake Oswego','Oregon','97034','5032693700',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-08-02 20:44:48','Building Operator Cert. LEVEL 1 - Portland','Sara ','Schooley','Sara.Schooley@portlandoregon.gov','9/17/1981','Program Coordinator','City of Portland','1120 SW 5th Ave ','Room 1204','Portland','Oregon','97204','5038236928','5038239114',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-08-03 21:02:28','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Justin','James','jjkjpdc@gmail.com','4-4-69','Facilities/Construction Manager ',NULL,'22937 se Filbert rd.',NULL,'Eagle Creek','Oregon','97022','5034804155',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-08-20 03:56:28','Building Operator Cert. LEVEL 1 - Oregon Coast','Clinton','Woodall','Clintonw901@gmail.com','03/14/1994',NULL,NULL,'16 Annie Lou Sanders Ave.',NULL,'Butler','Georgia','31006','4782572519',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-08-23 18:39:25','Building Operator Cert. LEVEL 1 - Portland','John','Andrews','John.Andrews@portlandoregon.gov','02/24/1977',NULL,NULL,'1120 SW 5th Ave',NULL,'Portland','Oregon','97204','503-823-8811',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-08-23 21:48:17','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jason','Davis','jason.davis@ihs.gov','09/11/1972','General Engineer','Indian Health Service','1414 NW Northrup Street','Suite 800','Portland','Oregon','97209','503-414-7777',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-02 20:25:41','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Levi','Edwards','edwarlev@ohsu.edu','6/17/1976','Maintenance Tech','CBRE','2730 sw moody ave 97201',NULL,'Portland','Oregon','97201','9716452037',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-07 21:29:34','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jacob','Jones','dana.lundy@co.jefferson.or.us','06/13/92','Maint Tech II','Jefferson County Buildings and Grounds','439 SW Fairgrounds Road',NULL,'Madras','Oregon','97741','541 475 6288','541 475 2586',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-08 17:54:14','Building Operator Cert. LEVEL 1 - Oregon Coast','TEST','TEST','johndoe@gmail.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97405','TEST',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-14 23:54:17','Please select a Training...','Frank','Lyonga','djfranklopez20033@gmail.com','05/24/1993',NULL,NULL,'14004 dunleaf arc way ',NULL,'Norcross','Georgia','30093','6787179686',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-16 21:29:45','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Conrad','Sweet','csweetgoss@aol.com','12/26/1954',NULL,NULL,'14305 NE 81st St',NULL,'Vancouver','Washington','98682','360 936 9941',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-19 17:59:06','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Buck ','Potter','potterb@lanecc.edu','02/18/1980','Facilities and Maintenance Tech','Lane Community College','4000 East 30th Ave.',NULL,'Eugene','Oregon','97405','(541) 463-4832','(541) 997-8448',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-20 00:15:12','Building Operator Cert. LEVEL 1 - Portland','Joseph','Chand','Josephsuresh.chand@portlandoregon.gov ','05/07/57','Facilities Lead','City of Portland','1120 SW 5th Ave.',NULL,'Portland ','Oregon','97204','503 823 8214','503 823 1064',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-21 19:29:11','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brian','Wilkins','wilkinsb@oes.edu','04-25-1975','Maintenance tech 1','oregon episcopal school','6300 sw nicol rd',NULL,'Portland','Oregon','97223','9715636154',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-21 19:37:30','Building Operator Cert. LEVEL 1 - Portland','Jeff','Schlaht','schlahtj@oes.edu',9271978,'Maintenance','Oregon Episcopal School','6300 sw nicol rd',NULL,'Portland','Oregon','97223','5032467771',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-21 19:41:49','Building Operator Cert. LEVEL 1 - Portland','Jeff','Von Ahn','vonahnj@oes.edu','09/30/59','Maintenance Tech 1','Oregon Episcopal School','6300 SW Nicol Road',NULL,'Portland','Oregon','97223','503-314-1707',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-21 22:10:04','Please select a Training...','Ray','Volkers','ray.volkers@cityofalbany.net','12-28-71','Building maintenace 2','city of albany','333 Broadalbin Streeet SW ',NULL,'Albany','Oregon','97321','541-974-4144',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-21 22:43:58','Building Operator Cert. LEVEL 1 - Portland','Dan','Thompson','thompsond@oes.edu','08-13-60','Maint. 1 ','Oregon Episcopal School','6300 SW Nicol Road',NULL,'Portland','Oregon','97223','503-246-7771',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 19:36:34','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','James ','Reazin','James.Reazin@vansd.org','9/20/1949','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603131535',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 19:39:55','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brian','McCarthy','Brian.McCarthy@vansd.org','10/21/1958','Vancouver Public Schools','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603131428','3603132057',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 19:44:56','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Joseph ','McDonald','Joe.McDonald@vansd.org','6/25/83','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603133615',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 19:48:28','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','George','Deishl','George.Deishl@vansd.org','12/28/1969','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603137981',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 19:52:14','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Allen ','Edwards','Allen.Edwards@vandsd.org','10/28/1957','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132004',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 19:56:23','Please select a Training...','Jeff','McCoy','Jeffery.McCoy@vansd.org','7/30/1958','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132569',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 20:00:23','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jame','Newman','James.Newman@vansd.org','7/19/1960','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132615',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 20:02:41','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Eugene','Camacho','Gene.Camacho@vansd.org','12/25/1953','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603133022',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 22:03:13','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Ray','Volkers','ray.volkers@cityofalbany.net','12-28-71','Building maintenace 2','city of albany','333 Broadalbin Streeet SW ',NULL,'Albany','Oregon','97321','541-974-4144',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 22:07:46','Building Operator Cert. LEVEL 1 - Bend','TEST','TEST','westerhome@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97405','TEST',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 22:17:46','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Ray','Volkers','ray.volkers@cityofalbany.net','12/28/1971',NULL,'City of Albany','333 Broadalbin Street SW',NULL,'Albany','Oregon','97321','541-791-0083',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-22 22:19:40','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Allen ','Edwards','Allen.Edwards@vandsd.org','10/28/1957','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132004',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-26 21:05:59','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jeanette','Brumitt','Jeanette.Brumitt@vansd.org','08/23/1956','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132415',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-26 22:30:00','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Allen ','Edwards','Allen.Edwards@vandsd.org','10/28/1957','Building Operator','Vancouver Public Schools','PO Box 8937',NULL,'Vancouver','Washington','98668','3603132004',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-26 22:48:46','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Rihana','Mungin','rmungin@pdx.edu','12/14/1987','Preventative Maintenance Planner','Portland State University - Facilities and Property Management ','PO Box 751',NULL,'Portland','Oregon','97201','503-725-4346','503-725-4329',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-26 22:58:54','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Laurel ','Brown','laurel.brown@pdx.edu','7/20/1970','Assistant Director for Zone Maintenance','Portland State University - Facilities and Property Management ','PO Box 751',NULL,'Portland','Oregon','97201','503.725.4390 ',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-26 23:02:31','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','James','Muir','jamuir@pdx.edu','12/11/1976','Trades Maintenance Coordinator ','Portland State University - Facilities and Property Management ','PO Box 751',NULL,'Portland','Oregon','97201','503-997-7984',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-26 23:07:47','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','John ','Malmberg','malmberj@pdx.edu ','8/20/1980','Systems Maintenance Mechanic','Portland State University - Facilities and Property Management ','PO Box 751',NULL,'Portland','Oregon','97201','971-275-7155',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-09-27 19:04:18','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Allen','Edwards','allen.edwards@vansd.org','10/28/57','Building Operator','Vancouver SD','PO Box 8937',NULL,'Vancouver','Washington','98668','360-313-4724',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-10-11 22:43:02','2017 Energy Management Certificate (EMC)','Nicholas','Woltzen','nick.woltzen@gmail.com','09/06/1991','Administrative Analyst','Lumenal Lighting, LLC.','21706 66th Avenue W.',NULL,'Mountlake Terrace','Washington','98043','425-367-1975',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-10-15 04:11:14','2017 Energy Management Certificate (EMC)','Mih ','Johnes Cheng','mcjohnes@yahoo.com','20/09/78','Mr.','Cameroon Baptist Convention Health Services Hesco Water Project','BP 152 Tiko',NULL,'Buea','Non-US','00237','237 677048488',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-11-01 21:15:20','Building Operator Cert. LEVEL 2','Christopher','Stice','sticechristopher1987@gmail.com','06/23/1987',NULL,NULL,'68 North Jefferson Apt #4',NULL,'Eugene','Oregon','97402','4582100131','4582100131',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-11-22 03:18:57','2017 Energy Management Certificate (EMC)','Jamiu Olusola','Dada','mmooccll@yahoo.com','08/16/1974',NULL,'ROYGBIV IDEAL SERVICE NIGERIA LIMITED','C/O 9 IMMORTAL CHURCH STREET OFF AYANWALE','TOLUWANI BUS/STOP','Ikotun','Non-US','23401','+2348091013981',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-12-07 16:48:54','Building Operator Cert. LEVEL 1 - Portland','Renee','Johnson','renee@fortgeorgebrewery.com','09-08-79','Sustainability Director','Fort George Brewery','1483 Duane St',NULL,'Astoria','Oregon','97103','971-235-5546',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-12-07 16:50:17','Building Operator Cert. LEVEL 1 - Portland','Renee','Johnson','renee@fortgeorgebrewery.com','09-08-79','Sustainability Director','Fort George Brewery','1483 Duane St',NULL,'Astoria','Oregon','97103','971-235-5546',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-12-17 18:08:24','2017 Energy Management Certificate (EMC)','Venkata Subba Rao','Pasupuleti','subbaraopasupuleti1955@gmail.com','15-12-1955','Mr','BAMBINO PASTA FOOD INDUSTRIES PVT LTD,LT','402,JANAPRIYA PRAMILA ENCLAVE,','UMANAGAR, KUNDANBAGH,','Hyderabad','Select...','500016','9491144858',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2016-12-17 18:14:18','2017 Energy Management Certificate (EMC)','Venkata Subba Rao','Pasupuleti','subbaraopasupuleti1955@gmail.com','15-12-1955','Mr','BAMBINO PASTA FOOD INDUSTRIES PVT LTD,LT','402,JANAPRIYA PRAMILA ENCLAVE,','UMANAGAR, KUNDANBAGH,','Hyderabad','Non-US','500016','9491144858','9491144858',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-03 19:40:31','Building Operator Cert. LEVEL 1 - Portland','Vitaliy','Gabor','vitaliygabor@gmail.com','01/26/1989','Facility Maintenance ','TIS','16043 S Bennett Ln',NULL,'Oregon City','Oregon','97045','9712274563',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-06 20:58:36','Building Operator Cert. LEVEL 1 - Pendleton','Jason','McAndrew','jason.mcandrew@umatillaelectric.com','4/17/1974','Material Administrator','Umatilla Electric Cooperative','750 W Elm Ave','PO Box 1148','Hermiston','Oregon','97838','(541)564-4350',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-06 22:16:53','Building Operator Cert. LEVEL 1 - Pendleton','Shelley','Liscom','shelley.liscom@stanfieldsd.org','7/18/1967','Superintendent','Stanfield School District','1120 N Main',NULL,'Stanfield','Oregon','97875','541.449.8766','541.449.8768',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-10 16:12:05','Building Operator Cert. LEVEL 1 - Pendleton','Glen','Saul','glen.saul@umatillaelectric.com','02-03-1985','Facilities Administrator','Umatilla Electric','750 W Elm',NULL,'Hermiston','Oregon','97838','541-564-4404',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-13 17:14:06','Building Operator Cert. LEVEL 1 - Pendleton','Rich','Long','rich.long@imesd.k12.or.us','01/22/1969','Facilities','IMESD','2001 Sw Nye Ave.',NULL,'Pendleton','Oregon','97801','541-215-2155','541-276-4252',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-17 12:52:57','Building Operator Cert. LEVEL 1 - Pendleton','Heinrich','Ngoro','hngoro24@gmail.com','10-05-1980','Mr','private','p o box 5103 divundu','kavango east','Windhoek','Non-US','9000','+264812045591',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-17 18:16:53','Building Operator Cert. LEVEL 1 - Pendleton','Greg','Jennings','shill@bluemountainhospital.org','01/01/1967','Facilities','Blue Mountain Hospital','170 Ford Road',NULL,'John Day','Oregon','97845','541-575-1311',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-18 00:11:31','Building Operator Cert. LEVEL 1 - Pendleton','Greg','Jennings','gjennings@bluemountainhospital.org','11/17/60',NULL,'Blue Mountain Hospital','170 Ford Road',NULL,'John Day','Oregon','97845','303-356-8471',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-18 22:14:58','Building Operator Cert. LEVEL 1 - Pendleton','Felipe ','Caldera Jr','felipe.caldera@hermiston.k12.or.us','02/24/1992','Maintenance','Hermiston School District','1150 S HWY 395 H92',NULL,'Hermiston','Oregon','978358','541-626-9929',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-25 17:36:03','Building Operator Cert. LEVEL 1 - Pendleton','Danny','Brown','danny.brown@hermiston.k12.or.us','03/12/1961','Maintenance II','Hermiston School District','505 S 1st ',NULL,'Hermiston','Oregon','97838','541.667.6081','541.667.6095',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-25 17:38:03','Building Operator Cert. LEVEL 1 - Pendleton','Mike','Austin','mike.g.austin@doc.state.or.us','03/07/1969','FET 3','DOC','3920 East Ashwood Road',NULL,'Madras','Oregon','97741','541-325-5200',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-30 23:59:26','Building Operator Cert. LEVEL 1 - Pendleton','Mickey','McMahan','mickey.j.mcmahan@doc.state.or.us','01/01/1976','Facility Energy Tech 3','OR Dept. of Corrections','WCCF Physical Plant','20654 Rabbit Hill Road','Lakeview','Oregon','97630','541-947-8389','541-947-8241',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-31 20:06:41','Building Operator Cert. LEVEL 1 - Pendleton','Darrell','Moss','darrell.j.moss@doc.state.or.us','03/17/75','MOS','ODOC','82911 Beach Access Rd.',NULL,'Umatilla','Oregon','97882','541-922-2184',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-01-31 22:05:17','Building Operator Cert. LEVEL 1 - Pendleton','Daniel','McQuisten','dnmcq@yahoo.com','10/12/1980','Maintenance Foreman','Baker County','1995 3rd st',NULL,'Baker City','Oregon','97814','541-523-6416',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-01 18:07:07','Building Operator Cert. LEVEL 1 - Pendleton','Patrick','Thomas','patrick.s.thomas@doc.state.or.us','7/13/1975','Facility Energy Technician 2/ Electrician 2','ODOC','3600 13TH Street',NULL,'Baker City','Oregon','97814','541-523-6680 EX',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-03 23:54:59','Building Operator Cert. LEVEL 1 - Pendleton','Joseph','Whitaker','joe.a.whitaker@doc.state.or.us','08/04/1968','Plumber','ODOC','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-278-7308',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-03 23:57:52','Building Operator Cert. LEVEL 1 - Pendleton','Tyler','Phelps','tyler.l.phelps@doc.state.or.us','06/11/1981','Physical Plant Asst. Manager','ODOC','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-278-7303',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-03 23:59:50','Building Operator Cert. LEVEL 1 - Pendleton','Reg','Freeman','reg.d.freeman@doc.state.or.us','06/06/71','FET 3','ODOC','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-278-7311',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-09 00:46:53','2017 Energy Management Certificate (EMC)','Scott','Morris','amber@oegreen.com','05-17-1970','Energy Analyst','Oregon Energy Green','1215 Stowe Avenue',NULL,'Medford','Oregon','97501','5412002000',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-13 23:12:21','Building Operator Cert. LEVEL 1 - Pendleton','David','Franklin','dave.franklin@wildhorseresort.com','07/16/1963','Facilities Director','Wildhorse Resort Casino','46510 Wildhorse Blvd',NULL,'Pendleton','Oregon','97801','541-966-1540','541-278-2493',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-14 20:50:27','Building Operator Cert. LEVEL 1 - Pendleton','Samuel','Spino','sam.spino@tamastslikt.org','10/22/1987',NULL,NULL,'47106 Wildhorse BLVD',NULL,'Pendleton','Oregon','97801','541-429-7728',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-15 20:47:34','Building Operator Cert. LEVEL 1 - Pendleton','Frank','Longhorn','frank.longhorn@stanfieldsd.org','5/18/1959','Facilities Coordinator','Stanfield School District','1120 N Main',NULL,'Stanfield','Oregon','97875','541-449-8766','541-449-8768',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-16 17:25:05','2017 Energy Management Certificate (EMC)','Tim','Hendricks','thendricks@billnaito.com','09/12/1958','Director of Facilities and sustainability Mgm','Bill Naito Company','2701 NW Vaughn ST suite 323',NULL,'Portland','Oregon','97210','503-224-6971',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-20 03:01:25','2017 Energy Management Certificate (EMC)','Sreekesh','Pathal','mailingsreekesh@gmail.com','16-12-1980','Mr.','Halliburton','Flat #2073, Sobha Sunscape, Nagegowdanapalya,Bengaluru , Karnataka , India',NULL,'Bengaluru','Non-US','560062','+919567696203',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-22 18:56:42','Building Operator Cert. LEVEL 1 - Pendleton','Joedy','Marlatt','joedy.l.marlatt@doc.state.or.us','04/29/62','Corrections Electrician III','DOC / EOCI','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-278-7315',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-27 15:48:07','2017 Energy Management Certificate (EMC)','Nicholas','Wolson','nwilson9@hawaii.edu','11/23/1991','Solar Installer','Self','94-205 Kaloli Pl.',NULL,'Waipahu','Hawaii','96797','(808)379-8850',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-27 19:33:23','Building Operator Cert. LEVEL 1 - Pendleton','Gary','Thompson','gary.w.thompson@state.or.us','07/06/1967','Electrician 2','DOC/Two Rivers C.I.','82911 Beach Access Road',NULL,'Umatilla','Oregon','97882','541-922-2182',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-28 19:51:28','Building Operator Cert. LEVEL 1 - Pendleton','Ron','Hayward','ron.hayward@wildhorseresort.com','09-12-1962','HVAC Specialist','Wildhorse Resort Casino','46510 Wildhorse Blvd',NULL,'Pendleton','Oregon','97801','541-379-7986',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-02-28 21:05:34','Building Operator Cert. LEVEL 1 - Pendleton','Thad','Jackson','thad.jackson@wildhorseresort.com','03-11-1970','Facilities Supervisor','Wildhorse Resort Casion','46510 Wildhorse Blvd',NULL,'Pendleton','Oregon','97801','541-379-7986',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-01 17:16:14','Building Operator Cert. LEVEL 1 - Pendleton','Brian','Paulson','srf01@grh.org','09/22/81','Facilities Technician','Grande Ronde Hospital','900 Sunset Dr',NULL,'La Grande','Oregon','97850','541-963-1500',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-02 17:06:09','Building Operator Cert. LEVEL 1 - Pendleton','Jonathon','Rankin','jhr01@grh.org',3261985,'Maintenance Worker','Grande Ronde Hospital','900 Sunset',NULL,'La Grande','Oregon','97850','541-963-1500','541-963-1835',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-06 21:15:07','Please select a Training...','Barry ','Kamphuis','Barry.P.Kamphuis@doc.state.or.us','12/22/1961','HVAC Tech','Two Rivers Correctional Inst. ','82911 Beach Access Road ',NULL,'Umatilla','Oregon','97882','541-922-2182','541-922-2180',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-15 19:38:26','Building Operator Cert. LEVEL 1 - Pendleton','Brad','Miltenberger','brad.c.miltenberger@doc.state.or.us','03/05/75','Electrician II','ODOC/EOCI','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-278-7315',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-15 19:46:05','Building Operator Cert. LEVEL 1 - Pendleton','Robert','Cecil','ryan.cecil@doc.state.or.us','12/15/75','Facility Maintenance Specialist','ODOC/EOCI','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-278-7305',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-15 19:53:21','Building Operator Cert. LEVEL 1 - Pendleton','Rod','Hillmick','rod.t.hillmick@doc.state.or.us','05/14/66','Facility Maintenance Specialist','ODOC/EOCI','2500 Westgate',NULL,'Pendleton','Oregon','97801','541-2787316',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-22 19:30:25','Building Operator Cert. LEVEL 1 - Portland','Caz','Helmstetter','Cazhelmstetter@gmail.com','08/24/76','Maintenance supervisor ','Multnomah Athletic Club','1976 SW 26th court ',NULL,'Gresham ','Oregon','97080','(503)313-8038',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-31 21:39:07','Building Operator Cert. LEVEL 1 - Pendleton','Brian','Paulson','bjp01@grh.org','09/22/81','Facility Technician','Grande Ronde Hospital','900 Sunset Drive',NULL,'La Grande','Oregon','97850','541-963-1500',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-03-31 21:54:17','Building Operator Cert. LEVEL 1 - Pendleton','John','Rankin','jhr01@grh.org','03/26/85','Maintenance Worker','Grande Ronde Hospital','900 Sunset Drive',NULL,'La Grande','Oregon','97850','541-963-1500',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-04-04 18:07:17','2017 Energy Management Certificate (EMC)','TEST','TEST','id@harmonicdraw.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','California','55658','TEST',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-04-18 13:35:38','Building Operator Cert. LEVEL 1 - Portland','Brian','Gardner','bgardner@lclark.edu','7/20/1963','Maint engineer','Lewis and Clark collage','0615 SW Palintine hill rd ',NULL,'Portland','Oregon','97219','971-245-3985',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-05-04 17:02:35','2017 Energy Management Certificate (EMC)','Jeffrey','Petersen','jeffrey.petersen@eweb.org','03/18/1975','Mr','Mr','4200 Roosevelt Blvd',NULL,'Eugene','Oregon','97402','541-685-7441','541-685-7441',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-05-10 16:18:29','Building Operator Cert. LEVEL 1 - Portland','George','Hastings','georgehastings@tillamookbaycc.edu','02/09/1958','Facilities Maintenance Specialist','Tillamook Bay Community College','4301 Third Street',NULL,'Tillamook','Oregon','97141','503.812.0672','503.842.8334',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-05-12 03:50:12','2017 Energy Management Certificate (EMC)','Santosh ','Kumar','santosh_chaudhary1979@yahoo.com','15/03/1979','Mr','Jones Lang Lassale Property Consultants pvt ltd','Sec-49','Sainik colony','Faridabad','Non-US','121001','9711775323',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-05-25 18:48:34','2017 Energy Management Certificate (EMC)','Heather','McNeill','Heather@rhtenergy.com','1/22/1970','Outreach Manager','RHT Energy','1215 Stowe Ave',NULL,'Medford','Oregon','97501','541-200-2006',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-10 18:12:12','Building Operator Cert. LEVEL 1 - Portland','Anthony','Allen','aallen@vhosp.com','11/19/1970','Chief engineer','Vesta hospitality group','2611 E.26th. st.',NULL,'Vancouver','Washington','98661','(360) 624-3942','(503) 257-2621',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:08:55','Building Operator Cert. LEVEL 1 - Salem','Steve','Amos','amos_steven@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3241',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:11:07','Building Operator Cert. LEVEL 1 - Salem','Maria','Anderson','anderson_maria@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3224',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:12:47','Building Operator Cert. LEVEL 1 - Salem','Ben','Arias','arias_ben@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3210',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:14:33','Building Operator Cert. LEVEL 1 - Salem','Jeremy','Baker','baker_jeremy@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3080',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:16:21','Building Operator Cert. LEVEL 1 - Salem','Laurie','Blessing','blessing_laurie@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3252',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:17:59','Building Operator Cert. LEVEL 1 - Salem','Amanda','Boyle','boyle_amanda@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3233',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:19:37','Building Operator Cert. LEVEL 1 - Salem','Amanda','Carter','carter_amanda@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3261',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:21:34','Building Operator Cert. LEVEL 1 - Salem','Brandon','Clark','clark_brandon@salkeiz.k12.or.us','01/01/01','Custodian 1','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3180',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:23:25','Building Operator Cert. LEVEL 1 - Salem','Ken','Compton','compton_ken@salkeiz.k12.or.us','01/01/01','Custodian 4','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3080',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:25:48','Building Operator Cert. LEVEL 1 - Salem','Heath','Dederick','dederick_heath@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:27:25','Building Operator Cert. LEVEL 1 - Salem','Shelley','Flory','flory_shelley@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3444',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:29:25','Building Operator Cert. LEVEL 1 - Salem','Leroy','Frank','frank_leroy@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3701',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:49:39','Building Operator Cert. LEVEL 1 - Salem','Angel','Frutos','frutos_angel@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3337',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 19:51:46','Building Operator Cert. LEVEL 1 - Salem','Gloria','Garcia','garcia_gloria@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3201',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:09:48','Building Operator Cert. LEVEL 1 - Salem','David','Garcia','garcia_david@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3220',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:12:11','Building Operator Cert. LEVEL 1 - Salem','David','Gramlich','gramlich_david@salkeiz.k12.or.us','01/01/01','Custodian 3','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3097',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:13:50','Building Operator Cert. LEVEL 1 - Salem','Jeff','Jabin','jabin_jeff@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3215',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:15:50','Building Operator Cert. LEVEL 1 - Salem','Manuel','Ochoa','ochoa_manuel@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-2110',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:17:29','Building Operator Cert. LEVEL 1 - Salem','Ana','Ortiz','ortiz_ana@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3451',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:19:56','Building Operator Cert. LEVEL 1 - Salem','Jonathan','Scott','scott_jonathan@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3145',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:21:52','Building Operator Cert. LEVEL 1 - Salem','Korbin','Warriner','warriner_korbin@salkeiz.k12.or.us','01/01/01','Custodian 2','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3187',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-06-29 20:24:19','Building Operator Cert. LEVEL 1 - Salem','Michael','York','york_michael@salkeiz.k12.or.us','01/01/01','Custodian 1','Salem-Keizer SD','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3448',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-07-10 19:23:55','Building Operator Cert. LEVEL 1 - Portland','Jaime','Cuevas','jaime.cuevas@gerdingedlen.com','02/18/1973','Aintenance Tech','Gerding Edlen Managment','1477 NW Everett St',NULL,'Portland','Oregon','97209','503-929-3881',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-07-21 21:53:53','Building Operator Cert. LEVEL 1 - Portland','John','Richardson','johnrichardson@lclark.edu','5/16/59','Maintenance Engineer','Lewis and Clark College','0615 SW Palatine Rd',NULL,'Portland','Oregon','97219','5035023823',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-07-25 14:48:39','Building Operator Cert. LEVEL 1 - Portland','Luis','Umana','luis.umana@odot.state.or.us','03/05/1980','Construction Project Manager','Oregon Department of Transportation','3700 SE 92nd Avenue',NULL,'Portland','Oregon','97266','5034280933',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-07-28 19:59:15','Building Operator Cert. LEVEL 1 - Portland','Chris','Meade','cmeade@uoregon.edu','08-18-1981','Custodial Services Manager','University of Oregon','1276 Univeristy of Oregon',NULL,'Eugene','Oregon','97403','541-346-5771',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-08-17 22:43:51','Please select a Training...','Benjamin','Lowrey','blowrey@pdx.edu','05/31/1988','General Maintenance Mechanic','Portland State University - Facilities ','6575 SW Dale Ave',NULL,'Beaverton ','Oregon','97008','5035453296',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-08-23 21:57:56','Building Operator Cert. LEVEL 1 - Salem','Kamen','Thompson','kamen.thompson@eweb.org','2-26-64','Facilities Technician','EWEB','4200 Roosevelt Blvd',NULL,'Eugene','Oregon','97402','541-953-7604',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-08-24 14:32:57','Building Operator Cert. LEVEL 1 - Portland','Trent','Winegar','trent.winegar@orecity.k12.or.us','05/11/1970','Head custodian','Oregon City School District','1417 12th St',NULL,'Oregon City','Oregon','97045','503-473-9239',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-08-24 21:19:46','Building Operator Cert. LEVEL 1 - Portland','James','McCuistion','jmccuistion@fvrl.org','12/10/1957','Assistant Facilities Manager','Fort Vancouver Regional Library District','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','3609064945',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-08-24 21:32:41','Building Operator Cert. LEVEL 1 - Portland','Seth','Klement','abhangal@fvrl.org','3/29/1964','Facilities Assistant','FVRL','1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','3609065064',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-08-24 21:45:07','Building Operator Cert. LEVEL 1 - Portland','TEST','TEST','trent.winegar@orecity.k12.or.us','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-04 17:31:56','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','James','Smith','jkport@msn.com','6/25/1956','Custodian','Lake Oswego School District','20 Mountain Circle',NULL,'Lake Oswego','Oregon','97035','5033491035',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-09 05:22:02','Building Operator Cert. LEVEL 1 - Salem','Roger','Cisneros','rgc705@gmail.com','05/17/1970','Hvac Journeyman',NULL,'2264 Equestrian Loop S',NULL,'Salem','Oregon','97302','5038514600','5038514600',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-11 18:59:03','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brian','Lockard','brian.lockard@orecity.k12.or.us',12181984,NULL,'Oregon City School District','14551 Meyer Road',NULL,'Oregon City','Oregon','97045','5037858530',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-11 18:59:15','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brian','Lockard','brian.lockard@orecity.k12.or.us',12181984,NULL,'Oregon City School District','14551 Meyer Road',NULL,'Oregon City','Oregon','97045','5037858530',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-11 22:21:18','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brent','Paul','paulb@loswego.k12.or.us',70779,'Director of Facilities','LOSD','4200 douglas way',NULL,'Lake Oswego','Oregon','97034','5037807215',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-11 22:24:03','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Darrell','Thorpe','thorped@loswego.k12.or.us',7071979,'Engineer','LOSD','2500 Country Club Rd',NULL,'Lake Oswego','Oregon','97034','5037246053',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-11 22:25:47','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','James','Smith','smithj@loswego.k12.or.us',7071979,'Custodian','LOSD','2501 Country Club Rd',NULL,'Lake Oswego','Oregon','97034','5033491035',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-12 17:01:39','Building Operator Cert. LEVEL 1 - Portland','William','Harper III','wharper@co.clatsop.or.us','12/24/1982','Maint. Assistant','Clatsop County ','800 Exchange St','Suite 222','Astoria ','Oregon','97103','503-325-8656',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-13 18:00:47','Building Operator Cert. LEVEL 1 - Portland','Aaron','Deleeuw','adeleeuw@melvinmark.com','03-10-1979','Maintenance Tech','Melvin Mark Companies','111 SW Columbia Street','Suite 1380','Portland ','Oregon','97201','971-404-4779','503- 223- 3457',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-13 18:01:04','Building Operator Cert. LEVEL 1 - Portland','Aaron','Deleeuw','adeleeuw@melvinmark.com','03-10-1979','Maintenance Tech','Melvin Mark Companies','111 SW Columbia Street','Suite 1380','Portland ','Oregon','97201','971-404-4779','503- 223- 3457',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-16 14:29:43','Building Operator Cert. LEVEL 1 - Portland','Caz','Helmstetter','cdavis@themac.com',8241976,'Maintenance Supervisor','Multnomah Athletic Club','1849 SW Salmon St.',NULL,'Portland','Oregon','97205','5035176656',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-16 14:35:15','Building Operator Cert. LEVEL 1 - Portland','Jeff','Hamling','cdavis@themac.com','09/20/1961','Maintenance Supervisor','Multnomah Athletic Club','1849 SW Salmon St.',NULL,'Portland','Oregon','97205','5035176656',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-20 17:10:17','Building Operator Cert. LEVEL 1 - Portland','John','Raske','john.raske@gerdingedlen.com','06-27-78','Building Engineer','Indigo Gerding Edlen','430 SW 13th Ave',NULL,'Portland','Oregon','97205','5039293881',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-26 19:39:35','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Brent','Pike','Brent.Pike@vansd.org','9/10/75','Certified Pool Operator JPC-Pools','Vancouver School District #37','6014 NW Fruit Valley Road ','NONE','Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-26 19:49:36','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','James','Mattson','James.Mattson@vansd.org','10-13-84','Building Operator','Vancouver School District #37','6014 NW Fruit Valleu Road','NONE','Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-09-26 19:56:02','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Kevin','Thomas','Kevin.Thomas@vansd.org','2-16-1959','Building Operator, Chinook Elementary','Vancouver School District #37','6014 NW Fruit Valley Road','NONE','Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-10-02 21:11:00','Building Operator Cert. LEVEL 1 - Portland','Jerry','Neider','jlneider@lhs.org','6/22/1956','Architectural Safety/Engineer','Legacy Health Systems','1040 NW 22nd. Ave.','Attn, Facilities','Portland','Oregon','97210','(503) 413-6880','(503) 413-6988',NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-10-03 20:56:18','Building Operator Cert. LEVEL 1 - Portland','Mike','Herrera','mherrera@vernier.com','4/30/1963','Facilities Techncian','Vernier Software & Technology','13979 SW Millikan Way',NULL,'Beaverton','Oregon','97005','5032772299',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-10-04 20:52:25','Building Operator Cert. LEVEL 1 - Portland','Jeff','St Louis','jeff.st.louis@ihs.gov','03/14/1963','Facilities Manager','Indian Health Services','3750 Chemawa Rd. Ne',NULL,'Salem','Oregon','97345','7607934303',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-10-04 21:51:56','Building Operator Cert. LEVEL 1 - Portland','Christopher','Vaught','christopher.vaught@ihs.gov','11/20/1976','Health Facilities Engineer','Indian Health Service','1414 NW Northrup St.','Suite 800','Portland','Oregon','97209','503-414-7773',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-10-04 22:10:06','Building Operator Cert. LEVEL 1 - Portland','Jonathan','McNamara','jonathan.mcnamara@ihs.gov','10/11/1978',NULL,NULL,'1414 NW Northrup St.',NULL,'Portland','Oregon','97209','503 414-7770',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-11-29 01:33:51','Building Operator Cert. LEVEL 1 - Medford','Tim','Preston','tpreston@abkfun.com','07/31/1986',NULL,NULL,'1028 queen  anne ave.',NULL,'Medford','Oregon','97504','5416468878',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2017-12-04 16:56:41','Building Operator Cert. LEVEL 1 - Portland','Jeff ','Alderman','aldermanfamilyfarms@gmail.com','9/13/1985','Alderman Family Farms','Lewis and Clark College','42993 SE Keisecker Rd',NULL,'Sandy','Oregon','97055','5034844371','5034844371',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-01-03 19:05:02','2018 Energy Management Certificate (EMC)','Spencer','Barrett','spencerjbarrett@gmail.com','04/18/1994',NULL,NULL,'3833 NW BOXWOOD DRIVE',NULL,'Corvallis','Oregon','97330','5412077096','5412077096',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-01-12 00:39:20','2018 Energy Management Certificate (EMC)','Jason','Oliver','jason.oliver@canyons.edu','02/25/1973','Dept. Chair-Architecture and Interior Design','College of the Canyons','26455 Rockwell Canyon Road',NULL,'Santa Clarita','California','91355','6612597800x3316',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-02-14 23:18:23','Building Operator Cert. LEVEL 1 - Portland','James','Roberts','jeroberts@bpa.gov','02/28/1988','General Maintenance Worker','Centerra Integrated Facilities Services','23052 NE Chinook St',NULL,'Troutdale','Oregon','97060','9163168007',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-02-16 18:49:39','Building Operator Cert. LEVEL 1 - Portland','Bill','Peters','William.Peters@providence.org','1/17/1975','Maintenance Tech II','Providence Hood River Hospital','po box 137',NULL,'Rhododendron','Oregon','97049','503.290.6463',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-02-22 19:48:13','2018 Energy Management Certificate (EMC)','Roger','Kim','roger.kim1@va.gov','05/12/1986','Energy Manager','VA Portland Health Care System','3710 SW US Veterans Hospital Rd',NULL,'Portland','Oregon','97239','503.220.8262',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-02-28 21:30:21','2018 Energy Management Certificate (EMC)','Curtis','Wentling','curtis.wentling@gmail.com','2.1.1974','Facilities Supervisor','Grace Bible Church','8521 67th ave NE',NULL,'Marysville','Washington','98270','4253083298',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-03-14 16:23:20','Building Operator Cert. LEVEL 1 - Portland','Robert','Archer','robert.archer@wesd.org','11-30-1972','Facilities Manager','Willamette Education Service District','2611 Pringle Rd SE',NULL,'Salem','Oregon','97302','503-385-4717',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-03-14 18:52:00','Building Operator Cert. LEVEL 1 - Portland','Danny','Moreno','dmoreno@mesd.k12.or.us','8/19/1962','Custodial 2 Driver','Multnomah Education Service District','11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','503-257-1514',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-03-14 18:54:09','Building Operator Cert. LEVEL 1 - Portland','Connie','Epperly','cepperly@mesd.k12.or.us','6/13/1963','Administrative Assistant',NULL,'11611 NE Ainsworth Circle',NULL,'Portland','Oregon','97220','503-257-1786',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-03-27 20:44:56','2018 Energy Management Certificate (EMC)','Heather','McNeill','Heather@RHTenergy.com','1/22/1970','Outreach Manager','RHT Energy','1215 Stowe Avenue',NULL,'Medford','Oregon','97501','541-930-0606',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-07 00:01:50','2018 Energy Management Certificate (EMC)','Teri','Conklin','teri@bellandfunk.com','5/11/77',NULL,NULL,'44 W Broadway, Ste 210',NULL,'Eugene','Oregon','97401','555-555-5555',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-08 18:30:08','Building Operator Cert. LEVEL 1 - Columbia Gorge','Des','Godwin','desgodwin@yahoo.co.uk','26/04/1974','Mr','Deswin Services UK','196  ','Clinton Ave','Brooklyn','New York','11225','+447504060830',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-15 06:51:53','Building Operator Cert. LEVEL 1 - Portland','Dylan','Duff','dylanduffa@gmail.com','09/10/1992','Service manager','Greystar','7737 SW Wimbledon cir. N',NULL,'Wilsonville','Oregon','97070','5034767469',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-16 22:11:59','Building Operator Cert. LEVEL 1 - Portland','Michael','Harman','harmanm@milwaukieoregon.gov','12/25/1982','Facility Maintenance Technician','City of Milwaukie','6101 SE Johnson Creek Blvd.',NULL,'Milwaukie','Oregon','97206','5035724557',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-27 20:51:46','Building Operator Cert. LEVEL 2','Mike ','Rodgers','MIke.Rodgers@vansd.org','9/26/1956','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road ',NULL,'Vancouver ','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-27 21:04:05','Building Operator Cert. LEVEL 2','Dan ','Kendall','Dan.Kendall@vansd.org','10/18/1967','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-27 21:08:06','Building Operator Cert. LEVEL 2','Aaron','Smith','Aaron.Smith@vansd.org','11/30/1973','Building Operator Level1','Vancouver School District #37','6014 Nw Fruit Valley Road',NULL,'Vancouver ','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-27 21:12:29','Building Operator Cert. LEVEL 2','Daryn','Mattson','Daryn.Mattson@vansd.org','3/11/1964','Building Operator Level 1','Vancouver School District #37','6014 N W Fruit Valley Road',NULL,'Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-27 21:15:14','Building Operator Cert. LEVEL 2','James','Mattson','James.Mattson@vansd.org','10/13/1984','Building Operator Level 1','Vancoouver Scholl District #37','6014 NW Fruit Valley Road',NULL,'Vancouver ','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-27 22:18:18','Building Operator Cert. LEVEL 2','Richard','Taylor','Richard.Taylor@vansd.org','1/30/1979','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver ','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 15:23:24','Building Operator Cert. LEVEL 2','Daniel','Cronin','Dan.Cronin@vansd.org','11/21/1955','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver ','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 15:31:15','Building Operator Cert. LEVEL 2','Roxann','Ortega','Roxann.Ortega-Murillo@vansd.org','1/13/1965','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 15:35:03','Please select a Training...','James','Mattson','James.Mattson@vansd.org','10/13/1984','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 15:37:47','Building Operator Cert. LEVEL 2','Kevin ','Thomas','Kevin.Thomas@vansd.org','2/16/1959','Building Operator Level 1','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver ','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 15:40:29','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Michael','Kaplan','Michael.Kaplan@vansd.org','4/19/1988','Building Operator','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 15:45:24','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Gabriel ','Bravo','Gabriel.Bravo@vansd.org','12/11/1980','Building Operator','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver ','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-04-30 17:29:43','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Tracy','Bowyer','Tracy.Bowyer@vansd.org','11/12/1968',' Maintenance Support Team Lead','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-05-07 21:28:38','Building Operator Cert. LEVEL 2','Brent','Pike','Brent.Pike@vansd.org','9/10/1975','Building Operator JPCC-Pools','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver ','Washington','98660','(360) 313-4781','(360) 313-4776',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-05-16 17:37:39','Building Operator Cert. LEVEL 2','Aaron','Deleeuw','adeleeuw@melvinmark.com','3/10/1979','Maintenance Tech','Melvin Mark Companies','111 SW Columbia Street',NULL,'Portland','Oregon','97201','503-546-4558',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-05-16 17:42:10','Building Operator Cert. LEVEL 2','Don','Gasser','dgasser@melvinmark.com','4/29/1964','Building Engineer','Melvin Mark Companies','111 SW Columbia Street',NULL,'Portland','Oregon','97201','503-546-4556',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-05-16 17:47:28','Building Operator Cert. LEVEL 1 - Portland','Olmer','De Leon Martinez','odeleonmartinez@melvinmark.com','04/23/1981','Maintenance Tech','Melvin Mark Companies','111 SW Columbia Street',NULL,'Portland','Oregon','97201','503-546-4557',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-05-16 22:26:34','Building Operator Cert. LEVEL 1 - Portland','Mitchell','Elliott','melliott@melvinmark.com','06/04/1963','Melvin Mark Companies','Melvin Mark Companies','111 SW Columbia Street',NULL,'Portland','Oregon','97201','503-546-4562',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-05-23 21:42:29','Building Operator Cert. LEVEL 1 - Portland','Jason','Guerraz','jguerraz@melvinmark.com','06/27/1974','Maintenance Tech','Melvin Mark Companies','111 SW Columbia Street',NULL,'Portland','Oregon','97201','503-799-4704',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-04 19:04:06','Building Operator Cert. LEVEL 1 - Portland','Jessica','Beehner','jessica.beehner@camas.wednet.edu','05/09/1986','Operations Administrator','Camas School District','841 NE 22nd Avenue',NULL,'Camas','Washington','98607','360-833-5832',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-04 19:12:11','Building Operator Cert. LEVEL 1 - Portland','Robert','Taylor','robert.taylor@camas.wednet.edu','09/06/1973','District Maintenance','Camas School District','841 NE 22nd Avenue',NULL,'Camas','Washington','98607','360-281-9821',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-07 19:55:31','Building Operator Cert. LEVEL 2','Joe','Chand','Josephsuresh.chand@portlandoregon.gov','5/7/58','Facilities maintenace technician','City of Portland','1120 S.W  5th AV.',NULL,'Portland','Oregon','97204','(503)823-8214',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-07 22:03:39','Building Operator Cert. LEVEL 1 - Portland','Caleb','Todd','caleb.todd@tvfr.com','03/11/1997',NULL,NULL,'3220 22nd ave apt 9',NULL,'Forest Grove','Oregon','97116','503-608-9553',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-18 22:38:18','Building Operator Cert. LEVEL 1 - Portland','Quinn','Montes','qmontes@melvinmark.com','07/23/1992','Maintenance Tech','Melvin Mark Companies','111 SW Columbia Street',NULL,'Portland','Oregon','97201','971-277-0143',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-19 21:33:04','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Jeremy','Christensen','jchristensen@ci.oswego.or.us',11051977,NULL,'city of lake oswego Facilitys','380 A Ave',NULL,'Lake Oswego','Oregon','97034','5032130675',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 16:51:23','Building Operator Cert. LEVEL 1 - Salem','Joshua','Reyes','reyes_joshua@salkeiz.k12.or.us','07/18/94','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','503-399-3097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 16:54:53','Building Operator Cert. LEVEL 1 - Salem','Ranny','Loa','loa_ranny@salkeiz.k12.or.us','7/7/79','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 16:57:28','Building Operator Cert. LEVEL 1 - Salem','Scott','Chapman','chapman_scott@salkeiz.k12.or.us','4/23/84','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 16:59:31','Building Operator Cert. LEVEL 1 - Salem','Bryana','Rupp','rupp_bryana@salkeiz.k12.or.us','2/20/94','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 17:04:17','Building Operator Cert. LEVEL 1 - Salem','Steve','Scott','scott_steven@salkeiz.k12.or.us','7/31/57','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 17:06:07','Building Operator Cert. LEVEL 1 - Salem','Debra','Wallace','wallace_debra@salkeiz.k12.or.us','1/23/84','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 17:08:51','Building Operator Cert. LEVEL 1 - Salem','Timothy','Thomas','thomas_timothy@salkeiz.k12.or.us','10/03/70','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 17:11:14','Building Operator Cert. LEVEL 1 - Salem','Chris','Arreola','arreola_christopher@salkeiz.k12.or.us','4/5/81','Custodian 3','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 18:30:51','Building Operator Cert. LEVEL 1 - Salem','Amanda','Carter','carter_amanda@salkeiz.k12.or.us','5/19/89','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 18:34:39','Building Operator Cert. LEVEL 1 - Salem','Tessa','Franklin','franklin_tessa@salkeiz.k12.or.us','8/20/82','Custodian 3','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 18:36:28','Building Operator Cert. LEVEL 1 - Salem','Chris','Bartruff','bartruff_christopher@salkeiz.k12.or.us','6/4/84','Custodian 4','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:17:48','Building Operator Cert. LEVEL 1 - Salem','LeRoy','Crouch','crouch_leroy@salkeiz.k12.or.us','8/5/81','Field Coordinator','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:19:42','Building Operator Cert. LEVEL 1 - Salem','Jamie','Smith','smith_jamie@salkeiz.k12.or.us','10/17/78','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:21:29','Building Operator Cert. LEVEL 1 - Salem','Mitch','Dunn','dunn_mitch@salkeiz.k12.or.us','3/6/62','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:24:04','Building Operator Cert. LEVEL 1 - Salem','Lee','Madsen','madsen_lee@salkeiz.k12.or.us','9/3/51','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:26:05','Building Operator Cert. LEVEL 1 - Salem','James','Dawson','dawson_james@salkeiz.k12.or.us','8/4/55','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:29:24','Building Operator Cert. LEVEL 1 - Salem','Dean ','Smith','smith_dean@salkeiz.k12.or.us','6/21/83','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:32:52','Building Operator Cert. LEVEL 1 - Salem','Walt','Cleveland','cleveland_walter@salkeiz.k12.or.us','7/11/51','Custodian 3','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:35:16','Building Operator Cert. LEVEL 1 - Salem','Marisol','Saucedo','saucedo_marisol@salkeiz.k12.or.us','10/28/86','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:36:48','Building Operator Cert. LEVEL 1 - Salem','Tong','Yang','yang_tong@salkeiz.k12.or.us','4/12/66','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-06-21 19:48:30','Building Operator Cert. LEVEL 1 - Salem','Ray','Braswell','braswell_ray@salkeiz.k12.or.us','6/22/58','Custodian 2','Salem-Keizer Public Schools','3630 State Street',NULL,'Salem','Oregon','97301','5033993097',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-07-09 18:02:12','Building Operator Cert. LEVEL 1 - Portland','Tester','McTest','testing@123.com','01/01/2001','Tester','Testing, Inc.','123 Test Ave.',NULL,'N/A','Kentucky','97123','123-456-7890',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-07-19 16:21:20','Building Operator Cert. LEVEL 1 - Portland','Jeffrey','Roberts','roberts@lclark.edu','01/19/1977','Facility engineer.','Lewis & Clark college','0615 SW Palatine Hill Rd',NULL,'Portland','Oregon','97219','9712669048',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-07 14:56:51','Building Operator Cert. LEVEL 1 - Portland','Matt','Baker','mbaker@ci.wilsonville.or.us','4/18/69','Facility Supervisor','City of Wilsonville','29799 SW Town Center Loop East',NULL,'Wilsonville','Oregon','97070','503.570.1548',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-07 14:59:24','Building Operator Cert. LEVEL 1 - Portland','Javid ','Yamin','yamin@ci.wilsonville.or.us','8/8/1988','Facility Technician','City of Wilsonville','29799 SW Town Center Loop East',NULL,'Wilsonville ','Oregon','97070','503.570.1548',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-07 15:04:18','Building Operator Cert. LEVEL 1 - Portland','Ivan','Crumrine','crumrine@ci.wilsonville.or.us','8/19/1973','Facility Technician','City of Wilsonville','29799 SW Town Center Loop East',NULL,'Wilsonville','Oregon','97070','503.570.1548',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-16 13:54:43','Building Operator Cert. LEVEL 1 - Portland','Dustin','Toney','toneyd@loswego.k12.or.us',70779,'Engineer 1','Lake Oswego School District','4200 douglas way',NULL,'Lake Oswego','Oregon','97034','5037807215',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-16 13:55:45','Building Operator Cert. LEVEL 1 - Portland','Garret','Wagner','wagnerg@loswego.k12.or.us',70779,NULL,'Lake Oswego School District','4200 douglas way',NULL,'Lake Oswego','Oregon','97034','5037807215',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-17 13:45:08','Building Operator Cert. LEVEL 1 - Portland','Cory','McKissick','cory.mckissick@ihs.gov','06/11/1978',NULL,'Indian Health Service','1414 NW Northrup St., Suite 800',NULL,'Portland','Oregon','97209','5034147775',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-17 22:59:29','Building Operator Cert. LEVEL 1 - Portland','TEST','TEST','kne@efn.org','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-20 18:35:57','Building Operator Cert. LEVEL 1 - Portland','Cory','McKissick','cory.mckissick@ihs.gov','06/11/1978',NULL,'Indian Health Service','1414 NW Northrup St. #800',NULL,'Portland','Oregon','97209','503-414-7775',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-20 21:46:13','Please select a Training...','Tester','McTestingTon','id@harmonicdraw.com','25/25/25','President',NULL,'123 Fake Street',NULL,'Gooberville','Arizona','55555','555-555-1212',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-22 22:46:28','Building Operator Cert. LEVEL 1 - Portland','Gavin','Shearer','gshearer@greystar.com','08/10/1981','Regional Maintenance Manager','Greystar','704 Dartmouth Street',NULL,'Newberg','Oregon','97132','5037027409',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-23 13:35:06','Building Operator Cert. LEVEL 1 - Portland','Dylan','Duff','dylan.duff@greystar.com','09/10/1992','Service Supervisor','Greystar','13915 SW Bell Rd',NULL,'Sherwood','Oregon','97140','9712714468',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-08-28 21:21:37','Building Operator Cert. LEVEL 1 - Portland','Cory','Mckissick','cory.mckissick@ihs.gov.','06/11/1978','Mechanical Engineer','Indian Health Services','1414 NW Northrup St. Suite 800',NULL,'Portland','Oregon','97209','503-414-7775',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-06 15:22:01','Building Operator Cert. LEVEL 1 - Portland','DeVaun','Ramsey','Ramsey_Devaun@yahoo.com','05/10/1990','Service Supervisor','Greystar','26210 SW Canyon Creek Rd. N.','Apt. 101','Wilsonville','Oregon','97070','5038841408',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-17 18:31:45','Building Operator Cert. LEVEL 1 - Portland','Chris','Duncan','cduncan@greystar.com','04/23/1970','Regional Maintenance Manager','Greystar','3803 SE Holgate Blvd',NULL,'Portland','Oregon','97202','503-849-6113',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-17 18:36:04','Building Operator Cert. LEVEL 1 - Portland','Chris ','Duncan','cduncan@greystar.com','04/23/1970','Regional Maintenance Manager','Greystar Management','1125 NW Couch St. ',NULL,'Portland ','Oregon','97209','503.849.6113',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-18 17:22:50','Building Operator Cert. LEVEL 2','Tom','Aichele','thomas.aichele@rockwellcollins.com','08/22/1979','Facilities Engineer','Rockwell Collins','27300 SW Parkway AVE',NULL,'Wilsonville','Oregon','97070','9713443840',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-20 22:33:02','Building Operator Cert. LEVEL 1 - Portland','Brenden','Panter','Brenden.Panter@vansd.org','3/3/1991','Building Operator','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','360-31-4781','360-313-4776',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-20 23:17:21','Building Operator Cert. LEVEL 2','Laurel','Brown','laurel.brown@pdx.edu','07/20/1970','Assistant Director PMZM','Portland State University','617 SW Montgomery St','Suite 202','Portland','Oregon','97201','5037255358',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-21 15:54:45','Building Operator Cert. LEVEL 1 - Portland','Aaron','Britton','froelica@pdx.edu','03/02/1967','General Maintenance Mechanic','Portland State University','617 SW Montgomery St','Suite 202','Portland','Oregon','97201','5037255358',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-21 15:57:59','Building Operator Cert. LEVEL 1 - Portland','Phil','Tritz','froelica@pdx.edu','06/11/84','General Maintenance Mechanic','Portland State University','617 SW Montgomery St','Suite 202','Portland','Oregon','97201','5037255358',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-21 16:44:20','Building Operator Cert. LEVEL 1 - Portland','Scott','Rhods','Scott.Rhods@vansd.org','8-1-1962','Building Operator','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-09-21 21:55:46','Building Operator Cert. LEVEL 1 - Portland','Martha','Mendez','Martha.Mendez@vansd.org','11-11-1978','Building Operator','Vancouver School District #37','6014 NW Fruit Valley Road',NULL,'Vancouver','Washington','98660','360-313-4781','360-313-4776',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-10-02 18:07:55','Building Operator Cert. LEVEL 1 - Portland','Harry','Banister','banistrh@sherwoodoregon.gov','2/6/78','Lead Maintenance Worker','City of Sherwood','15527 SW Willamette St.',NULL,'Sherwood','Oregon','97140','503-925-2334',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-10-15 13:19:36','Building Operator Cert. LEVEL 1 - Portland','DeVaun','Ramsey','Ramsey_devaun@yahoo.com','05/10/1990','Service Supervisor','Greystar','26210 SW canyon Creek Rd N','Apt. 101','Willsonville','Oregon','97070','5038841408',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-10-15 18:29:23','Building Operator Cert. LEVEL 1 - Oregon Coast','Test','Test','test@yhoo.com','01/01/01','Google','framl','123 antytime',NULL,'Frys','Select...','97477','541-343-0308',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-10-17 19:53:02','Building Operator Cert. LEVEL 2','Mark','McConnell','mark.mcconnell@tvwd.org','02/06/1959','Building and Grounds Maintenance II','Tualatin Valley Water District','1850 SW 170th Ave.',NULL,'Beaverton','Oregon','97003','503-848-3079',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-11-05 21:29:50','Building Operator Cert. LEVEL 2','Sharon','Voelz','sharon.voelz@tvwd.org','01/05/1962','Building and Grounds Maintenance II','Tualatin Valley Water District','1850 SW 170th Ave',NULL,'Beaverton','Oregon','97003','(503) 849-3772',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-11-27 19:26:17','Building Operator Cert. LEVEL 1 - Medford','Bryan','CidHogan','bryan.cidhogan@medford.k12.or.us','5/6/1981','Resource Conservation Specialist','Medford School District','815 S. Oakdale Ave',NULL,'Medford','Oregon','97501','5418423071',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-12-03 23:40:54','Building Operator Cert. LEVEL 2','Jeff','Roberts','roberts@lclark.edu','01/19/1977','Engineer','lewis and clark college','4000 sw carman dr #20',NULL,'Lake Oswego','Oregon','97035','9712669048',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-12-05 00:14:52','Building Operator Cert. LEVEL 2','Eduardo','Yanez','eduardo.yanez@greshamoregon.gov','11/23/72','Facilities maintenance technician 11','City of Gresham','1333 N.W. Estman parkway',NULL,'Gresham','Oregon','97030','971)201 9119','503)618 2512',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2018-12-14 18:51:17','Building Operator Cert. LEVEL 2','William','Harper','wharper@co.clatsop.or.us','12-24-1982','MAintenance I tech','Clatsop County','800 Exchange St. suite 222',NULL,'Astoria','Oregon','97103','503-741-1262',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-01-07 21:21:53','Building Operator Cert. LEVEL 1 - Pendleton','Kegan ','McCowan','krm03@grh.org','9/3/93',NULL,'Grande Ronde Hospital','900 Sunset',NULL,'La Grande ','Oregon','97850','5419105366',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-01-15 15:41:13','Building Operator Cert. LEVEL 1 - Pendleton','Trenton','Phelps','Trenton.a.phelps@gmail.com','1/18/1994','Lead grounds keeper','grande ronde hospital','900 sunset',NULL,'La Grande','Oregon','97850','5417866719',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-01-15 20:07:09','Stormwater Management Training - Eugene','e','v','vidale@lanecc.edu','1/1/11',NULL,NULL,'3510 byron st',NULL,'Eugene','Oregon','97404','54146361623',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-01-16 01:06:24','Stormwater Management Training - Eugene','TEST','TEST','vidale@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-01-31 16:00:26','Stormwater Management Training - Eugene','TEST','TEST','vidale@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-01 17:12:35','Stormwater Management Training - Eugene','Jared ','Turner','jared.turner@willamettegraystone.com','11/10/1989','Branch Manager','Willamette Graystone','3322 Gardenia Way',NULL,'Eugene','Oregon','97404','503-883-1721',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-06 21:28:15','Stormwater Management Training - Eugene','Travis','Hensley','olympiclandscape@comcast.net','05/27/1986','Supervisor',NULL,'1220 Goodpasture Isl. Rd.',NULL,'Eugene','Oregon','97405','541-485-8671','541-342-8232',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-06 23:37:55','Stormwater Management Training - Eugene','William','Mendez','wmcorepairs@hotmail.com',5031980,'Owner','Wmco property repairs and maintenance llc','39245 Deerhorn Rd ',NULL,'Springfield ','Oregon','97478','541-870-7973',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-09 22:15:05','Stormwater Management Training - Eugene','Brandon','Youngmayr','info@eklylandscape.com','06/08/1980','Owner','EKLY Landscape Maintenance','1044 Throne Dr',NULL,'Eugene ','Oregon','97402','5415101835',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-12 00:55:11','Stormwater Management Training - Eugene','Matt','Lake','matt@graham-landscape.com','10/28/1986',NULL,'Graham Landscape and Design','P.O. Box 5125',NULL,'Eugene','Oregon','97405','5412210429',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-12 03:22:10','Stormwater Management Training - Eugene','Paul','Howard','howard736@comcast.net','04/28/1971','Landscape Business Owner','P & E Landscaping Services','PO BOX 21133',NULL,'Eugene','Oregon','97402','5413599138',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-15 15:20:58','Stormwater Management Training - Eugene','Eeee','Vvvv','Vidale@lanecc.edu','5/5/55',NULL,NULL,'6666 qq we ee',NULL,'Eugene','Oregon','97404','5414636163',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-02-18 17:25:23','Stormwater Management Training - Eugene','Matthew','Holland','backflow@thompsonlandscapecompany.com','05/19/64',NULL,'Thompson Landscape Company','PO Box 11562',NULL,'Eugene','Oregon','97440','5416863469',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-03-08 16:30:24','Building Operator Cert. LEVEL 1 - Portland','Patrick','Stevens','pstevens@pps.net','1/6/83',NULL,'Portland Public Schools','8837 NE Thompson St.',NULL,'Portland','Oregon','97220','8153477882',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-04-01 22:10:25','Building Operator Cert. LEVEL 1 - Portland','James','Hebert','Ejahebert@gmail.com','09/09/1982',NULL,'Trinity Episcopal Cathedral ','10532 ne evergreen pkwy','136','Hillsboro','Oregon','97124','5033320190',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-04-09 06:16:19','Building Operator Cert. LEVEL 1 - Portland','Test','Last','test@hotmail.com','1/1/71',NULL,NULL,'123 North Main',NULL,'Portland','Select...','97201','502-203-1234',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-05-15 16:40:33','Building Operator Cert. LEVEL 1 - Portland','Mikel','DeGagne','mitch.degagne@vansd.org','04/06/79',NULL,NULL,'3500 S St',NULL,'Vancouver ','Washington','98663','360 607 5861',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-05-18 18:31:21','Building Operator Cert. LEVEL 1 - Columbia Gorge','Rodovaldo F','Inda','clomatanz64@gmail.com','01/16/64',NULL,'building superintendent','86-06 35 Ave','Apt 1N','Jackson Heights Queens','New York','11372','6465231520',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-05-21 03:52:04','Stormwater Management Training - Eugene','Tshepang','Makhosane','tshepangmakhosane@gmail.com','08/03/1990','Mr','Digison Renewable Energy (Pty) Ltd.','108 A Motsaathebe Street',NULL,'Pampierstad','Select...','8566','0834366032','0862284931',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-07-15 15:07:35','Building Operator Cert. LEVEL 1 - Salem','Dewayne','Irvin','dewayne.irvin@corvallis.k12.or.us','02/01/1976','Maintenance Supervisor','Corvallis School District','1555 SW 35th Street',NULL,'Corvallis','Oregon','97333','5417600818',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-08-02 04:57:12','Building Operator Cert. LEVEL 1 - Medford','Randy','Reeser','rrreeser@gmail.com','05/04/1975','BOC','Worksource Rogue Valley','747 Highland Dr #41',NULL,'Medford','Oregon','97504','(650)520-7580',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-08-13 21:29:11','Building Operator Cert. LEVEL 1 - Portland','Dewayne','Irvin','dewayne.irvin@corvallis.k12.or.us','02/01/1976','Maintenance Supervisor','Corvallis School District','1555 SW 35th Street',NULL,'Corvallis','Oregon','97333','5417600818',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-09-03 20:06:54','Building Operator Cert. LEVEL 1 - Trane Oregon, Tigard','Sierra','Avila','Avilas@loswego.k12.or.us','9-28-1989',NULL,NULL,'4200 Douglas Way',NULL,'Lake Oswego','Oregon','97034','2532035616',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-09-04 21:05:53','Building Operator Cert. LEVEL 1 - Portland','Brett','Cochran','brett.cochran@corvallis.k12.or.us','05/01/1985','Maintenance 3','Corvallis School District','1555 SW 35th Ave',NULL,'Corvallis','Oregon','97333','541-602-8959',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-09-05 15:36:18','Building Operator Cert. LEVEL 1 - Portland','Lisa','Letney','lisa.l.letney@odot.state.or.us','06/09/1978','Facilities Strategic Planning Manager ','Oregon Dept or Transportation','200 Hawthorne Street SE, Suite B 240',NULL,'Salem','Oregon','97301','503-986-5796',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-09-14 22:18:11','Stormwater Management Training - Eugene','Koorosh','Assef','assef19881988@gmail.com','08/02/1988',NULL,NULL,'9739 marky way',NULL,'La Mesa','California','91941','619-931-3365',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-09-25 16:38:37','Building Operator Cert. LEVEL 2','Brent ','Koegel','brent.m.koegel@kp.org','12/15/1985','Engineer','Kaiser Permanente','21099 S Jubb Rd',NULL,'Estacada','Oregon','97023','503-407-9043',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-10-01 16:46:34','Building Operator Cert. LEVEL 1 - Portland','Steve','Nitsch','sjnitsch@pps.net','7/20/71','Sr Program Manager','Portland Public Schools','501 N Dixon Ave',NULL,'Portland','Oregon','97227','5039163439',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-10-06 17:49:29','Building Operator Cert. LEVEL 1 - Portland','Mark','Bamgbose','bamgbose_mark@yahoo.com','04/05/1982','Mr','Nestle Nigeria Plc','Bamgbose''s House Itoga Newsite Opposite Ibereko Badagry,Lagos-State.',NULL,'Lagos','Non-US','01','+2347085535603',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-10-24 23:31:36','Building Operator Cert. LEVEL 1 - Portland','Brian','Crabb','brian.crabb@greshamoregon.gov','10/11/1979','Tech 1','City of Gresham','1333 NW Eastman Pkwy',NULL,'Gresham','Oregon','97030','5037939237',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-07 17:44:20','Building Operator Cert. LEVEL 1 - Portland','John','Elsen','jelsen@ci.oswego.or.us','02-27-1987',NULL,NULL,'308 A Avenue',NULL,'Lake Oswego','Oregon','97034','9719405915',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-13 17:32:17','Building Operator Cert. LEVEL 2','Dylan','Duff','dylan.duff@greystar.com','9/10/1993','Maintenance Manager','Greystar','130 A Ave.',NULL,'Lake Oswego','Oregon','97034','503-410-4019',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-13 17:35:47','Building Operator Cert. LEVEL 2','Devaun','Ramsey','devaun.ramsey@greystar.com','5/10/1990','Maintenance Manager','Greystar','430 SW 13th Ave',NULL,'Portland','Oregon','97205','971-271-3338',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-13 17:38:13','Building Operator Cert. LEVEL 2','Gavin','Shearer','gshearer@grystar.com','08/10/1981','Regional Maintenance Manager','Greystar','1125 NW Couch St','Suite 450','Portland','Oregon','97209','503-702-7409',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-13 17:40:10','Building Operator Cert. LEVEL 2','Chris','Duncan','cduncan@greystar.com','4/23/1970','Regional Maintenance Manager','Greystar','1125 NW Couch St','Suite 450','Portland','Oregon','97209','503-849-6113',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-19 19:57:09','Building Operator Cert. LEVEL 1 - Portland','Juan','Mendez','juan.mendezvillasana@vansd.org.','11/10/1986','Building Operator','Vancouver School District','6014 nw Fruit Valley Road',NULL,'Vancouver','Washington','98660','3603132004',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-19 20:50:41','Building Operator Cert. LEVEL 1 - Portland','John','Jarrett','john.jarrett@vansd.org','12/12/1963','Building operator','Vancouver School District','6014 nw Fruit Valley Road',NULL,'Vancouver','Washington','98660','3603134767',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-19 20:53:14','Building Operator Cert. LEVEL 1 - Portland','Mitch','Degagne','mitch.degagne@vansd.org','4/6/1979','Building Operator','Vancouver School District','6014 nw Fruit Valley Road',NULL,'Vancouver','Washington','98660','3603134767',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-22 03:16:09','Building Operator Cert. LEVEL 1 - Portland','Cynthia','Grey','cynthia.from.olympia@gmail.com','09/05/1977',NULL,NULL,'706 NE 99th Avenue','Apartment 15','Portland','Oregon','97220','(503)890-1079',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-11-27 21:27:04','Building Operator Cert. LEVEL 1 - Portland','Richard','Taitano','rtaitano@fvrl.org','11/16/1963',NULL,NULL,'1007 E Mill Plain Blvd',NULL,'Vancouver','Washington','98663','3607737877',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-12-03 18:41:49','Building Operator Cert. LEVEL 1 - Portland','Tim','Petta','tpetta@clark.edu','00/00/0000','Director of Facilities Services','Clark College','1933 Ft. Vancouver Way',NULL,'Vancouver','Washington','98663','3609922438',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-12-03 18:46:19','Building Operator Cert. LEVEL 1 - Portland','Brad','Hansen','bhansen@Clark.edu','00/00/0000','HVAC Technician','Clark College','1933 Ft. Vancouver Way',NULL,'Vancouver','Washington','98663','3609922438',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2019-12-26 23:11:18','Building Operator Cert. LEVEL 1 - Portland','Miguel ','Morales ','ggggrumpus@gmail.com ','02-04-1981','Maintenance assistant','Clatsop County ','691 33rd St.',NULL,'Astoria ','Oregon','97103','971-606-0805',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-01-03 22:08:32','Please select a Training...','Lisa','Cowell','cassie81147@yahoo.com','11/26/1968',NULL,NULL,'54 Lisa''s Ct.',NULL,'Pagosa Springs','Colorado','81147','5206008110',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-01-07 01:19:30','Please select a Training...','Lisa','Cowell','cassie81147@yahoo.com','11/26/1968',NULL,NULL,'54 Lisa''s Ct.',NULL,'Pagosa Springs','Colorado','81147','9704594638',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-01-07 01:28:01','Stormwater Management Training - Eugene','Lisa','Cowell','cassie81147@yahoo.com','11/26/1968',NULL,NULL,'54 Lisa''s Ct.',NULL,'Pagosa Springs','Colorado','81147','9704594638',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-01-09 15:37:04','Building Operator Cert. LEVEL 1 - Portland','Adam','Fox','adam_fox@co.washington.or.us','04/24/1970',NULL,'Washington County Facilities Operations','169 N. First Ave MS42',NULL,'Hillsboro','Oregon','97124','5032078762',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-01-16 17:50:52','Building Operator Cert. LEVEL 1 - Portland','Lewis','Younger','LEWYOUNGER@HOTMAIL.COM','5/2/1953','SEM COORDINATOR','CONFEERATED TRIBES OF GRAND RONDE','9615 GRAND RONDE ROAD',NULL,'Grand Ronde','Oregon','97347','971-901-1356',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-01-17 19:56:14','Building Operator Cert. LEVEL 1 - Portland','Sam','Adams','sbadams@wsu.edu','09/18/1975','Maintenance Mechanic 2','WSU Vancouver','14204 NE Salmon Creek',NULL,'Vancouver','Washington','98686','3605469702',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-02-12 14:30:05','Building Operator Cert. LEVEL 1 - Portland','Alberto','Campos','alberto.campos@cityofvancouver.us','07/18/1987','Building Repairs Speciallist','City of Vancouver','4711 E 4th Plain Blvd',NULL,'Vancouver','Washington','98668','360-607-8632',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-02-12 14:30:36','Building Operator Cert. LEVEL 1 - Portland','Trevor','Webberley','trevor.webberley@cityofvancouver.us','04-17-1991','Facilities Maintenance Specialist II','city of vancouver','4711 E Fourth Plain BLVD',NULL,'Vancouver','Washington','98668','360-784-2133',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-02-12 20:56:34','Building Operator Cert. LEVEL 1 - Portland','Brad','Davidson','brad.davidson@cityofvancouver.us','03-22-1982',NULL,'City Of Vancouver','415 W 6th St',NULL,'Vancouver','Washington','98660','3606198325',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-02-24 23:03:34','Building Operator Cert. LEVEL 1 - Portland','Jessica','Pavelka','jessica_pavelka@beaverton.k12.or.us','04/03/1979',NULL,NULL,'16550 SW Merlo Road',NULL,'Beaverton','Oregon','97003','5033564573',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-04-16 05:18:51','Building Operator Cert. LEVEL 1 - Bend','Village','Talkies','villagetalkiesdm@gmail.com','17-12-1977','Motion Graphics','VillageTalkies','No. 201, 2nd B Cross, ','2nd A Main Road, Kasturi Nagar,','Bangalore','------','560043','8971299636',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-04-29 19:48:25','Building Operator Cert. LEVEL 1 - Bend','Leroy','Frank','lfrank237@gmail.com','8-7-1956','Custodian','Salem Keizer School Dist.24j','2450 LANCASTER DR NE',NULL,'Salem','Select...','97305','5033993000',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-06 23:34:06','Building Operator Cert. LEVEL 1 - Bend','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952','PJ','LCC','4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5414636175',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-12 18:29:25','Building Operator Cert. LEVEL 1 - Bend','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952',NULL,NULL,'4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-18 21:12:50','Building Operator Cert. LEVEL 1 - MVW/ODOT','Katie','Hubler','katie.k.hubler@odot.state.or.us','11/06/1968','Facilities Contracts & Environmental Liaison','Oregon Dept. of Transporatation','200 Hawthorne Avenue SE','Suite B240','Salem','Oregon','97301','971-718-6681',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-18 22:35:59','Building Operator Cert. LEVEL 1 - MVW/ODOT','Aron','Edie','aron.b.edie@odot.state.or.us','06-10-1972','Facilities Maintenance Manager','ODOT','200 Hawthorne Ave SE Suite B240',NULL,'Salem','Oregon','97301','503-932-1555',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-19 15:29:54','Building Operator Cert. LEVEL 1 - MVW/ODOT','Jose','Franco','JOSE.R.FRANCO-RAMOS@ODOT.STATE.OR.US','09/26/1997','DRAFTER','OREGON DEPERTMENT OF TRASPORTATION','3310 ABRAMS AVE NE',NULL,'Salem','Oregon','97301','5039309177',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-19 15:34:55','Building Operator Cert. LEVEL 1 - MVW/ODOT','Logan','Jones','Logan.JONES@odot.stat.or.us','04/29/1981',NULL,'ODOT','3012 Island Av.',NULL,'La Grande','Oregon','97850','541 214 5699',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-19 15:42:22','Building Operator Cert. LEVEL 1 - MVW/ODOT','Michael','Schweizer','mike.schweizer@odot.state.or.us','17 May 194','Architect','ODOT','200 Hawthorne Ave SE Ste. B240',NULL,'Salem','Oregon','97301','541.602.5705',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-19 16:51:30','Building Operator Cert. LEVEL 1 - MWV/ODOT','Robert','Land','robert.d.land@odot.state.or.us','5/6/63','CPM','ODOT','200 Hawthorne ave. se. ste.B-240',NULL,'Salem','Oregon','97301','503-990-9136',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-19 16:58:18','Building Operator Cert. LEVEL 1 - MVW/ODOT','Jonathan','Doughton','jonathan.s.doughton@odot.state.or.us','08/06/74',NULL,NULL,'200 Hawthorne Ave','Ste B240','Salem','Oregon','97301','503-986-5787',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-19 20:15:14','Building Operator Cert. LEVEL 1 - MWV/ODOT','Robert','Dibble','robert.dibble@odot.state.or.us','10/12','Facilities Program Manager','ODOT','200 Hawthorne Avenue SE Ste B240','Ste B240','Salem','Oregon','97301','971-209-9434','503-986-5780',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-20 15:18:41','Building Operator Cert. LEVEL 1 - MWV/ODOT','Jesse','Powning','jesse.powning@odot.state.or.us','01/22/1980','Carpenter / Facility Specialist','ODOT','63055 N HWY 97',NULL,'Bend','Oregon','97703','541-554-4775',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-20 18:51:56','Building Operator Cert. LEVEL 1 - MWV/ODOT','TEST','TEST','ebbager@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-20 18:56:13','Building Operator Cert. LEVEL 1 - MEGA SEM','TEST','TEST','ebbager@lanecc.edu','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-20 22:17:22','Building Operator Cert. LEVEL 1 - MWV/ODOT','John ','Kincaid','john.l.kincaid@odot.state.or.us','12/02/1961','Facilities Maintenance Specialist','ODOT','200Hawthorne ave. SE steB240',NULL,'Salem','Oregon','97301','(503) 932-5001',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-21 15:59:28','Building Operator Cert. LEVEL 1 - MWV/ODOT','Randy','Gengler','randy.c.gengler@odot.state.or.us','01/19/1968','Facilities Services Branch Manager','ODOT','200 Hawthorne Ave SE, Suite B240',NULL,'Salem','Oregon','97301','503-507-5550',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-22 22:37:19','Building Operator Cert. LEVEL 1 - MWV/ODOT','Randy','Van Heukelem','Randy.vanheukelem@odot.state.or.us','6/1/54','Facilities Maintenance Specialist','ODOT','200 Hawthorne Ave SE STE B240',NULL,'Salem','Oregon','97301','503 - 932-1123',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-26 15:07:15','Building Operator Cert. LEVEL 1 - MWV/ODOT','Steven','McNeal','steve.mcnealj@odot.state.or.us','8-28-1957',NULL,'ODOT Facilities','200 Hawthorne Ave SE','Suite 240B','Salem','Oregon','97301','503-804-9909',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-26 18:07:53','Building Operator Cert. LEVEL 1 - MWV/ODOT','Brett','Timm','Brett.A.Timm@odot.state.or.us',50962,'CPM','ODOT - Facilities','200 Hawthorne Ave SE, STE B-240',NULL,'Salem','Oregon','97301','(503) 986-5792',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-26 20:05:06','Building Operator Cert. LEVEL 1 - MWV/ODOT','Kelly ','Faville','Kelly.g.faville@odot.state.or.us','6/27/56','Inspector / carpenter','ODOT','200 Hawthorne Ave SE',NULL,'Salem','Oregon','97303','503-510-3757',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-27 14:08:54','Building Operator Cert. LEVEL 1 - MWV/ODOT','Raymond','Cooper','Raymond.F.COOPER@odot.state.or.us','11/23/1956','Region 3 Construction Project Manager','ODOT','3500 NW Stewart Parkway',NULL,'Roseburg','Oregon','97470','541-957-3585','503-986-5780',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-27 16:12:02','Building Operator Cert. LEVEL 1 - MWV/ODOT','Travis','Duby','travis.duby@odot.state.or.us','2-3-75','Project Manager','ODOT','355 Capital St. NE',NULL,'Salem','Oregon','97301','5419631329',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-27 21:29:15','Building Operator Cert. LEVEL 1 - MEGA SEM','Aaron','Presberg','apresberg@pps.net','04/01/1991','Senior Program Manager, Energy & Sustainability','Portland Public Schools','501 N. Dixon St.',NULL,'Portland','Oregon','97227','5033898762',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-28 13:40:13','Building Operator Cert. LEVEL 1 - MWV/ODOT','Neil','Stearns','neil.stearns@odot.state.or.us','9/16/1964',NULL,NULL,'3500 NW Stewart parkway','Facilities Service Branch','Roseburg','Oregon','97470','541 957-3699',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-28 19:27:41','Building Operator Cert. LEVEL 1 - MWV/ODOT','Kurt','Thomas','kurt.THOMAS@odot.state.or.us','06/07/1964','Carpenter','Odot','885 Airport Road SE',NULL,'Salem','Oregon','97301','971.707-2714',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-28 19:28:32','Building Operator Cert. LEVEL 1 - MWV/ODOT','Joe','Zaback','joseph.zaback@odot.state.or.us','04/15/1972','Carpenter','ODOT','885 Airport RD SE BLDG X',NULL,'Salem','Oregon','97330','503-559-1379',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-29 00:06:12','Building Operator Cert. LEVEL 1 - MEGA SEM','Eric ','Spond','Eric.SPOND@odot.state.or.us','10/02/1989','Construction Project Manager','Oregon Department of Transportation','Suite B240, 200 Hawthorne Ave SE',NULL,'Salem','Oregon','97301','503-302-3705',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-05-30 16:42:06','Building Operator Cert. LEVEL 2 TBA','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952','PJ','Lane Community College Energy Water Programs','4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-03 15:19:00','Building Operator Cert. LEVEL 1 - MWV/ODOT','Raymond ','Christiansen','Raymond.Christiansen@odot.state.or.us','09-03-1958',NULL,NULL,'200 Hawthorne Ste 240',NULL,'Salem ','Oregon','97301','503-932-6863',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-08 20:19:12','Building Operator Cert. LEVEL 1 - MWV/ODOT','Steve','Liebenstein','steve.r.liebenstein@odot.state.or.us','03-30-1958','Facility maintenance specialist','odot','200 Hawthorne ave SEste.B240',NULL,'Salem','Oregon','97301','503-932-1118',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-10 14:08:02','Please select a Training...','Lowell','Youngblood','lowell.youngbglood@odot.state.or.us','11/24/1958','Facilities Maintenance Specilast','Oregon Department Of Transportation','3700 SE 92nd ave Portland Or 97266',NULL,'Portland','Oregon','97266','5035195062',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-10 14:40:04','Building Operator Cert. LEVEL 1 - MWV/ODOT','Lowell','Youngblood','lowell.youngbglood@odot.state.or.us','11/24/1958','Facilities Maintenance Specilast','Oregon Department Of Transportation','3700 SE 92nd ave Portland Or 97266',NULL,'Portland','Oregon','97266','5035195062',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-12 14:08:48','Please select a Training...','Lowell','Youngblood','lowell.youngbglood@odot.state.or.us','11/24/1958','Facilities Maintenance Specilast','Oregon Department Of Transportation','3700 SE 92nd ave Portland Or 97266',NULL,'Portland','Oregon','97266','5035195062',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-12 15:03:17','Building Operator Cert. LEVEL 1 - MWV/ODOT','Lowell','Youngblood','lowell.youngbglood@odot.state.or.us','11/24/1958','Facilities Maintenance Specilast','Oregon Department Of Transportation','3700 SE 92nd ave.',NULL,'Portland','Oregon','97266','5035195062',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-16 23:23:13','Building Operator Cert. LEVEL 1 - MWV/ODOT','Justin','Moore','Justin.R.Moore@odot.state.or.us','09/11/1985','Facilities Manager','ODOT/DMV','1905 Lana Ave NE',NULL,'Salem','Oregon','97314','503 945 5265',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-17 20:51:13','Building Operator Cert. LEVEL 1 - MWV/ODOT','Daron ','Pond','daron.pond@grandronde.org','09/02/1990','Maintenance Tech','Confederated Tribes of Grand Ronde','9615 Grand Ronde Rd',NULL,'Grand Ronde','Oregon','97347','971-237-5444',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-18 19:38:00','Building Operator Cert. LEVEL 1 - MEGA SEM','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952','PJ','Lane Community College','4000 East 30th Ave',NULL,'Eugene','Oregon','97401','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-24 19:37:16','Building Operator Cert. LEVEL 1 - MWV/ODOT','RYAN','Tollackson','tollackr@hsd.k12.or.us','7/11/1992','MAINTENCE 4/HVAC','HILLSBORO SCHOOL DISTRICT','7008 NE RONLER WAY','APT 3227','Hillsboro','Oregon','97124','503-793-8633',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-25 14:23:00','Building Operator Cert. LEVEL 1 - MWV/ODOT','Kyle','Orton','kylekmo@gmail.com','11/4/86','MAINTENANCE 3/HVAC PM','HILLSBORO','7770 NW CORNELIUS PASS ROAD',NULL,'Hillsboro','Oregon','97124','503-616-1041',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-25 16:37:02','Building Operator Cert. LEVEL 1 - MWV/ODOT','Sam','Busskohl','Sam.busskohl@ltd.org','10/10/88','Facilities Maintenance Generalist I','Lane Transit District','PO BOX 7070',NULL,'Springfield','Oregon','97475','5415794981','541-682-6111',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-25 16:42:13','Building Operator Cert. LEVEL 1 - MWV/ODOT','Michael','Smith','Michael.Smith@ltd.org','1/19/79','Facilities Maintenance Generalist ','Lane Transit District','PO Box 7070',NULL,'Springfield ','Oregon','97475','541-579-4981','541-682-6111',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-25 20:29:10','Building Operator Cert. LEVEL 1 - MWV/ODOT','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952','PJ','Lane Community College','1710 Adkins St','Apt 4','Eugene','Oregon','97401','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-06-25 21:08:47','Building Operator Cert. LEVEL 1 - MWV/ODOT','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952',NULL,'Lane Community College','1710 Adkins St','Apt 4','Eugene','Oregon','97401','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-07-08 17:25:37','Building Operator Cert. LEVEL 2 TBA','Mildred ','Spaiden','spaiden@olmail.com','09/25/1985','PJ','NO where ','3500 NW Stewart Parkway',NULL,'Salem','Oregon','97470','5412223333',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-07-13 20:17:09','Building Operator Cert. LEVEL 2 TBA','Maria','De Scott','descottm@yahoo.com','01/01/1952',NULL,'LCC','P.O. Box 124',NULL,'Okemah','Oklahoma','74859','9185814195',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-07-13 20:18:19','Building Operator Cert. LEVEL 2 TBA','Bill ','Roscoe','roscoe@gmail.com','09/25/1985',NULL,'LCC','P.O. Box 124',NULL,'Okemah','Oklahoma','74859','9185814195',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-07-13 20:21:46','Building Operator Cert. LEVEL 2 TBA','Maria','De Scott','luzitabks@gmail.com','01/01/1952',NULL,'LCC','4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5414636175',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-07-13 20:23:48','Building Operator Cert. LEVEL 2 TBA','William ','Scott','luzitabks@gmail.com','09/25/1985',NULL,'LCC','101 W 10th Ave #404',NULL,'Eugene','Oregon','97401','5414636175',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-07-30 22:54:53','Building Operator Cert. LEVEL 1 - MWV/ODOT','Peggy','Nichols','peggy.s.nichols@odot.state.or.us','11/30/1970','R3 Business Manager','ODOT','3500 NW Stewart Parkway',NULL,'Roseburg','Oregon','97470','541-957-3524',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-08-26 17:46:00','Building Operator Cert. LEVEL 1 - MWV/ODOT','Brittany','West','brittanybudgets@gmail.com','09/05/1992','Facilities Manager','1992','331 SE 81st Ave',NULL,'Portland','Oregon','97215','3173666938',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-08-26 23:14:31','BOC Oregon','Brenda','Cervantes','luzitabks@gmail.com','09/25/1985',NULL,'Lane Community College','1710 Adkins St','Apt 4','Eugene','Oregon','97401','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-09-12 04:30:15','BOC Oregon 2020 Level 1 ','Paul','Searles','perfectdark13@gmail.com',3131976,'Engineer',NULL,'127 s primrose ave',NULL,'Alhambra','California','91801','6265452800',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-09-16 17:51:31','BOC Oregon 2020 Level 1 ','Brent','Koegel','brent.m.koegel@kp.org','12/15/85','Engineer','Kaiser Permanente','21099 S Jubb RD',NULL,'Estacada','Oregon','97023','503-307-7270',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-09-29 15:47:10','BOC Oregon 2020 Level 1 ','Patricia','Schneider','patricia.m.schneider@odot.state.or.us','09/14/1966','Office Coordinator','ODOT','3700 SE 92nd Ave',NULL,'Portland','Oregon','97266','503-731-3244',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-09-30 21:38:55','Building Operator Cert. LEVEL 1 - MWV/ODOT','Mark','Kuhn','mark_kuhn@sehamerica.com','09/30/1959','Facilities Mechanical Engineer','SEH America, Inc.','41111 NE 112th Ave.',NULL,'Vancouver','Washington','98682','3608837680',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-10-02 14:36:18','BOC Oregon 2020 Level 1 ','Brian','Starliper','starliperb@umatillasd.org','6-4-1977','Maintenance ','Umatilla school district','910 E newport ave',NULL,'Hermiston','Oregon','97838','5415618004',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-10-05 12:39:15','BOC Oregon 2020 Level 1 ','Vincent','Stefani','stefaniv@umatillasd.org','06/22/1992','Maintenance','Umatilla School District','1761 NE 4TH PL',NULL,'Hermiston','Oregon','97838','541-314-3602',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-11-16 16:33:09','BOC Oregon 2020 Level 1 ','Sean','Brooks','Sean.Brooks@ABM.com','07-31-1985',NULL,NULL,'5100 NE Dawson Creek Dr',NULL,'Hillsboro','Oregon','97124','9713489080',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-12-14 08:24:37','BOC Oregon 2021 Level 1 ','Abdool Nasser','Bundheea','Abdoolnasserhvac@gmail.com','7/9/1970','Engineer','Own','Robinson road curepipe','Robinson road curepipe','Curepipe','Arizona','00230','52530033','None',NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2020-12-16 19:05:18','BOC Oregon 2021 Level 1 ','Sean','Brooks','Sean.Brooks@ABM.com','07-31-1985',NULL,NULL,'5100 NE Dawson Creek Dr',NULL,'Hillsboro','Oregon','97124','9713489080',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-04 16:07:00','BOC Oregon 2021 Level 1 ','Bryan','Brown','bryanbrown@oregoncc.org','10/07/1985','Lead engineer','Oregon Convention Center','777 NE MLK Jr Blvd',NULL,'Portland','Oregon','97232','5037317832',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-04 21:39:12','BOC Oregon 2021 Level 1 ','Stacy','Skerjanec','skerjanecs@umatillasd.org','06/20/1968','Maintenance Director','Umatilla School District 6R','1001 6th ST',NULL,'Umatilla','Oregon','97882','5415615435',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-05 17:11:24','Please select a Training...','Brent','Koegel','brent.m.koegel@kp.org','12/15/1985','Engineer','Kaiser Permanente ','21099 S Jubb Rd',NULL,'Estacada ','Oregon','97023','503-307-7270',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-08 21:43:29','BOC Oregon 2021 Level 1 ','Brian','Starliper','Starliperb@umatillasd.org','6-4-1977','Maintenance ','Umatilla school district','1001 6th street',NULL,'Umatilla','Oregon','97882','541-561-8004',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-08 21:46:33','BOC Oregon 2021 Level 1 ','Stacy','Skerjanec','skerjanecs@umatillasd.org','06/20/1968','Maintenance Director','Umatilla School District 6R','1001 6th ST',NULL,'Umatilla','Oregon','97882','5415615435',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-08 21:48:12','BOC Oregon 2021 Level 1 ','Vincent','Stefani','stefaniv@umatillasd.org','06/22/1992','Maintenance ','Umatilla School District','1761 NE 4th PL',NULL,'Hermiston ','Oregon','97882','5413143602',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-20 22:22:16','BOC Oregon 2021 Level 1 ','Gabriel','Morgan','gmorgan@shorenstein.com','04/20/1977','Assistant Chief of Engineering','Shorenstein','5335 Meadows Rd Suite #275',NULL,'Portland','Oregon','97035','5038494754',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-20 23:07:13','BOC Oregon 2021 Level 1 ','MICHAEL','Cox','MICHAEL.COX.71@US.AF.MIL','12-5-69',NULL,NULL,'221 WAGNER STREET',NULL,'Klamath Falls','Oregon','97603','5418856137',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-21 17:06:59','BOC Oregon 2021 Level 1 ','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952',NULL,'Lane Community College','1710 Adkins St','Apt 4','Eugene','Oregon','97401','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-21 18:13:41','BOC Oregon 2021 Level 1 ','Michael ','Cox','Kfbeaver69@gmail.com','12-05-1969',NULL,NULL,'221 Wagner Street suite 16',NULL,'Klamath falls ','Oregon','97603','(541)591-1950',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-22 20:02:15','BOC Oregon 2021 Level 1 ','William','Gamradt','William.gamradt@us.af.mil','03/25/68','Facility Manager ','Oregon Air National Guard','221 Wagner St',NULL,'Klamath Falls','Oregon','97603','4064614515',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-25 21:22:21','BOC Oregon 2021 Level 1 ','William','Cushman','cushmab@linnbenton.edu','08/15/1974','Maintenance Specialist','Linn Benton Community College','6500 Pacific Blvd SW','Service Center','Albany','Oregon','97321','5419717318',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-25 21:34:04','BOC Oregon 2021 Level 1 ','Joel','Miller','joel.miller@oregonstate.edu','12/29/1971','Facilites and Operations Manager','OSU Food Innovation Center','1207 NW Naito Pkwy',NULL,'Portland','Oregon','97209','5033676650',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-26 21:17:59','BOC Oregon 2021 Level 1 ','Jon','Berry','berryj@linnbenton.edu','07/12/1976','Maintenance Lead','Linn Benton Community College','6500 SW Pacific BLVD',NULL,'Albany','Oregon','97321','541-917-4720',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-28 14:30:12','BOC Oregon 2021 Level 1 ','Kimberly','Tyler','kjt@nwnatural.com','01/13/1968','Facilities Management Specialist','NW Natural','20295 SW Cipole Road',NULL,'Sherwood','Oregon','97140','503-709-9453',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-29 22:09:31','BOC Oregon 2021 Level 1 ','Jeremy','Mendiola','jeremy@bendparksandrec.org','08/01/1979','Facilities specialist 2','bend parks and recreation','1675 sw simpson ave',NULL,'Bend','Oregon','97702','5419484090',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-01-29 22:10:29','BOC Oregon 2021 Level 1 ','Ben','Lewellen','ben@bendparksandrec.org','4/30/1982','HVAC Controls Specialist 1','Bend Park & Recreation District','1675 SW Simpson Ave',NULL,'Bend','Oregon','97702','5412806502',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-02 00:41:43','BOC Oregon 2021 Level 1 ','Amelia','Palmer Hansen','amelia.palmer15@pcc.edu','01-15-1967','SEM Associate','PCC','6859 NE Sacramento St',NULL,'Portland','Oregon','97213','503-703-9953',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-02 03:40:45','BOC Oregon 2021 Level 1 ','Eric','Winn','eric.winn@multco.us','1/1/1980','Energy Specialist','Multnomah County','501 SE Hawthorne Blvd.','Ste. 400','Portland','Oregon','97214','503-422-2662',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-02 03:45:10','BOC Oregon 2021 Level 1 ','Kevin','Hendley','kevin.hendley@multco.us','1/1/1980','Automated Systems Manager','Multnomah County','501 SE Hawthorne Blvd.','Ste. 400','Portland','Oregon','97214','5034222661',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-02 20:44:34','BOC Oregon 2021 Level 1 ','Nina','Friedman','nfriedman@ashlandfood.coop','02/28/1989',NULL,'Ashland Food Co-op','237 N. 1st St.',NULL,'Ashland','Oregon','97520','9186257732',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 00:24:21','BOC Oregon 2021 Level 1 ','TEST','TEST','todor.s@siteground.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 00:26:54','Building Operator Cert. LEVEL 1 - MWV/ODOT','TEST','TEST','todor.s@siteground.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 01:20:21','BOC Oregon 2021 Level 1 ','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952',NULL,'Lane Community College Energy Water Programs','4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5034810130',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 15:27:45','BOC Oregon 2021 Level 1 ','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952',NULL,NULL,'1125 58TH ST','SPC 41','Springfield','Oregon','97478','5034810130',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 15:55:45','BOC Oregon 2021 Level 1 ','Patrick','Johnson','pjohnson@highdesertmuseum.org','10/03/1970','Chief of Facilities','High Desert Museum','59800 S HWY 97',NULL,'Bend','Oregon','97702','5416045444',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 15:58:03','BOC Oregon 2021 Level 1 ','Thomas','King','TKing@highdesertmuseum.org','10/16/1954','Facilities Technician','High Desert Museum','59800 S HWY 97',NULL,'Bend','Oregon','97702','5416045444',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 16:29:56','BOC Oregon 2021 Level 1 ','Steve','Barbo','sbarbo@salesforce.com','05/07/1978',NULL,'Salesforce','2035 NE Cornelius Pass Road',NULL,'Hillsboro','Oregon','97124','5037133037',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 17:48:14','BOC Oregon 2021 Level 1 ','Gianni','Barrette','gianni_barrette@co.washington.or.us','08/10/1973','Facilities Supervisor','Washington County','169 N 1st Ave.','MS 42A','Hillsboro','Oregon','97124','9717135543',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 17:50:57','BOC Oregon 2021 Level 1 ','Christiam','Ramirez','christiam_ramirez@co.washington.or.us','11/28/1991','Maintenance Tech 1','Washington County','169 N 1st Ave.','MS 42A','Hillsboro','Oregon','97124','9712050229',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 17:52:24','BOC Oregon 2021 Level 1 ','Colton','Thomas','colton_thomas@co.washington.or.us','03/23/1987','Technician','Washington County','169 N 1st Ave.','MS 42A','Hillsboro','Oregon','97124','9717139522',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 18:26:02','Please select a Training...','Mark','Schoch','mark_schoch@co.washington.or.us','02/03/1969','Maintenance Tech 2','Washington County','169 N 1st Ave.','MS 42A','Hillsboro','Oregon','97124','503-849-0004',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-05 18:29:18','BOC Oregon 2021 Level 1 ','Jeff','Walls','jeffrey_walls@co.washington.or.us','03/31/1980','Maintenance Worker','Washington County','169 N 1st Ave.','MS 42A','Hillsboro','Oregon','97124','9717135543503-5',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-08 21:12:23','BOC Oregon 2021 Level 1 ','Mark','Griffith','griffithm@klamathcc.edu','02/05/1979','Physical Plant Specialist','Klamath Community College','7390 S. Sixth St',NULL,'Klamath Falls','Oregon','97603','541-274-1620',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-02-09 15:42:30','BOC Oregon 2021 Level 1 ','Eric','Huber','ehub40@msn.com','09/19/1966','Facilities Maintenance 2 ','Willamette University','900 State St. ',NULL,'Salem','Oregon','97301','503-370-6532',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-03-04 18:04:04','BOC Oregon 2021 Level 1 Closed ','Ben','Pettitt','b.pettitt@thprd.org','01/10/1974','Building Maintenance Tech I','Tualatin Hills Park and Recreation District','15707 SW Walker Rd',NULL,'Beaverton','Oregon','97007','5036809125',NULL,NULL,NULL,'Credit Card (phone or mail only)');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-03-04 18:38:14','BOC Spring 2021 Level 1 Open','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952',NULL,NULL,'1125 58TH ST','SPC 41','Springfield','Oregon','97478','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-03-04 19:01:11','BOC Spring 2021 Level 1 Open','Devan','Murray','devan.murray@hyster-yale.com','7/28/1990',NULL,'hyster-yale goup','4000 ne blue lake road',NULL,'Fairview','Oregon','97024','9712203134',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-04-30 22:07:57','BOC Level I August 2021','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952',NULL,'LCC','4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5414636175',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-05-03 15:59:58','BOC Level I August 2021','Jaime ','Fantauzzi','jfantauzzisoto@gmail.com','12/04/1976','BuildingEngineer','Avenue 5 Residential ','201 SE 88th Ave. ',NULL,'Portland ','Oregon','00976','7873074832',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-05-06 15:35:07','BOC Level II July 2021','Jon','Sanders','sandejon@parkrose.k12.or.us','04/22/77','HVAC/R','Parkrose School District #3','10636 NE Prescott St. ',NULL,'Portland','Oregon','97230','503-863-4533',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-05-06 15:36:36','BOC Level I August 2021','Jon','Sanders','sandejon@parkrose.k12.or.us','04/22/77','HVAC/R','Parkrose School District #3','10636 NE Prescott St. ',NULL,'Portland','Oregon','97230','503-863-4533',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-05-11 16:08:38','BOC Level I August 2021','Shea','Davis','sdavis@aenw.net','5/18/1986',NULL,'Melvin Mark','12789 SE Evening Star Lane',NULL,'Happy Valley','Oregon','97086','5033179388',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-01 21:18:45','BOC Level I August 2021','Michael','Fredrickson','mfredrickson@grantspassoregon.gov','09/18/84','Municipal service worker ','City of Grants pass Oregon','101 NW Ast ',NULL,'Grants Pass','Oregon','97526','541-226-4202',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-02 00:18:28','BOC Level I August 2021','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952',NULL,NULL,'1125 58TH ST','SPC 41','Springfield','Oregon','97478','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-04 19:02:53','BOC Level I August 2021','Chirag','Bhatt','cbhatt63@gmail.com','08/06/1999',NULL,'Hindustan Institute of Technology and Science','17, Kesva Iyer Street','Sowcarpet','Chennai','Non-US','600003','09952904838',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-15 19:41:33','Please select a Training...','Chris','Stomps','christopher_stomps@csd28j.org','05/28/1960','Maintenance Supervisor','Centennial School District','3505 SE 182nd',NULL,'Gresham','Oregon','97030','5039134263',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-15 21:10:26','BOC Level II July 2021','Travis','Streeter','travis_streeter@csd28j.org','01/17/1993','LBME ','Centennial School District','3505 Southeast 182nd Avenue',NULL,'Gresham','Oregon','97030','5034151253',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-22 16:31:34','BOC Level I August 2021','David','Rowley','rowleyd@linnbenton.edu',92773,'Maintenance 4','LBCC Facilities','6500 Pacific Blvd SW',NULL,'Albany','Oregon','97321','5419743171',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-22 16:34:26','BOC Level I August 2021','Kazuyoshi','van Teijn','vanteis@linnbenton.edu',40456,'Maintenance ','Linn-Benton Community College','6500 Pacific Blvd SW',NULL,'Albany','Oregon','97321','5419901014',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-22 22:52:48','BOC Level II July 2021','John','Elsen','jelsen@ci.oswego.or.us','02/27/1987',NULL,'City of Lake Oswego','17601 Pilkington Rd',NULL,'Lake Oswego','Oregon','97035','9719405915',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-22 22:56:27','BOC Level II July 2021','Jeremy','Christensen','jchristensen@ci.oswego.or.us','11/05/1977',NULL,'City of Lake Oswego','17601 Pilkington Rd',NULL,'Lake Oswego','Oregon','97035','9719405915',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-06-24 19:32:34','BOC Level II July 2021','Michael','Haley','haleymi@ohsu.edu','10/28/1986','Project Manager','Oregon Health & Science University','505 NW 185th Ave',NULL,'Beaverton','Oregon','97006','5033465849',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-06 20:54:00','BOC Level II July 2021','Luis','Maggiori','maggioril@lanecc.edu','07/14/1982','Sustainability Coordinator','Lane Community College','4000 East 30th Avenue','building 7','Eugene','Oregon','97405','5414635884',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-09 20:08:25','BOC Level II September 2021','Jeff','Flaherty','jflaherty@columbia.com','06/03/1975','Facility Tech 3','Columbia Sportswear','14375 NW Science Park Dr',NULL,'Portland','Oregon','97229','503-729-8542',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-09 20:53:09','BOC Level I August 2021','Nick','Cosler','nick.cosler@columbia.com','05/12/1985','Facilities Building Coordinator','Columbia Sportswear','14375 NW Science Park Dr',NULL,'Portland','Oregon','97229','5035237273',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-13 20:04:04','BOC Level I August 2021','Brian','Karm','bkarm@lhs.org','10/26/1966','Facilities Engineer','Legacy Mount Hood Medical Center','24800 SE Stark Street',NULL,'Gresham','Oregon','97030','503 674-1174','503 674-1996',NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-16 14:42:57','BOC Level I August 2021','Victor','Cho ','lc20-0344@lclark.edu','03/13/2002',NULL,NULL,'615 SW Palatine hill Rd ',NULL,'Portland','Oregon','97219','2088094313',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-20 00:20:14','BOC Level I August 2021','Brenda','Cervantes','luzitabks@gmail.com','01/01/1954',NULL,NULL,'1125 58th Street','Space 41','Springfield','Oregon','97478','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-20 18:00:17','BOC Level I August 2021','Alex','Zapien','alexzapien@oregoncc.org','05-07-1985','Operating Engineer','Oregon Convention Center','777 NE Martin Luther King Jr. Blvd',NULL,'Portland ','Oregon','97232','408-726-9753',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-23 00:02:21','BOC Level I August 2021','Jody','Halligan','Jody.Halligan@salemhealth.org','4/28/88',NULL,'Salem Health','890 Oak St. SE',NULL,'Salem','Oregon','97301','503-798-3821',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-23 00:06:24','BOC Level I August 2021','Christopher','Simon','Christopher.Simon@salemhealth.org','11/9/1965',NULL,'Salem Health','890 Oak St. SE',NULL,'Salem','Oregon','97301','514-990-4457',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-23 21:04:08','BOC Level I August 2021','Gina','Carter','gcarter@salesforce.com','10/24/1965','Site Sueprvisor','Salesforce.com','2035 NE Cornelius Pass Rd',NULL,'Hillsboro','Oregon','97124','310-734-9496',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-25 18:48:14','BOC Level II September 2021','Dylan','Duff','dylanduffa@gmail.com','09/10/1992','Service Supervisor','Greystar','7737 sw Wimbledon cir. n',NULL,'Wilsonville','Oregon','97070','5034767469',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-26 17:28:18','BOC Level I August 2021','Gina','Carter','gcarter@salesforce.com','10/24/1965','Site Sueprvisor','Salesforce.com','2035 NE Cornelius Pass Rd',NULL,'Hillsboro','Select...','97124','310-734-9496',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-26 17:38:28','BOC Level II September 2021','TEST','TEST','asdf@asdf.com','1/1/01',NULL,NULL,'TEST',NULL,'TEST','Oregon','97045','TEST',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-26 17:38:46','BOC Level II September 2021','Brenda','Cervantes','luzitabks@gmail.com','01/01/1952',NULL,'Lane Community College','4000 East 30th Ave',NULL,'Eugene','Oregon','97401','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-26 18:25:59','BOC Level I August 2021','Brian','Karm','bkarm@lhs.org','10/26/1966','Facilities Engineer','Legacy Mount Hood Medical Center','24800 SE Stark Street',NULL,'Gresham','Oregon','97030','503 674-1174','503 674-1192',NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-26 22:05:58','BOC Level I August 2021','Justin','Dawley','DawleyJ@lanecc.edu','12/19/1980','Maintenance Lead','Lane Community College','336 37th St.',NULL,'Springfield','Oregon','97478','541-480-5430',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-27 21:10:45','BOC Level I August 2021','Brian','Starliper','starliperb@umatillasd.org','06/04/1977','Maintenance worker','Umatilla School District 6R','1001 6th ST',NULL,'Umatilla','Oregon','97882','541-561-8004',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-28 23:36:37','BOC Level I August 2021','Justin','Pribyl','jpribyl@ttsd.k12.or.us','06/14/1982','Day Specialist','Tigard Tualatin School District','12325 SW Katherine St.',NULL,'Tigard','Oregon','97223','5034314711',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-30 17:03:48','BOC Level I August 2021','Ricky','Liang','liangs@reed.edu','12/01/1974','Maintenance Technician','Reed College','3203 SE Woodstock Blvd',NULL,'Portland','Oregon','97202','5034591515',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-30 18:06:22','BOC Level I August 2021','Jay ','Hanley','hanleyj@reed.edu','12/14/1966','Maintenance Specialist','Reed College','3203 SE Woodstock Blvd',NULL,'Portland','Oregon','97202','5034591515',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-30 18:20:10','BOC Level I August 2021','Esther','Forbyn','Forbyne@reed.edu','03/27/77','Maintenance Supervisor','Reed College','3203 SE Woodstock Blvd',NULL,'Portland','Oregon','97202','5034591515',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-07-30 20:54:17','BOC Level I August 2021','Josh','Hamilton','hamiltoj@reed.edu','01/01/1990','Maintenance Specialist','Reed College','3203 SE Woodstock Blvd',NULL,'Portland','Oregon','97202','5034591515',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-03 06:24:43','Please select a Training...','Daniel','Crisafulli','djc821@gmail.com','08/21/1994','Assistant Building Engineer ','CBRE','5405 Ne 64th Ave',NULL,'Vancouver','Washington','98661','7143521697',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-03 16:44:24','BOC Level I August 2021 CLOSED','Jeff','Copher','Jeffcopher@gmail.com','9/18/85','Engineer','Kaiser Permanente','37950 SE Coupland Rd',NULL,'Estacada','Oregon','97023','503-936-1162',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-04 14:42:08','BOC Level I August 2021 CLOSED','Mark','Fredrickson','Mark.Fredrickson@salemhealth.org','7/20/1985',NULL,NULL,'890 Oak Street SE',NULL,'Salem','Oregon','97301','503-586-3248',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-04 16:45:03','BOC Level I August 2021 CLOSED','Gina','Carter','gcarter@salesforce.com','10/24/1965','Site Sueprvisor','Salesforce','11700 SW Butner Road','Apt 332','Portland','Oregon','97225','310-734-9496',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-04 17:30:56','BOC Level I August 2021 CLOSED','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952',NULL,'Lane Community College Energy Water Programs','101 W 10th Ave #404',NULL,'Eugene','Oregon','97401','5414636175',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-04 17:35:35','BOC Level I August 2021 CLOSED','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952',NULL,'Lane Community College Energy Water Programs','4000 E 30th Ave',NULL,'Eugene','Oregon','97405','5034810130',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-08-12 17:07:51','BOC Level II September 2021','Mohammed','Mustapha','mustaphayarow@gmail.com','9/10/86','Mr','Hybrid leading edge energy services','Plt1 block 3 tafo nhyieso','Kumasi','Kumasi','Non-US','506','+233242725938',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-11-23 17:26:35','BOC Level I August 2021 CLOSED','Brenda','Cervantes','cervantesb@lanecc.edu','01/01/1952',NULL,'Lane Community College Energy Water Programs','101 W 10th Ave #404',NULL,'Eugene','Oregon','97401','5414636175',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-11-29 17:44:06','BOC Level I March 2022','Bob','Miller','elizabeth.gonzalez@doc.state.or.us','08/01/1971','Maintenance and Operations Supervisor','Snake River Correctional Institution ','777 Stanton Blvd',NULL,'Ontario ','Oregon','97914','5418815087',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-12-02 18:31:59','BOC Level II January 2022','Sean','Brooks','Sean.Brooks@ABM.com','07/31/1985',NULL,NULL,'5100 NE Dawson Creek Dr',NULL,'Hillsboro','Oregon','97124','9713489080',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-12-06 14:10:12','BOC Level I March 2022','Vincent','Stefani','stefaniv@umatillasd.org','06/22/1992','Building operator','umatilla school district','1761 NE 4th PL',NULL,'Hermiston','Oregon','97838','5413143602',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-12-14 15:21:06','BOC Level II January 2022','Jeremy','Mendiola','jeremy@bendparksandrec.org','08/01/1979','Facilities specialist II','Bend Parks and Recreation','1675 sw simpson ave.',NULL,'Bend','Oregon','97702','5419484090',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-12-16 21:57:48','BOC Level I March 2022','Jennifer ','Layman','laymanj@up.edu','07/14/1966','Assistant Director, Physical Plant','University of Portland','5000 N Willamette Blvd',NULL,'Portland','Oregon','97203','5039437471',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-12-22 15:31:45','BOC Level I March 2022','Mahsha','Ahanchian','mahanchian@gicw.org','09/16/1982','Strategic Energy Analyst','Goodwill Industries of the Columbia Willamette','1943 SE Sixth Avenue',NULL,'Portland','Oregon','97214','5034750583',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2021-12-28 15:03:33','BOC Level I March 2022','Hieu','Dinh','hieu.dinh@providence.org','06/08/1979','Electrician','Providence Milwaukie Hospital','10150 SE 32nd ave',NULL,'Portland','Oregon','97222','503-756-3573',NULL,NULL,NULL,'Free Event');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-04 21:50:08','BOC Level II January 2022','Travis','Streeter','travis_streeter@csd28j.org','01/17/1993','LBME ','Centennial School District','17709 SE Lincoln St',NULL,'Portland','Oregon','97233','5035721292',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-07 16:56:09','BOC Level I March 2022','Stevan','Farron','stevan.farron@ihs.gov','10/13/1987','Facilities Operations Specialist','Indian Health Services','1414 NW Northrup St., Suite 800',NULL,'Portland','Oregon','97209','(503) 414-7782',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-11 21:30:35','BOC Level I March 2022','Glenn','Whipple','Glenn.Whipple@Providence.org','03/03/1962','Building Engineer','Providence Milwaukie Hospital','10150 Southeast 32nd Avenue',NULL,'Milwaukie','Oregon','97222','9713308749',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-13 15:58:49','BOC Level I March 2022','David','Garry','dgarry@lhs.org','04/27/1958','Facility Manager','Legacy Health Services','1225 NE 2nd Avew',NULL,'Portland','Oregon','97232','503-413-5302',NULL,NULL,NULL,'Purchase Order');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-13 19:06:02','BOC Level I March 2022','McKenzie','Troutt','mckenzie.troutt@gmail.com','09/02/1976',NULL,NULL,'5825 SE 23rd Ave',NULL,'Portland','Oregon','97202','503-473-6485',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-19 17:30:28','BOC Level I March 2022','Michael','Pontelandolfo','michael.pontelandolfo@odot.state.or.us','09/03/1963','Carpenter','ODOT','63055 N Highway97',NULL,'Bend','Oregon','97703','5412807306',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-19 19:50:26','BOC Level I March 2022','Clinton','Jay','clinton.jay@columbia.com','03/09/1962','Facilities Manager','COLUMBIA SPORTSWEAR','7000 N LEADBETTER RD',NULL,'Portland','Oregon','97203','15039782305',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-27 16:40:26','BOC Level I March 2022','William','Curley','WilliamCurley@elephantsdeli.com','01/12/1972','Facilities Manager','Elpehants Delicatessen','700 SE Clay Street',NULL,'Portland','Oregon','97222','503-224-3955',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-27 18:53:46','BOC Level I March 2022','Mark','Dornfeld','mdornfeld@mesd.k12.or.us','11-25-1961',NULL,NULL,'2639 SW 17th Place',NULL,'Gresham','Oregon','97080','503-708-9486',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-01-27 20:40:01','BOC Level I March 2022','Cody','Baggenstoss','cbaggenst@mesd.k12.or.us','7-13-1973',NULL,NULL,'15101 NE Rose PKWY',NULL,'Portland','Oregon','97230','503-381-1423',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-01 14:41:21','BOC Level I March 2022','Mohammed','Mohiuddin','mohdmohiuddin103@gmail.com','21-09-1981','Mr.','mep Construction ','alwakra ezdan-30 b15, f16 doha qatar',NULL,'Doha','Select...','40688','+97433491525',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-01 22:20:29','BOC Level I March 2022','Ryan','Folden','ryan.b.folden@doc.state.or.us','01/27/1979','Physical Plant Manager','Powder River Correctional Facility','3600 13th St.',NULL,'Baker City','Oregon','97814','15415193071',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-01 22:47:35','BOC Level I March 2022','David','Johnson','david.l.johnson@doc.oregon.gov','09-15-1960','FMS','Powder River Correctional Facility','3600 13th St',NULL,'Baker City','Oregon','97814','15415236680','15415239572',NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-02 16:55:15','BOC Level I March 2022','Mathew','Smith','mathew.smith@abm.com','12/13/1993','Mobile Engineer','ABM Industries ','385 Reuter Ln',NULL,'Forest Grove','Oregon','97116','5037166650',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-02 20:53:42','BOC Level I March 2022','Joshua','Thomas','Joshua.D.THOMAS@doc.oregon.gov','09/01/1976','FE2','Powder River Correctional Facility','3600 13th St.',NULL,'Baker City','Oregon','97814','971-645-8949',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-03 18:04:41','Please select a Training...','Kathleen','Fitts','kathleen.k.fitts@doc.oregon.gov','04/29','Sustainability Coordinator','Oregon Dept. of Corrections','3601 State St. NE',NULL,'Salem','Oregon','97301','971-345-7930',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-03 22:20:53','BOC Level I March 2022','Jennie','Samson','jennie.samson@odot.oregon.gov','03/08/1967','Building Manager','Oregon Department of Transportation','4040 Fairview Ind Dr SE MS6',NULL,'Salem','Oregon','97302','503-887-0650',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-08 17:58:21','Please select a Training...','Steven','Walborn','Steven.M.Walborn@doc.oregon.gov','07/15/1982','Construction Project Manager ','Oregon Department of Corrections','3601 State St.',NULL,'Salem','Oregon','97301','5034078014',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-08 17:59:52','BOC Level I March 2022','Steven','Walborn','Steven.M.Walborn@doc.oregon.gov','07/15/1982','Construction Project Manager ','Oregon Department of Corrections','3601 State St.',NULL,'Salem','Oregon','97301','5034078014',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-08 18:38:04','BOC Level I March 2022','Joseph','Whisenhunt','jwhisenh@lhs.org','12/6/1978','Engineer','Legacy Health','1225 NE 2nd Ave.',NULL,'Portland','Oregon','97232','503-519-5964',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-21 17:54:03','BOC Level I March 2022','William','Chidester','wdc4@pdx.edu','12/08/1977','BAS Manager','Portland State University','1600 SW 4th Ave',NULL,'Portland','Oregon','97201','626-257-4293',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-09 17:08:44','BOC Level I March 2022','Ron ','Swigert','rswigert@lhs.org','2/7/64','Facilities Manager ','Legacy Salmon Creek Hospital ','2211 ne 139th st',NULL,'Vancouver ','Washington','98686','360 487 3606',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-09 21:41:19','BOC Level I March 2022','Armando','Ferrer','aferrer@lhs.org','11/08/1985','Facilities','Legacy Health','737 SW 17th Way',NULL,'Troutdale','Oregon','97060','503-998-8476',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-10 21:04:41','BOC Level I March 2022','Egan','Bull','egan.bull@odot.oregon.gov','08/22/1990','Energy Analyst','ODOT','885 Airport Rd SE',NULL,'Salem','Oregon','97304','5033021020',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-10 22:13:52','BOC Level I March 2022','Siena','Clark','sieclark@pdx.edu','07/10/1999','Plumbing Technician','Portland State University','630 SW Mill Street',NULL,'Portland','Oregon','97201','6507666251',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-17 23:59:44','BOC Level I March 2022','Clayton','Terpening','cterpening@roguecc.edu','12/26/1973','Maintenance Technician','Rogue Community College','3345 Redwood Hwy',NULL,'Grants Pass','Oregon','97527','541-890-5345',NULL,NULL,NULL,'Check');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-22 15:48:17','BOC Level I March 2022','Josh','Zinda','jzinda@samhealth.org','10/29/1979','Maintenance engineer 2','Samaritan Albany general hospi','1046 6TH AVE SW',NULL,'Albany','Oregon','97321','5418124966',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-23 22:33:32','BOC Level I March 2022','Daniel','Leitner','daniel.g.leitner@doc.oregon.gov','01/16/1981',NULL,'Department of corrections','3601 State St ',NULL,'Salem','Oregon','97301','5039459093',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-24 15:40:16','BOC Level I March 2022','Slavic','Kaftanchikov','Slavic.G.KAFTANCHIKOV@doc.oregon.gov','11/14/1957','Energy Technician 3 ','DOC','3601 STATE ST',NULL,'Salem','Select...','97301','971 701 0341','',NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

INSERT INTO
	"Registrations"
		("DateSubmitted","TrainingProgram","FirstName","LastName","Email","DOB","Title","Organization","Address1","Address2","City","State","ZipCode","Phone","Fax","Referral","SpecialInstructions","PaymentType") VALUES	  ('2022-02-24 20:56:37','BOC Level I March 2022','Erik','Hassebroek','ErikHassebroek@oregoncc.org','04/18/1977',NULL,'Oregon Convention Center','777 NE MLK Blvd',NULL,'Portland','Oregon','97232','5037317832',NULL,NULL,NULL,'Credit Card (phone or mail only) VISA MC only');

COMMIT;



USE keegan_blakely_portfolio;

INSERT INTO keegan_blakely_portfolio.address
(address_lines, 							city, 				state, 	zip, 		country)
VALUES
('Bank of England, Threadneedle Street', 	'London', 			'UK', 	'EC2R 8AH', 'UK'), 		-- Mark Carney duplicate 1
('Rideau Hall', 							'Ottawa', 			'ON', 	'K1M 0H8', 	'CA'),
('123 Maple St', 							'Vancouver', 		'BC', 	'v7c 2a6', 	'CA'), 		-- Henrik Sedin - false duplicate
('221B Baker Street', 						'London', 			'UK', 	'N6A 1A4', 	'CA'),
('90 Bedford Street', 						'New York', 		'NY', 	'10014', 	'US'),
('742 Evergreen Terrace', 					'Springfield', 		'IL', 	'62704', 	'US'),
('4 Privet Drive', 							'Little Whinging', 	'SU', 	'cr3 0aa', 	'UK'),
('10 Downing Street', 						'London', 			'UK', 	'SW1A 2AA', 'UK'),
('1600 Pennsylvania Avenue', 				'Washington', 		'DC', 	'20500', 	'US'),
('100 Front St', 							'Vancouver', 		'BC', 	'V6B 1A4', 	'CA'), 		-- Daniel Sedin - false duplicate 2
('11 Wallaby Way', 							'Sydney', 			'NW', 	'2000', 	'AU'),
('456 Oak Ave', 							'toronto', 			'ON', 	'm5h 2n2', 	'CA'),
('789 Pine Road', 							'Montreal', 		'QC', 	'H2X3Y7', 	'CA'),
('1 Infinite Loop', 						'Cupertino', 		'CA', 	'95014', 	'US'),
('24 Sussex Drive', 						'Ottawa', 			'ON', 	'K1M1M4', 	'CA'), 		-- 15 Mark Carney duplicate 2
('123 Elm St', 								'calgary', 			'AB', 	'T2P 3N4', 	'CA'),	
('404 Spruce Way', 							'Halifax', 			'NS', 	'B3H2X5', 	'CA'),
('505 Fir Court', 							'Victoria', 		'BC', 	'V8W 1P6', 	'CA'),
('Hogwarts Castle', 						'Highlands', 		'SC', 	'IV9-1TQ', 	'UK'),
('44 Port Coquitlam Ave', 					'Port Coquitlam', 	'BC', 	'V3B 5J2', 	'CA'),
('666 Beech Rd', 							'Yellowknife', 		'NT', 	'X1A2P8', 	'CA'),
('1007 Mountain Drive', 					'Gotham', 			'NJ', 	'07001', 	'US'), 		-- Bruce Wayne duplicate 1
('Batcave, Wayne Manor Grounds', 			'GOTHAM', 			'NJ', 	'07001', 	'US'), 		-- Batman duplicate 2
('344 Clinton St', 							'Metropolis', 		'NY', 	'10001', 	'US'),      -- Kal El duplicate 1
('355 Broadway Ave', 						'Metropolis', 		'NY', 	'10001', 	'US'),     	-- Clark Kent duplicate 2
('1428 Elm Street', 						'Springwood', 		'OH', 	'45402', 	'US'),
('Burquitlam Station', 						'Coquitlam', 		'BC', 	'V3J 4K2', 	'CA'),		-- Keegan Blakely
('28 King Street', 							'Toronto', 			'ON', 	'M5H 3A1', 	'CA');  	-- Jane Doe duplicate


INSERT INTO keegan_blakely_portfolio.student
(last_name, 	first_name, 	preferred_name, 	birth_date, 	gender_identity, 	address_id, 	iternational_status)
VALUES
('Carney',		'Mark',			NULL,				'1965-03-16',	'M',				131,			'IN'),        	-- Carnery duplicate, Bank of England - duplicate 1
('Carney',		'Mark',			NULL,				'1965-03-16',	'M',				145,			'DO'),       	-- Carney duplicate, PM - duplicate 2
('Sedin',		'Henrik',		NULL,				'1980-09-26',	'M',				133,			'DO'),			-- Henrik - false duplicate
('Sedin',		'Daniel',		NULL,				'1980-09-26',	'M',				140,			'DO'),			-- Daniel - false duplicate
('Holmes',		'Sherlock',		NULL,				'1854-01-06',	'M',				134,			'IN'),
('Bing',		'Monica',		NULL,				'1969-04-22',	'F',				135,			'IN'),
('Bing',		'Chandler',		NULL,				'1968-04-08',	'M',				135,			'IN'),
('Simpson',		'Homer',		NULL,				'1956-05-12',	'M',				136,			'IN'),
('Simpson',		'Marge',		NULL,				'1956-03-19',	'F',				136,			'IN'),
('Simpson',		'Bart',			'El Barto',			'1979-04-01',	'M',				136,			'IN'),
('Simpson',		'Lisa',			NULL,				'1981-05-09',	'F',				136,			'IN'),
('Simpson',		'Maggie',		NULL,				'1988-01-12',	'F',				136,			'IN'),
('Potter',		'Harry',		NULL,				'1980-07-31',	'M',				137,			'IN'),
('Granger',		'Hermione',		NULL,				'1979-09-19',	'F',				149,			'IN'),
('Starmer',		'Keir',			NULL,				'1962-09-02',	'M',				138,			'IN'),
('Biden',		'Joe',			NULL,				'1942-11-20',	'M',				139,			'IN'),
('Jobs',		'Steven',		'Steve',			'1955-02-24',	'M',				144,			'IN'),
('Wayne',		'Bruce',		NULL,				'1972-02-19',	'M',				152,			'IN'),			-- Bruce Wayne, Wayne Mannor - duplicate 1
('Wayne',		'Bruce',		'Batman',			'1972-02-19',	'M',				153,			'IN'),			-- Batman, Batcave - duplicate 2
('El',			'Kal',			'Clark',			'1975-06-18',	'M',				154,			'IN'),			-- Superman - duplicate 1
('Kent',		'Clark',		NULL,				'1975-06-18',	'M',				154,			'IN'),			-- Clark Kent, same address - duplicate 2
('Krueger',		'Freddy',		NULL,				'1942-01-01',	'M',				156,			'IN'),
('Fox',			'Terry',		NULL,				'1958-07-28',	'M',				150,			'DO'),
('Blakely',		'Keegan',		NULL,				'1900-01-01',	'M',				157,			'DO'),			-- Keegan Blakely real - duplicate 1
('Blakely',		'Keegan K.',	NULL,				'1900-01-01',	'M',				157,			'DO'),			-- Keegan Kotaro Blakely - duplicate 2
('Doe',			'Jane',			NULL,				'1992-02-02',	'F',				158,			'DO'),      	-- Jane Doe duplicate 1
('Smith',		'Janice',		'jane',				'1992-02-02',	'F',				158,			'DO'); 	 		-- Janice Smith duplicate 2

INSERT INTO keegan_blakely_portfolio.email 
(student_id, position, email_address, primary_flag)
VALUES
-- Mark Carney duplicates
(24, 1, 'Mark.Carney@gmail.com', 			0),         -- shared gmail, capitalized
(24, 2, 'mark.carney@bankofengland.co.uk', 	1),
(25, 1, 'mark.carney@gmail.com', 			0),         -- shared gmail, lowercase
(25, 2, 'mark.carney@canada.gc.ca', 		1),      	-- PM record
-- Sedins
(33, 1, 'HANK.SEDIN@canucks.ca', 			1),
(22, 1, 'danny22@nhl.com', 					1),
-- Sherlock Holmes
(28, 1, 'sherlock@bakerstreet.uk', 			1),
-- Friends: Monica & Chandler
(29, 1, 'monica.geller@friends.tv', 		0),
(29, 2, 'monica.bing@friends.tv', 			1),
(30, 1, 'chandler.bing@friends.tv', 		1),
-- Simpsons
(31, 1, 'homer.simpson@springfield.com', 	1),
(32, 1, 'marge.simpson@springfield.com', 	1),
(34, 1, 'lisa.simpson@springfield.com', 	1),
(35, 1, 'maggie.simpson@springfield.com', 	1),
(47, 1, 'bart.simpson@springfield.com', 	1),
-- Potter/Hermione
(36, 1, 'harry.potter@hogwarts.uk', 		1),
(37, 1, 'hermione.granger@Hogwarts.UK', 	1),
-- Starmer
(38, 1, 'keir.starmer@ukparliament.uk', 	1),
-- Biden
(39, 1, 'joe.biden@whitehouse.gov', 		1),
-- Steve Jobs
(40, 1, 'steve.jobs@apple.com', 			1),
-- Bruce Wayne / Batman
(41, 1, 'bruce.wayne@wayneenterprises.com', 1),
(42, 1, 'Bruce.Wayne@WayneEnterprises.com', 0), -- shared with Bruce Wayne
-- Superman / Clark Kent
(43, 1, 'kal.el@gmail.com', 				1),
(44, 1, 'clark.kent@dailyplanet.com', 		1),
-- Freddy Krueger
(45, 1, 'freddy@elmstreet.com', 			1),
-- Terry Fox
(46, 1, 'terry.fox@sfu.bc.ca', 				1),
-- Keegan Blakely
(48, 1, 'blakelykeegan@gmail.com', 			1),
(48, 2, 'kblakely@sfu.ca', 					0),
(49, 1, 'blakelykeegan@gmail.com', 			1),
(49, 2, 'kblakely@jibc.ca', 				0),
-- Jane Doe
(50, 1, 'JaniceSmith@gmail.com', 			1),
(51, 1, 'janedoe@gov.bc.ca', 				1);


INSERT INTO keegan_blakely_portfolio.phone
(student_id, position, phone_number, primary_flag,extension)
VALUES
-- Mark Carney duplicates
(24, 1, '44-20-7601-5678', 		0, NULL),		-- Bank of England
(24, 2, '(44) 20 7601 1234', 	1, '101'),
(25, 1, '1-613-555-0199', 		0, NULL),
(25, 2, '(44) 20 7601 1234',	1, '102'),
-- Sedin twins
(22, 1, '6045553333', 			1, NULL),
(33, 1, '604-555-2222', 		1, '12'),
-- Sherlock Holmes
(28, 1, '+44 20 7946 0958',		1, NULL),
-- Monica & Chandler
(29, 1, '212-555-0198', 		1, NULL),
(29, 2, '212 555 0112', 		0, NULL),
(30, 1, '212-555-0199', 		1, NULL),
-- Simpsons family
(31, 1, '217-555-1234', 		1, NULL),
(32, 1, '217 555 5678', 		1, NULL),
(47, 1, '(217)555-9999', 		1, NULL),
(34, 1, '2175550001', 			1, NULL),
(35, 1, '2175555678', 			1, NULL),
-- Harry Potter & Hermione			
(36, 1, '+44 1234 567890', 		1, NULL),
(37, 1, '+44 1234 567891', 		1, NULL),
-- Starmer & Biden				
(38, 1, '+44 20 7219 1234', 	1, NULL),
(39, 1, '202-555-0175', 		1, NULL),
-- Steve Jobs				
(40, 1, '408-555-1234', 		1, NULL),
-- Bruce Wayne / Batman				
(41, 1, '(212) 555-9000', 		1, NULL),			-- Bruce Wayne
(42, 1, '(212) 555-9000', 		1, '001'),			-- Batman, shares number
(42, 2, '2125559011', 			0, NULL),
-- Kal El / Clark Kent				
(43, 1, '212-555-7788', 		1, NULL),			-- Kal El
(44, 1, '212-555-7788', 		1, '200'),			-- Clark Kent, same number
(44, 2, '212-555-3344', 		0, NULL),
-- Freddy Krueger
(45, 1, '5556667777', 			1, NULL),
-- Terry Fox				
(46, 1, '604-555-4321', 		1, NULL),
-- Keegan Blakely				
(48, 1, '778-988-1031', 		1, NULL),
(49, 2, '(778) 988 1031', 		1, NULL),
(49, 1, '604.528.5692', 		0, NULL),
-- Jane Doe				
(50, 1, '1-604-604-6060', 		1, 558),
(51, 1, '1604604 6060', 		1, 556);


INSERT INTO keegan_blakely_portfolio.alternate_id
(student_id, alt_id_type, alt_id)
VALUES
-- Jane Doe
(50, 'PEN', 737777645),
(51, 'PEN', 737777645),
-- Mark Carney duplicates (Canadian → SIN)
(24, 'SIN', 612345678),
(25, 'SIN', 612345678),
-- Sedin twins (Canadian → SIN)
(22, 'SIN', 523456789),
(33, 'SIN', 534567890),
-- Sherlock Holmes
(28, 'PEN', 100000001),
-- Friends
(29, 'PEN', 100000002),
(30, 'PEN', 100000003),
-- Simpsons
(31, 'PEN', 100000004),
(32, 'PEN', 100000005),
(47, 'PEN', 100000006),
(34, 'PEN', 100000007),
(35, 'PEN', 100000008),
-- Hogwarts
(36, 'PEN', 100000009),
(37, 'PEN', 100000010),
-- Politicians
(38, 'PEN', 100000011),
(39, 'PEN', 100000012),
-- Tech
(40, 'PEN', 100000013),
-- Bruce Wayne / Batman duplicates
(41, 'SSN', 987654321),
(42, 'SSN', 987654321),
-- Kal-El / Clark Kent duplicates
(43, 'SSN', 111223333),
(44, 'SSN', 111223333),
-- Freddy Krueger
(45, 'PEN', 100000014),
-- Terry Fox (Canadian → SIN)
(46, 'SIN', 734567891),
-- Keegan Blakely
(48, 'ADM', 0001),
(49, 'ADM', 0001);


INSERT INTO keegan_blakely_portfolio.program 
(program_code, program_title, program_level)
VALUES
('DATA', 'BBA - Management Information Systems', 	'Undergraduate'),
('CINV', 'Criminology and Investigation', 			'Undergraduate'),
('JOUR', 'Journalism', 								'Undergraduate'),
('POLI', 'Political Science', 						'Undergraduate'),
('CSCI', 'Computer Science', 						'Undergraduate'),
('SPOR', 'Sport Science', 							'Undergraduate'),
('WCWZ', 'Witchcraft and Wizardry', 				'Undergraduate'),
('CULI', 'Culinary Arts', 							'Undergraduate'),
('BUSN', 'Project Management', 						'Microcredential');


INSERT INTO keegan_blakely_portfolio.course
(course_code, course_name, program_code)
VALUES
-- Criminology and Investigation (CINV)
('CRIM101','Introduction to Criminology',					'CINV'),
('CRIM201','Forensic Investigation Techniques',				'CINV'),
('CRIM301','Criminal Law & Procedure',						'CINV'),
-- Journalism (JOUR)
('JOUR101','News Writing Fundamentals',						'JOUR'),
('JOUR201','Investigative Journalism',						'JOUR'),
('JOUR301','Media Ethics and Law',							'JOUR'),
-- Political Science (POLI)
('POLI101','Introduction to Political Science',				'POLI'),
('POLI201','Comparative Politics',							'POLI'),
('POLI301','Public Policy Analysis',						'POLI'),
-- Computer Science (CSCI)
('CSCI101','Intro to Programming',							'CSCI'),
('CSCI201','Data Structures & Algorithms',					'CSCI'),
('CSCI301','Database Systems',								'CSCI'),
-- DATA (BBA - MIS)
('DATA101', 'Database Design & SQL Fundamentals', 			'DATA'),
('DATA102', 'Data Analytics with R & Python', 				'DATA'),
('DATA103', 'Power BI & Data Visualization', 				'DATA'),
('DATA104', 'ERP Systems & Data Pipelines', 				'DATA'),
('DATA105', 'Data Quality & Governance', 					'DATA'),
-- BUSN (Project Management microcredential)
('BUSN102', 'Agile & Scrum Fundamentals', 					'BUSN'),
('BUSN104', 'Stakeholder Communication & Leadership', 		'BUSN'),
('BUSN106', 'Traditional Project Management & Waterfall', 	'BUSN'),
-- Sport Science (SPOR)
('SPRT101','Exercise Physiology',							'SPOR'),
('SPRT201','Sports Performance Analysis',					'SPOR'),
('SPRT301','Biomechanics of Sport',							'SPOR'),
-- Witchcraft and Wizardry (WCWZ)
('MAGC101','Potions and Elixirs',							'WCWZ'),
('MAGC201','Transfiguration Basics',						'WCWZ'),
('MAGC301','Defense Against Dark Arts',						'WCWZ'),
-- Culinary Arts (CULI)
('CULA101','Introduction to Culinary Techniques',			'CULI'),
('CULA201','Baking and Pastry Fundamentals',				'CULI'),
('CULA301','World Cuisine',									'CULI');


INSERT INTO keegan_blakely_portfolio.section 
(course_id, section_number, start_date, end_date, capacity)
VALUES
-- CRIM
(30,'001','2020-09-01','2020-12-15',30),
(31,'001','2021-01-10','2021-04-15',30),
(32,'001','2021-09-01','2021-12-15',30),
-- JOUR
(33,'001','2020-09-01','2020-12-15',30),
(34,'001','2021-01-10','2021-04-15',30),
(35,'001','2021-09-01','2021-12-15',30),
-- POLI
(36,'001','2020-09-01','2020-12-15',30),
(37,'001','2021-01-10','2021-04-15',30),
(38,'001','2021-09-01','2021-12-15',30),
-- CSCI
(39,'001','2020-09-01','2020-12-15',30),
(40,'001','2021-01-10','2021-04-15',30),
(41,'001','2021-09-01','2021-12-15',30),
-- DATA (BBA MIS timeline 2019–2023)
(42,'001','2019-09-05','2019-12-15',30),
(43,'001','2020-01-10','2020-04-20',30),
(44,'001','2021-09-05','2021-12-15',30),
(45,'001','2022-01-10','2022-04-20',30),
(46,'001','2023-09-05','2023-12-15',30),
(42,'002','1990-01-10','1990-04-20',30),
(43,'002','1990-09-05','1990-12-15',30),
(44,'002','1990-01-10','1990-04-20',30),
(45,'002','1990-09-05','1990-12-15',30),
(46,'002','1990-09-05','1990-12-15',30),
-- BUSN (Project Management microcredential early 2025)
(47,'001','2025-01-10','2025-03-15',30),
(48,'001','2025-01-10','2025-03-15',30),
(49,'001','2025-01-10','2025-03-15',30),
-- Sport Science
(50,'001','2021-09-01','2021-12-15',30),
(51,'001','2022-01-10','2022-04-15',30),
(52,'001','2022-09-01','2022-12-15',30),
-- Witchcraft and Wizardry
(53,'001','2020-09-01','2020-12-15',30),
(54,'001','2021-01-10','2021-04-15',30),
(55,'001','2021-09-01','2021-12-15',30),
-- Culinary Arts
(56,'001','2020-09-01','2020-12-15',30),
(57,'001','2021-01-10','2021-04-15',30),
(58,'001','2021-09-01','2021-12-15',30);

INSERT INTO keegan_blakely_portfolio.student_enrolment 
(section_id, enrolment_date, student_id)
VALUES
-- Jane Doe
(95, '2021-06-20', 51),
-- Sedin twins – sport science
(87,'2021-09-01',22),
(88,'2022-01-10',22),
(89,'2022-09-01',22),
(87,'2021-09-01',33),
(88,'2022-01-10',33),
(89,'2022-09-01',33),
-- Mark Carney – political science (duplicate records)
(68,'2020-09-01',25),
-- Sherlock Holmes – criminology - graduated
(62,'2020-09-01',28),
(63,'2021-01-10',28),
(64,'2021-09-01',28),
-- Monica – culinary - graduated
(93,'2020-09-01',29),
(94,'2021-01-10',29),
(93,'2020-09-01',29),
-- Lisa – journalism & politics
(65,'2020-09-01',34),
(66,'2021-01-10',34),
(67,'2021-09-01',34),
(68,'2020-09-01',34),
(69,'2021-01-10',34),
(70,'2021-09-01',34),
-- Harry Potter & Hermione – wizardry
(90,'2020-09-01',36),
(91,'2021-01-10',36),
(92,'2021-09-01',36),
(90,'2020-09-01',37),
(91,'2021-01-10',37),
(92,'2021-09-01',37),
-- Politicians
(68,'2020-09-01',38),
(69,'2021-01-10',38),
(70,'2021-09-01',38),
(68,'2020-09-01',39),
(69,'2021-01-10',39),
(70,'2021-09-01',39),
-- Steve Jobs – computer science (drops out)
(71,'2020-09-01',40),
-- Batman – criminology
(62,'2020-09-01',42),
-- Clark Kent – journalism
(65,'2020-09-01',43),
(66,'2021-01-10',44),
-- Terry Fox – sport science
(87,'2021-09-01',46),
(88,'2022-01-10',46),
-- Keegan – DATA degree
(74,'2019-09-05',48),
(75,'2020-01-10',48),
(76,'2021-09-05',48),
(77,'2022-01-10',48),
(78,'2023-09-05',48),
-- Bruce Wayne – Business
(84,'2025-01-10',41),
(85,'2025-01-10',41),
(86,'2025-01-10',41),
-- Carney duplicate 2 – Business/BoE
(84,'2025-01-10',24),
(85,'2025-01-10',24),
(86,'2025-01-10',24),
-- Keegan – Project Management microcredential
(84,'2025-01-10',48),
(85,'2025-01-10',48),
(86,'2025-01-10',48);


INSERT INTO keegan_blakely_portfolio.student_enrolment_status 
(student_enrolment_id, position, status, status_date)
VALUES
-- Jane Doe
(98, 1, 'enrolled', '2021-06-20'),
(98, 2, 'passed', 	'2021-12-15'),
-- Sedin twins – sport science
(47, 1, 'enrolled', '2021-09-01'),
(47, 2, 'passed', 	'2021-12-15'),
(48, 1, 'enrolled', '2022-01-10'),
(48, 2, 'passed', 	'2022-04-15'),
(49, 1, 'enrolled', '2022-09-01'),
(49, 2, 'passed', 	'2022-12-15'),
(50, 1, 'enrolled', '2021-09-01'),
(50, 2, 'passed', 	'2021-12-15'),
(51, 1, 'enrolled', '2022-01-10'),
(51, 2, 'passed', 	'2022-04-15'),
(52, 1, 'enrolled', '2022-09-01'),
(52, 2, 'passed', 	'2022-12-15'),
-- Mark Carney – political science
(53, 1, 'enrolled', '2020-09-01'),
(53, 2, 'passed', 	'2020-12-15'),
-- Sherlock Holmes – criminology
(54, 1, 'enrolled', '2020-09-01'),
(54, 2, 'passed', 	'2020-12-15'),
(55, 1, 'enrolled', '2021-01-10'),
(55, 2, 'passed', 	'2021-04-15'),
(56, 1, 'enrolled', '2021-09-01'),
(56, 2, 'passed', 	'2021-12-15'),
-- Monica – culinary
(57, 1, 'enrolled', '2020-09-01'),
(57, 2, 'passed', 	'2020-12-15'),
(58, 1, 'enrolled', '2021-01-10'),
(58, 2, 'passed', 	'2021-04-15'),
(59, 1, 'enrolled', '2020-09-01'),
(59, 2, 'passed', 	'2020-12-15'),
-- Lisa – journalism & politics
(60, 1, 'enrolled', '2020-09-01'),
(60, 2, 'passed', 	'2020-12-15'),
(61, 1, 'enrolled', '2021-01-10'),
(61, 2, 'passed', 	'2021-04-15'),
(62, 1, 'enrolled', '2021-09-01'),
(62, 2, 'passed', 	'2021-12-15'),
(63, 1, 'enrolled', '2020-09-01'),
(63, 2, 'passed', 	'2020-12-15'),
(64, 1, 'enrolled', '2021-01-10'),
(64, 2, 'passed', 	'2021-04-15'),
(65, 1, 'enrolled', '2021-09-01'),
(65, 2, 'passed', 	'2021-12-15'),
-- Harry Potter & Hermione – wizardry
(66, 1, 'enrolled', '2020-09-01'),
(66, 2, 'passed', 	'2020-12-15'),
(67, 1, 'enrolled', '2021-01-10'),
(67, 2, 'passed', 	'2021-04-15'),
(68, 1, 'enrolled', '2021-09-01'),
(68, 2, 'failed', 	'2021-12-15'),  -- Harry fails section 92
(69, 1, 'enrolled', '2020-09-01'),
(69, 2, 'passed', 	'2020-12-15'),
(70, 1, 'enrolled', '2021-01-10'),
(70, 2, 'passed', 	'2021-04-15'),
(71, 1, 'enrolled', '2021-09-01'),
(71, 2, 'passed', 	'2021-12-15'),
-- Politicians
(72, 1, 'enrolled', '2020-09-01'),
(72, 2, 'passed', 	'2020-12-15'),
(73, 1, 'enrolled', '2021-01-10'),
(73, 2, 'passed', 	'2021-04-15'),
(74, 1, 'enrolled', '2021-09-01'),
(74, 2, 'passed', 	'2021-12-15'),
(75, 1, 'enrolled', '2020-09-01'),
(75, 2, 'passed', 	'2020-12-15'),
(76, 1, 'enrolled', '2021-01-10'),
(76, 2, 'passed', 	'2021-04-15'),
(77, 1, 'enrolled', '2021-09-01'),
(77, 2, 'passed', 	'2021-12-15'),
-- Steve Jobs – computer science, dropped mid-section
(78, 1, 'enrolled', '2020-09-01'),
(78, 2, 'dropped', 	'2020-10-15'),
-- Batman – criminology
(79, 1, 'enrolled', '2020-09-01'),
(79, 2, 'passed', 	'2020-12-15'),
-- Clark Kent – journalism
(80, 1, 'enrolled', '2020-09-01'),
(80, 2, 'passed', 	'2020-12-15'),
(81, 1, 'enrolled', '2021-01-10'),
(81, 2, 'passed', 	'2021-04-15'),
-- Terry Fox – sport science
(82, 1, 'enrolled', '2021-09-01'),
(82, 2, 'passed', 	'2021-12-15'),
(83, 1, 'enrolled', '2022-01-10'),
(83, 2, 'passed', 	'2022-04-15'),
-- Keegan – MIS degree
(84, 1, 'enrolled', '2019-09-05'),
(84, 2, 'passed', 	'2019-12-15'),
(85, 1, 'enrolled', '2020-01-10'),
(85, 2, 'passed', 	'2020-04-20'),
(86, 1, 'enrolled', '2021-09-05'),
(86, 2, 'passed', 	'2021-12-15'),
(87, 1, 'enrolled', '2022-01-10'),
(87, 2, 'passed', 	'2022-04-20'),
(88, 1, 'enrolled', '2023-09-05'),
(88, 2, 'passed', 	'2023-12-15'),
-- Bruce Wayne – Business
(89, 1, 'enrolled', '2025-01-10'),
(89, 2, 'passed', 	'2025-03-15'),
(90, 1, 'enrolled', '2025-01-10'),
(90, 2, 'passed', 	'2025-03-15'),
(91, 1, 'enrolled', '2025-01-10'),
(91, 2, 'passed', 	'2025-03-15'),
-- Carney – BoE duplicates
(92, 1, 'enrolled', '2025-01-10'),
(92, 2, 'passed', 	'2025-03-15'),
(93, 1, 'enrolled', '2025-01-10'),
(93, 2, 'passed', 	'2025-03-15'),
(94, 1, 'enrolled', '2025-01-10'),
(94, 2, 'passed', 	'2025-03-15'),
-- Keegan – Project Management microcredential
(95, 1, 'enrolled', '2025-01-10'),
(95, 2, 'passed', 	'2025-03-15'),
(96, 1, 'enrolled', '2025-01-10'),
(96, 2, 'passed', 	'2025-03-15'),
(97, 1, 'enrolled', '2025-01-10'),
(97, 2, 'passed', 	'2025-03-15');


INSERT INTO keegan_blakely_portfolio.student_program 
(student_id, program_code, position, status, status_date)
VALUES
-- Sedin twins – Sport Science
(22,'SPOR',1,'applied',				'2021-06-01'),
(22,'SPOR',2,'in_progress',			'2021-09-01'),
(22,'SPOR',3,'graduated',			'2022-12-15'),
(33,'SPOR',1,'applied',				'2021-06-01'),
(33,'SPOR',2,'in_progress',			'2021-09-01'),
(33,'SPOR',3,'graduated',			'2022-12-15'),
-- Mark Carney (new record) – Political Science
(25,'POLI',1,'applied',				'2020-06-01'),
(25,'POLI',2,'in_progress',			'2020-09-01'),
-- Mark Carney duplicate – BUSN microcredential
(24,'BUSN',1,'applied',				'2024-10-01'),
(24,'BUSN',2,'in_progress',			'2025-01-10'),
(24,'BUSN',3,'completed',			'2025-03-15'),
-- Sherlock Holmes – Criminology
(28,'CINV',1,'applied',				'2020-06-01'),
(28,'CINV',2,'in_progress',			'2020-09-01'),
(28,'CINV',3,'graduated',			'2021-12-15'),
-- Monica – Culinary Arts
(29,'CULI',1,'applied',				'2020-06-01'),
(29,'CULI',2,'in_progress',			'2020-09-01'),
(29,'CULI',3,'graduated',			'2021-04-15'),
-- Lisa – Journalism
(34,'JOUR',1,'applied',				'2020-06-01'),
(34,'JOUR',2,'in_progress',			'2020-09-01'),
(34,'JOUR',3,'graduated',			'2021-12-15'),
-- Lisa – Political Science
(34,'POLI',1,'applied',				'2020-06-01'),
(34,'POLI',2,'in_progress',			'2020-09-01'),
(34,'POLI',3,'graduated',			'2021-12-15'),
-- Harry Potter – Wizardry
(36,'WCWZ',1,'applied',				'2020-06-01'),
(36,'WCWZ',2,'in_progress',			'2020-09-01'),
-- Hermione – Wizardry
(37,'WCWZ',1,'applied',				'2020-06-01'),
(37,'WCWZ',2,'in_progress',			'2020-09-01'),
(37,'WCWZ',3,'graduated',			'2021-12-15'),
-- Politicians
(38,'POLI',1,'applied',				'2020-06-01'),
(38,'POLI',2,'in_progress',			'2020-09-01'),
(38,'POLI',3,'graduated',			'2021-12-15'),
(39,'POLI',1,'applied',				'2020-06-01'),
(39,'POLI',2,'in_progress',			'2020-09-01'),
(39,'POLI',3,'graduated',			'2021-12-15'),
-- Steve Jobs – Computer Science (dropout)
(40,'CSCI',1,'applied',				'2020-06-01'),
(40,'CSCI',2,'in_progress',			'2020-09-01'),
(40,'CSCI',3,'withdrawn',			'2020-10-15'),
-- Batman – Criminology	
(42,'CINV',1,'applied',				'2020-06-01'),
(42,'CINV',2,'in_progress',			'2020-09-01'),
-- Clark Kent – Journalism
(43,'JOUR',1,'applied',				'2020-06-01'),
(43,'JOUR',2,'in_progress',			'2020-09-01'),
(43,'JOUR',3,'graduated',			'2021-04-15'),
-- Terry Fox – Sport Science
(46,'SPOR',1,'applied',				'2021-06-01'),
(46,'SPOR',2,'in_progress',			'2021-09-01'),
(46,'SPOR',3,'withdrawn',			'2022-01-01'),
(46,'SPOR',4,'honorary_graduated',	'2022-06-01'),
-- Bruce Wayne – BUSN microcredential
(41,'BUSN',1,'applied',				'2024-10-01'),
(41,'BUSN',2,'in_progress',			'2025-01-10'),
(41,'BUSN',3,'completed',			'2025-03-15'),
-- Keegan – DATA degree
(48,'DATA',1,'applied',				'2019-05-01'),
(48,'DATA',2,'in_progress',			'2019-09-05'),
(48,'DATA',3,'graduated',			'2023-12-15'),
-- Keegan – BUSN microcredential
(48,'BUSN',1,'applied',				'2024-10-01'),
(48,'BUSN',2,'in_progress',			'2025-01-10'),
(48,'BUSN',3,'completed',			'2025-03-15'),
-- Bart Simpson – rejected
(30,'JOUR',1,'applied',				'2020-06-01'),
(30,'JOUR',2,'rejected',			'2020-07-01'),
-- Freddy Krueger – rejected
(45,'CINV',1,'applied',				'2021-06-01'),
(45,'CINV',2,'rejected',			'2021-07-01');
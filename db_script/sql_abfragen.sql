/*create database Person
go
use Person*/


/*create table Land (
	Id int primary key Identity(1,1) not null,
	Name nvarchar(20) not null
)

SELECT * FROM Land*/


-- FOREIGN KEY(AbtNr) REFERENCES abteilung(AbteilungsNr)*/

/*create Table Bundesland (
	Id int primary key Identity(1,1) not null,
	LandId int not null,
	FOREIGN KEY (LandId) REFERENCES Land(Id),
	Name nvarchar(20) not null
)*/



/*create Table Bezirke (
	Id int primary key Identity(1,1) not null,
	PLZ smallint not null,
	Name nvarchar(20) not null,
	BundeslandId int not null,
	foreign key (BundeslandId) references Bundesland(Id)
)*/



/*create Table Strasse (
	Id int primary key Identity(1,1) not null,
	BezirkId int not null,
	foreign key (BezirkId) references Bezirke(Id),
	Name nvarchar(50) not null
)*/


/*create Table Person (
	Id int primary key Identity(1,1) not null,
	Vorname nvarchar(50) not null,
	Nachname nvarchar(50) not null,
	Geburtsdatum date not null,
	Telefonnummer nvarchar(20),
)*/

/*create Table Adresse (
	Id int primary key Identity(1,1) not null,
	PersonId int not null,
	foreign key (PersonId) references Person(Id),
	StrasseId int not null,
	foreign key (StrasseId) references Strasse(Id),
	Hausnummer int not null,
	Stock tinyint not null,
	Tuer smallint not null,
)*/


/*INSERT INTO Land(Name) VALUES (
	'Österreich'
)
go
INSERT INTO Land(Name) VALUES (
	'Deutschland'
)*/


-- 1: Österreich, 2: Deutschland
/*INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Burgenland'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Kärnten'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Niederösterreich'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Oberösterreich'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Salzburg'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Steiermark'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Tirol'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Vorarlberg'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	1,
	'Wien'
)*/


-- Deutschland Bundesländer
/*INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Baden-Württemberg'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Bayern'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Berlin'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Brandenburg'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Bremen'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Hamburg'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Hessen'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Mecklenburg-Vorpommern'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Niedersachsen'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Nordrhein-Westfalen'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Rheinland-Pfalz'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Saarland'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Sachsen'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Sachsen-Anhalt'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Schleswig-Holstein'
)
INSERT INTO Bundesland(LandId, Name) VALUES (
	2,
	'Thüringen'
)*/


--EXEC sp_rename 'Bezirke', 'Bezirk';

/*ALTER TABLE Bezirk
DROP COLUMN PLZ*/


/*CREATE TABLE PLZ (
	Id int primary key Identity(1,1) not null,
	PLZ nvarchar(10) not null,
	BezirkId int not null,
	foreign key (BezirkId) references Bezirk(Id)
)*/


/*ALTER TABLE Bezirk
ALTER COLUMN Name nvarchar(50) not null*/

/*ALTER TABLE Bundesland
ALTER COLUMN Name nvarchar(50) not null*/



/*INSERT INTO Bezirk Values (
	'Innere Stadt',
	9
)*/
/*
INSERT INTO Bezirk Values (
	'Leopoldstadt',
	9
)
INSERT INTO Bezirk Values (
	'Landstraße',
	9
)
INSERT INTO Bezirk Values (
	'Wieden',
	9
)
INSERT INTO Bezirk Values (
	'Margareten',
	9
)
INSERT INTO Bezirk Values (
	'Mariahilf',
	9
)
INSERT INTO Bezirk Values (
	'Neubau',
	9
)
INSERT INTO Bezirk Values (
	'Josefstadt',
	9
)
INSERT INTO Bezirk Values (
	'Alsergrund',
	9
)
INSERT INTO Bezirk Values (
	'Favoriten',
	9
)
INSERT INTO Bezirk Values (
	'Simmering',
	9
)
INSERT INTO Bezirk Values (
	'Meidling',
	9
)
INSERT INTO Bezirk Values (
	'Hietzing',
	9
)
INSERT INTO Bezirk Values (
	'Penzing',
	9
)
INSERT INTO Bezirk Values (
	'Rudolfsheim-Fünfhaus',
	9
)
INSERT INTO Bezirk Values (
	'Ottakring',
	9
)
INSERT INTO Bezirk Values (
	'Hernals',
	9
)
INSERT INTO Bezirk Values (
	'Währing',
	9
)
INSERT INTO Bezirk Values (
	'Döbling',
	9
)
INSERT INTO Bezirk Values (
	'Brigittenau',
	9
)
INSERT INTO Bezirk Values (
	'Floridsdorf',
	9
)
INSERT INTO Bezirk Values (
	'Donaustadt',
	9
)
INSERT INTO Bezirk Values (
	'Liesing',
	9
)*/


/*INSERT INTO Bezirk Values (
	'Eisenstadt',
	2
)*/
/*INSERT INTO Bezirk Values (
	'Klagenfurt am Wörthersee',
	3
)*/
/*INSERT INTO Bezirk Values (
	'St. Pölten',
	4
)
INSERT INTO Bezirk Values (
	'Linz',
	5
)
INSERT INTO Bezirk Values (
	'Salzburg',
	6
)
INSERT INTO Bezirk Values (
	'Graz',
	7
)
INSERT INTO Bezirk Values (
	'Innsbruck',
	8
)
INSERT INTO Bezirk Values (
	'Bregenz',
	10
)
INSERT INTO Bezirk Values (
	'Neusiedl am See',
	2
)*/

/*INSERT INTO Bezirk Values (
	'Stuttgart',
	11
)
INSERT INTO Bezirk Values (
	'München',
	12
)
INSERT INTO Bezirk Values (
	'Berlin-Mitte',
	13
)
INSERT INTO Bezirk Values (
	'Potsdam',
	14
)
INSERT INTO Bezirk Values (
	'Bremen',
	15
)
INSERT INTO Bezirk Values (
	'Hamburg-Mitte',
	16
)
INSERT INTO Bezirk Values (
	'Frankfurt am Main',
	17
)
INSERT INTO Bezirk Values (
	'Rostock',
	28
)
INSERT INTO Bezirk Values (
	'Hannover',
	19
)
INSERT INTO Bezirk Values (
	'Düsseldorf',
	20
)
INSERT INTO Bezirk Values (
	'Mainz',
	21
)
INSERT INTO Bezirk Values (
	'Saarbrücken',
	22
)
INSERT INTO Bezirk Values (
	'Dresden',
	23
)
INSERT INTO Bezirk Values (
	'Magdeburg',
	24
)
INSERT INTO Bezirk Values (
	'Kiel',
	25
)
INSERT INTO Bezirk Values (
	'Erfurt',
	26
)*/


/*UPDATE Bundesland
SET Name = 'Wien'
WHERE Id = 9

Update Bundesland
SET Name = 'Vorarlberg'
WHERE Id = 10*/



/*INSERT INTO PLZ Values (
	'1010',
	1
)
INSERT INTO PLZ Values (
	'1020',
	2
)
INSERT INTO PLZ Values (
	'1030',
	3
)
INSERT INTO PLZ Values (
	'1040',
	4
)
INSERT INTO PLZ Values (
	'1050',
	5
)
INSERT INTO PLZ Values (
	'1060',
	6
)
INSERT INTO PLZ Values (
	'1070',
	7
)
INSERT INTO PLZ Values (
	'1080',
	8
)
INSERT INTO PLZ Values (
	'1090',
	9
)
INSERT INTO PLZ Values (
	'1100',
	10
)
INSERT INTO PLZ Values (
	'1110',
	11
)
INSERT INTO PLZ Values (
	'1120',
	12
)
INSERT INTO PLZ Values (
	'1130',
	13
)
INSERT INTO PLZ Values (
	'1140',
	14
)
INSERT INTO PLZ Values (
	'1150',
	15
)
INSERT INTO PLZ Values (
	'1160',
	16
)
INSERT INTO PLZ Values (
	'1170',
	17
)
INSERT INTO PLZ Values (
	'1180',
	18
)
INSERT INTO PLZ Values (
	'1190',
	19
)
INSERT INTO PLZ Values (
	'1200',
	20
)
INSERT INTO PLZ Values (
	'1210',
	21
)
INSERT INTO PLZ Values (
	'1220',
	22
)
INSERT INTO PLZ Values (
	'1230',
	23
)*/

-- Rostock
/*INSERT INTO PLZ Values (
	'18055',
	51
)
INSERT INTO PLZ Values (
	'70173',
	34
)
INSERT INTO PLZ Values (
	'80331',
	35
)
INSERT INTO PLZ Values (
	'10115',
	36
)
INSERT INTO PLZ Values (
	'14467',
	37
)
INSERT INTO PLZ Values (
	'28195',
	38
)
INSERT INTO PLZ Values (
	'20095',
	39
)
INSERT INTO PLZ Values (
	'60311',
	40
)
INSERT INTO PLZ Values (
	'30159',
	42
)
INSERT INTO PLZ Values (
	'40213',
	43
)
INSERT INTO PLZ Values (
	'55116',
	44
)
INSERT INTO PLZ Values (
	'66111',
	45
)
INSERT INTO PLZ Values (
	'01067',
	46
)
INSERT INTO PLZ Values (
	'39104',
	47
)
INSERT INTO PLZ Values (
	'24103',
	48
)
INSERT INTO PLZ Values (
	'99084',
	49
)*/



/*INSERT INTO Strasse Values (
	 1,
	'Sonnenblumengasse'
)
INSERT INTO Strasse Values (
	 2,
	'Kranichweg'
)
INSERT INTO Strasse Values (
	 3,
	'Kastanienallee'
)
INSERT INTO Strasse Values (
	 4,
	'Rosentalgasse'
)
INSERT INTO Strasse Values (
	 5,
	'Kirschblütenstraße'
)
INSERT INTO Strasse Values (
	 6,
	'Mondscheingasse'
)
INSERT INTO Strasse Values (
	 7,
	'Künstlerweg'
)
INSERT INTO Strasse Values (
	 8,
	'Finkengasse'
)
INSERT INTO Strasse Values (
	 9,
	'Universitätsgartenstraße'
)
INSERT INTO Strasse Values (
	 10,
	'Regenbogengasse'
)
INSERT INTO Strasse Values (
	 11,
	'Eulenweg'
)
INSERT INTO Strasse Values (
	 12,
	'Lavendelstraße'
)
INSERT INTO Strasse Values (
	 13,
	'Waldblickgasse'
)
INSERT INTO Strasse Values (
	 14,
	'Schmetterlingsweg'
)
INSERT INTO Strasse Values (
	 15,
	'Apfelbaumgasse'
)
INSERT INTO Strasse Values (
	 16,
	'Sternschnuppenstraße'
)
INSERT INTO Strasse Values (
	 17,
	'Quellenweg'
)
INSERT INTO Strasse Values (
	 18,
	'Rosenhügelgasse'
)
INSERT INTO Strasse Values (
	 19,
	'Falkenstraße'
)
INSERT INTO Strasse Values (
	 20,
	'Birkenhainweg'
)*/


/*INSERT INTO Person VALUES 
('Anna', 'Berger', '1995-03-14', '+43 000 000001'),
('Lukas', 'Gruber', '1990-07-22', '+43 000 000002'),
('Sophie', 'Wagner', '2001-11-09', '+43 000 000003'),
('David', 'Hofer', '1988-01-30', '+43 000 000004'),
('Julia', 'Leitner', '1998-05-17', '+43 000 000005'),
('Elias', 'Fuchs', '1993-09-03', '+43 000 000006'),
('Lena', 'Moser', '2000-12-11', '+43 000 000007'),
('Paul', 'Eder', '1985-06-26', '+43 000 000008'),
('Mia', 'Schmid', '1997-02-08', '+43 000 000009'),
('Felix', 'Bauer', '1992-10-19', '+43 000 000010'),
('Laura', 'Steiner', '2002-04-05', '+43 000 000011'),
('Jonas', 'Winkler', '1989-08-14', '+43 000 000012'),
('Emma', 'Pichler', '1996-01-27', '+43 000 000013'),
('Noah', 'Schwarz', '1994-12-02', '+43 000 000014'),
('Clara', 'Reiter', '2003-07-16', '+43 000 000015'),
('Leon', 'Hoffmann', '1991-02-18', '+43 000 000016'),
('Marie', 'Schneider', '1999-06-21', '+43 000 000017'),
('Ben', 'Fischer', '1987-09-12', '+43 000 000018'),
('Emilia', 'Weber', '2000-03-29', '+43 000 000019'),
('Tim', 'Meyer', '1996-11-07', '+43 000 000020')*/


/*INSERT INTO Adresse VALUES
(1, 1, 12, 2, 5),
(2, 2, 8, 0, 3),
(3, 3, 24, 1, 6),
(4, 4, 17, 3, 4),
(5, 5, 6, 4, 1),
(6, 6, 31, 2, 12),
(7, 7, 19, 0, 16),
(8, 8, 4, 1, 4),
(9, 9, 15, 11, 8),
(10, 10, 42, 4, 7),
(11, 11, 9, 3, 11),
(12, 12, 21, 0, 9),
(13, 13, 11, 0, 7),
(14, 14, 7, 6, 5),
(15, 15, 28, 3, 2),
(16, 16, 14, 2, 13),
(17, 17, 33, 0, 4),
(18, 18, 5, 1, 5),
(19, 19, 26, 16, 8),
(20, 20, 18, 9, 14)*/



/*INSERT INTO Strasse values
( 21, 'Ahornblütenweg'),
( 21, 'Silberquellstraße'),
( 21, 'Finkenbogen'),
( 22, 'Mondscheinpromenade'),
( 22, 'Seerosenallee'),
( 22, 'Morgenrotgasse'),
( 23, 'Kastanienhainstraße'),
( 23, 'Sonnenfalterweg'),
( 24, 'Rosenquarzstraße'),
( 24, 'Weinbergblickgasse'),
( 26, 'Lindenfederweg'),
( 26, 'Sternenwiesengasse'),
( 27, 'Kupferbogenstraße'),
( 27, 'Wolkenhainweg'),
( 28, 'Bergkristallgasse'),
( 28, 'Alpenveilchenstraße'),
( 29, 'Goldregenallee'),
( 29, 'Eichenfunkenweg'),
( 30, 'Gletscherrosenstraße'),
( 30, 'Adlerfarnweg'),
( 31, 'Bodenseeglanzgasse'),
( 31, 'Uferlichtstraße'),
( 32, 'Schilfperlenweg'),
( 32, 'Windspielgasse'),
( 33, 'Wörtherfunkelstraße'),
( 33, 'Moosveilchenweg'),
( 34, 'Bernsteinfalkenstraße'),
( 35, 'Isarblütenweg'),
( 36, 'Mauerseglergasse'),
( 51, 'Ostseefederstraße')*/


/*INSERT INTO Person VALUES 
('Maximilian', 'Berger', '1995-03-22', '+43 000 000021'),
('Paul', 'Bauer', '1990-07-21', '+43 000 000022'),
('Hannah', 'Wagner', '2001-11-19', '+43 000 000023'),
('Lea', 'Hofer', '1988-01-29', '+43 000 000024'),
('Julia', 'Leitner', '1998-05-10', '+43 000 000025'),
('Simon', 'Richter', '1993-09-04', '+43 000 000026'),
('Sarah', 'Moser', '2000-12-19', '+43 000 000027'),
('Anton', 'Eder', '1985-06-24', '+43 000 000028'),
('Mia', 'Schmid', '1997-02-01', '+43 000 000029'),
('Tobias', 'Bauer', '1992-10-17', '+43 000 000030'),
('Daniel', 'Steiner', '2002-04-03', '+43 000 000031'),
('Sebastian', 'Winkler', '1989-08-18', '+43 000 000032'),
('Lisa', 'Pichler', '2000-02-26', '+43 000 000033'),
('Noah', 'Schwarz', '1988-11-19', '+43 000 000034'),
('Julian', 'Reiter', '1994-06-07', '+43 000 000035'),
('Moritz', 'Hoffmann', '2002-12-29', '+43 000 000036'),
('Valerie', 'Schneider', '1999-01-31', '+43 000 000037'),
('Clara', 'Fischer', '1993-08-14', '+43 000 000038'),
('David', 'Weber', '1987-05-10', '+43 000 000039'),
('Jonas', 'Meyer', '1995-10-23', '+43 000 000040'),
('Jonas', 'Steiner', '2004-04-03', '+43 000 000041'),
('Elias', 'Winkler', '1980-08-18', '+43 000 000042'),
('Laura', 'Pichler', '2001-02-26', '+43 000 000043'),
('Felix', 'Schwarz', '1989-11-19', '+43 000 000044'),
('Illia', 'Reiter', '1996-06-07', '+43 000 000045'),
('Hannah', 'Hoffmann', '2003-12-29', '+43 000 000046'),
('Vladislav', 'Schneider', '1998-01-31', '+43 000 000047'),
('Sophie', 'Fischer', '1994-08-14', '+43 000 000048'),
('Anna', 'Weber', '1985-05-10', '+43 000 000049'),
('Paula', 'Meyer', '1998-10-23', '+43 000 000050')*/


/*INSERT INTO Adresse VALUES
(21, 21, 12, 2, 5),
(22, 22, 8, 0, 3),
(23, 23, 24, 1, 6),
(24, 24, 17, 3, 4),
(25, 25, 6, 4, 1),
(26, 26, 31, 2, 12),
(27, 27, 19, 0, 16),
(28, 28, 4, 1, 4),
(29, 29, 15, 11, 8),
(30, 30, 42, 4, 7),
(31, 31, 9, 3, 11),
(32, 32, 21, 0, 9),
(33, 33, 11, 0, 7),
(34, 34, 7, 6, 5),
(35, 35, 28, 3, 2),
(36, 36, 14, 2, 13),
(37, 37, 33, 0, 4),
(38, 38, 5, 1, 5),
(39, 39, 26, 16, 8),
(40, 40, 18, 9, 14),
(41, 41, 9, 3, 11),
(42, 42, 21, 0, 9),
(43, 43, 11, 0, 7),
(44, 44, 7, 6, 5),
(45, 45, 28, 3, 2),
(46, 46, 14, 2, 13),
(47, 47, 33, 0, 4),
(48, 48, 5, 1, 5),
(49, 49, 26, 16, 8),
(50, 50, 18, 9, 14)*/

/*INSERT INTO Strasse values
(37, 'Potsdamer Sternengasse'),
(38, 'Weserblütenweg'),
(39, 'Hafenlichterstraße'),
(40, 'Mainuferbogen'),
(42, 'Leineblumenweg'),
(43, 'Rheingoldgasse'),
(44, 'Domgärtenstraße'),
(45, 'Saarschleifenweg'),
(46, 'Elbflorenzgasse'),
(47, 'Elbauenstraße'),
(48, 'Fjordblickweg'),
(49, 'Krämerbrückengasse')*/

/*INSERT INTO PLZ values
('7000', 24),
 --('3100', 25),
('4020', 26),
('5020', 27),
('8010', 28),
('6020', 29),
('6900', 30),
('9020', 31),
('14467', 32),
('7100', 33)
 --('60312', 41)*/


 /*CREATE TABLE PersonAdresse (
	PersonAdresseId int PRIMARY KEY IDENTITY(1,1) not null,
	AdresseId int not null,
	FOREIGN KEY (AdresseId) REFERENCES Adresse(Id),
	PersonId int not null,
	FOREIGN KEY (PersonId) REFERENCES Person(Id),
	Adressart nvarchar(50) not null,
	GueltigAb date not null,
	GueltigBis date
 )*/


--EXEC sp_rename 'PersonAdresse.PersonAdresseId', 'Id', 'COLUMN';


/*ALTER TABLE Adresse
DROP CONSTRAINT FK__Adresse__PersonI__30F848ED

ALTER TABLE Adresse
DROP COLUMN PersonId*/

/*INSERT INTO PersonAdresse
VALUES
(1, 1, 'Hauptwohnsitz', '2020-01-15', NULL),
(2, 2, 'Arbeitsadresse', '2021-03-01', NULL),
(3, 3, 'Gemeindewohnung', '2019-06-01', NULL),
(4, 4, 'Nebenwohnsitz', '2022-02-10', '2024-12-31'),
(5, 5, 'Mietwohnung', '2020-09-01', NULL),
(6, 6, 'Eigentumswohnung', '2018-04-15', NULL),
(7, 7, 'Hauptwohnsitz', '2023-01-01', NULL),
(8, 8, 'Arbeitsadresse', '2021-07-01', '2025-06-30'),
(9, 9, 'Studentenwohnung', '2022-10-01', NULL),
(10, 10, 'Gemeindewohnung', '2017-05-01', NULL),
(11, 11, 'Hauptwohnsitz', '2019-11-15', NULL),
(12, 12, 'Nebenwohnsitz', '2020-06-01', '2023-08-31'),
(13, 13, 'Mietwohnung', '2021-02-01', NULL),
(14, 14, 'Arbeitsadresse', '2022-04-01', NULL),
(15, 15, 'Hauptwohnsitz', '2020-07-16', NULL),
(16, 16, 'Eigentumswohnung', '2015-09-01', NULL),
(17, 17, 'Gemeindewohnung', '2021-01-01', NULL),
(18, 18, 'Nebenwohnsitz', '2019-03-15', '2022-12-31'),
(19, 19, 'Mietwohnung', '2020-03-29', NULL),
(20, 20, 'Hauptwohnsitz', '2018-11-07', NULL),
(21, 21, 'Arbeitsadresse', '2022-01-01', NULL),
(22, 22, 'Gemeindewohnung', '2020-05-01', NULL),
(23, 23, 'Studentenwohnung', '2023-09-01', NULL),
(24, 24, 'Mietwohnung', '2019-12-03', '2024-05-31'),
(25, 25, 'Hauptwohnsitz', '2021-04-01', NULL),
(26, 26, 'Nebenwohnsitz', '2020-10-08', NULL),
(27, 27, 'Eigentumswohnung', '2017-03-14', NULL),
(28, 28, 'Arbeitsadresse', '2021-06-01', NULL),
(29, 29, 'Gemeindewohnung', '2022-09-22', NULL),
(30, 30, 'Mietwohnung', '2020-02-11', NULL),
(31, 31, 'Hauptwohnsitz', '2019-11-06', NULL),
(32, 32, 'Arbeitsadresse', '2021-01-01', '2025-12-31'),
(33, 33, 'Studentenwohnung', '2022-04-09', NULL),
(34, 34, 'Eigentumswohnung', '2016-01-24', NULL),
(35, 35, 'Gemeindewohnung', '2020-12-15', NULL),
(36, 36, 'Hauptwohnsitz', '2021-08-02', NULL),
(37, 37, 'Nebenwohnsitz', '2018-05-27', '2023-12-31'),
(38, 38, 'Mietwohnung', '2020-10-13', NULL),
(39, 39, 'Arbeitsadresse', '2019-03-05', NULL),
(40, 40, 'Hauptwohnsitz', '2022-07-21', NULL),
(41, 41, 'Gemeindewohnung', '2021-09-16', NULL),
(42, 42, 'Eigentumswohnung', '2017-04-03', NULL),
(43, 43, 'Mietwohnung', '2020-02-26', NULL),
(44, 44, 'Arbeitsadresse', '2021-11-19', '2025-03-31'),
(45, 45, 'Hauptwohnsitz', '2019-06-07', NULL),
(46, 46, 'Studentenwohnung', '2023-01-01', NULL),
(47, 47, 'Nebenwohnsitz', '2020-08-14', NULL),
(48, 48, 'Gemeindewohnung', '2021-01-31', NULL),
(49, 49, 'Mietwohnung', '2018-05-10', NULL),
(50, 50, 'Hauptwohnsitz', '2022-10-23', NULL)*/


/*CREATE TABLE EmailAdresse (
	Id int primary key identity(1,1) not null,
	PersonId int not null,
	foreign key (PersonId) references Person(Id),
	Email nvarchar(50) not null,
	EmailTyp nvarchar(50) not null
)*/

/*INSERT INTO EmailAdresse (PersonId, Email, EmailTyp)
VALUES
(1, 'clara.reiter@example.com', 'Privat'),
(2, 'leon.hoffmann@example.com', 'Privat'),
(3, 'marie.schneider@example.com', 'Arbeit'),
(4, 'ben.fischer@example.com', 'Privat'),
(5, 'emilia.weber@example.com', 'Privat'),
(6, 'tim.meyer@example.com', 'Arbeit'),
(7, 'sophie.wagner@example.com', 'Privat'),
(8, 'lukas.berger@example.com', 'Arbeit'),
(9, 'hannah.bauer@example.com', 'Privat'),
(10, 'felix.hofmann@example.com', 'Privat'),
(11, 'laura.schulz@example.com', 'Arbeit'),
(12, 'elias.koch@example.com', 'Privat'),
(13, 'mia.richter@example.com', 'Privat'),
(14, 'jonas.klein@example.com', 'Arbeit'),
(15, 'clara.reiter.work@example.com', 'Arbeit'),
(15, 'clara.reiter@example.net', 'Privat'),
(16, 'paul.schroeder@example.com', 'Privat'),
(17, 'anna.neumann@example.com', 'Arbeit'),
(18, 'david.schwarz@example.com', 'Privat'),
(19, 'johanna.zimmermann@example.com', 'Privat'),
(20, 'maximilian.braun@example.com', 'Arbeit'),
(21, 'lea.krueger@example.com', 'Privat'),
(22, 'simon.hartmann@example.com', 'Arbeit'),
(23, 'amelie.lange@example.com', 'Privat'),
(24, 'moritz.werner@example.com', 'Privat'),
(25, 'sarah.schmid@example.com', 'Arbeit'),
(26, 'anton.krause@example.com', 'Privat'),
(27, 'theresa.lehmann@example.com', 'Privat'),
(28, 'julian.maier@example.com', 'Arbeit'),
(29, 'lisa.schmitt@example.com', 'Privat'),
(30, 'fabian.schulze@example.com', 'Privat'),
(31, 'nina.keller@example.com', 'Arbeit'),
(32, 'sebastian.frank@example.com', 'Privat'),
(33, 'katharina.peters@example.com', 'Privat'),
(34, 'tobias.schuster@example.com', 'Arbeit'),
(35, 'valerie.fuchs@example.com', 'Privat'),
(36, 'daniel.sommer@example.com', 'Privat'),
(37, 'sophie.wagner.work@example.com', 'Arbeit'),
(37, 'sophie.wagner@example.net', 'Privat'),
(38, 'lukas.berger.private@example.com', 'Privat'),
(39, 'hannah.bauer.work@example.com', 'Arbeit'),
(40, 'felix.hofmann.private@example.com', 'Privat'),
(41, 'laura.schulz.private@example.com', 'Privat'),
(42, 'elias.koch.work@example.com', 'Arbeit'),
(43, 'mia.richter.private@example.com', 'Privat'),
(44, 'jonas.klein.work@example.com', 'Arbeit'),
(45, 'paul.schroeder.work@example.com', 'Arbeit'),
(46, 'anna.neumann.private@example.com', 'Privat'),
(47, 'david.schwarz.work@example.com', 'Arbeit'),
(48, 'johanna.zimmermann.private@example.com', 'Privat'),
(49, 'maximilian.braun.work@example.com', 'Arbeit'),
(50, 'lea.krueger.work@example.com', 'Arbeit')*/


-- Alle Daten von allen Personen
SELECT p.Vorname, p.Nachname, p.Geburtsdatum, p.Telefonnummer,
	   ead.Email, ead.EmailTyp,
	   plz.PLZ, 
	   l.Name as Land, 
	   bl.Name as Bundesland, 
	   bz.Name as Bezirk, 
	   st.Name as Strasse, 
	   ad.Hausnummer, ad.Stock, ad.Tuer, 
	   pad.Adressart, pad.GueltigAb as WohnungGueltigAb, pad.GueltigBis as WohnungGueltigBis
FROM Land as l
JOIN Bundesland as bl
	ON l.Id = bl.LandId
JOIN Bezirk as bz
	ON bl.Id = bz.BundeslandId
JOIN PLZ as plz
	ON bz.Id = plz.BezirkId
JOIN Strasse as st
	ON bz.Id = st.BezirkId
JOIN Adresse as ad
	ON st.Id = ad.StrasseId
JOIN PersonAdresse as pad
	ON ad.Id = pad.Id
JOIN Person as p
	ON pad.PersonId = p.Id
JOIN EmailAdresse as ead
	ON p.Id = ead.PersonId
ORDER BY plz.PLZ, bz.Name, p.Nachname, p.Vorname, p.Geburtsdatum


-- Alle Personen, die aus Deutschland kommen
SELECT l.Name AS Land, p.Vorname, p.Nachname
FROM Person as p
JOIN PersonAdresse as pad
	ON pad.PersonId = p.Id
JOIN Adresse as ad
	ON ad.Id = pad.AdresseId
JOIN Strasse as st
	ON st.Id = ad.StrasseId
JOIN Bezirk as bz
	ON bz.Id = st.BezirkId
JOIN Bundesland as bl
	ON bl.Id = bz.BundeslandId
JOIN Land as l
	ON l.Id = bl.LandId
WHERE l.Name = 'Deutschland'
ORDER BY p.Vorname, p.Nachname


-- Alle Arbeits Emails
SELECT p.Vorname, p.Nachname, e.Email
FROM EmailAdresse as e
JOIN Person as p
	ON p.Id = e.PersonId
WHERE e.EmailTyp = 'Arbeit'
	AND e.Email LIKE '%%work%%'
ORDER BY p.Vorname, p.Nachname


-- Alle Wiens Bezirke
SELECT bz.Name as BezirksName, plz.PLZ
FROM Bezirk as bz
JOIN Bundesland bl
	ON bl.Id = bz.BundeslandId
JOIN PLZ as plz
	ON plz.BezirkId = bz.Id
WHERE bl.Name = 'Wien'
ORDER BY plz.PLZ


-- Alle Straßen in 1220 Donaustadt
SELECT st.Name as Strasse, plz.PLZ
FROM Strasse as st
JOIN Bezirk as bz
	ON bz.Id = st.BezirkId
JOIN PLZ as plz
	ON plz.BezirkId = bz.Id
WHERE plz.PLZ = '1220'
ORDER BY st.Name




SELECT * FROM Land
SELECT * FROM Bundesland
SELECT * FROM Bezirk
SELECT * FROM PLZ
SELECT * FROM Strasse
SELECT * FROM Adresse
SELECT * FROM Person
SELECT * FROM PersonAdresse
SELECT * FROM EmailAdresse

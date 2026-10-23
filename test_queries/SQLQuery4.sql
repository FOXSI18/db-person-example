/*CREATE TABLE Fahrzeuge (
	Typ varchar(20),
	Marke varchar(50),
	Modell varchar(50),
	Leistung smallint,
	Baujahr date,
	Preis int
)*/

/*INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Kombi',
	'Volkswagen',
	'Passat B8',
	150,
	'2019-04-12',
	24500
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Kombi',
	'Volkswagen',
	'Passat B8',
	190,
	'2021-09-25',
	31200
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Limousine',
	'Audi',
	'A4',
	150,
	'2018-02-18',
	22900
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Kombi',
	'Audi',
	'A4',
	190,
	'2020-11-05',
	29800
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'SUV',
	'BMW',
	'X3',
	184,
	'2017-06-30',
	26400
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'SUV',
	'BMW',
	'X3',
	252,
	'2022-03-14',
	48900
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Kleinwagen',
	'Volkswagen',
	'Golf 8',
	130,
	'2020-07-22',
	19500
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Kleinwagen',
	'Volkswagen',
	'Golf 8',
	150,
	'2023-01-10',
	25900
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Limousine',
	'Mercedes-Benz',
	'C 220',
	194,
	'2019-08-15',
	28700
);

INSERT INTO Fahrzeuge(Typ, Marke, Modell, Leistung, Baujahr, Preis) VALUES (
	'Kombi',
	'Mercedes-Benz',
	'C 220',
	194,
	'2021-05-20',
	34500
);*/

/*ALTER TABLE Fahrzeuge
ADD Id int primary key identity(1,1)*/

-- Wo Leistung mehr oder gleich als 140 | absteigend sortiert
/*SELECT *
FROM Fahrzeuge
WHERE Leistung >= 140
ORDER BY Leistung DESC


-- Preis zwischen 18k und 23k | aufsteigend sortiert
SELECT *
FROM Fahrzeuge
WHERE Preis BETWEEN 18000 AND 23000
ORDER BY Preis ASC


-- Durchschnittliche Preis
SELECT AVG(Preis) as avg_preis
FROM Fahrzeuge


-- Alle wo Baujahr größer als/oder gleich Jahr 2021
SELECT *
FROM Fahrzeuge
WHERE Baujahr > '2021-01-01'


-- Alle Autos die BMW oder VW sind
SELECT *
FROM Fahrzeuge
WHERE Marke = 'Volkswagen'
UNION
SELECT *
FROM Fahrzeuge
WHERE Marke = 'BMW'
ORDER BY Marke ASC
-- ODER
SELECT *
FROM Fahrzeuge
WHERE Marke = 'Volkswagen'
OR Marke = 'BMW'
ORDER BY Marke ASC


-- Top 5 teuerste Auto
SELECT TOP 5 *
FROM Fahrzeuge
ORDER BY Preis DESC

-- Top 5 billigste Auto
SELECT TOP 5 *
FROM Fahrzeuge
ORDER BY Preis ASC


-- Alle Marken ohne duplikate
SELECT DISTINCT Marke
FROM Fahrzeuge
*/


/*create database test
go // warten bis erste Prozess fertig wird
use test*/


-- IN/OR Statement
/*select *
from Mitarbeiter
where AbtNr in (1, 2)*/
--where AbtNr = 1 or AbtNr = 2

create table test (
	Id int primary key Identity(1,1) not null
)


SELECT *
FROM Fahrzeuge
--create database zwei_za

-- Branch ändern (db)
--use zwei_za

/*create table tabelle (
	Vorname nvarchar(50),
	Nachname nvarchar(50),
	Geburtsdatum date,
	PLZ smallint,
	Adresse nvarchar(50),
	Telefonnummer nvarchar(50), 
)*/

-- INSERT VALUE, nur konkrete Spalte
/*insert into tabelle(Vorname) values (
	'Max'
)*/

-- INSERT VALUES
/*insert into tabelle values (
	'Benjamin', 'Rendik', '1998-03-26', 1100, 'Reumangasse 67', '+43195735864'
)*/

-- UPDATE Value in Table
/*update tabelle
set adresse = 'Parkgasse 19'
where vorname = 'Anton'*/

-- LIKE
/*select *
from tabelle
where adresse LIKE Lower('%%ark%%')*/
--where PLZ > 1020

-- COUNT
/*select count(Vorname) as Vorname_count
from tabelle*/

-- Neue Spalte hinzufügen
/*alter table tabelle
add Age int*/

/*update tabelle
set Age = 12
Where Vorname = 'Benjamin'*/

-- Get Age from Geburtsdatum
/*select datediff(year, Geburtsdatum, GETDATE())
from tabelle*/


-- UPDATE SET true age with Geburtsdatum
/*UPDATE tabelle
SET Age = datediff(year, Geburtsdatum, GETDATE())*/

/*UPDATE tabelle
SET Age = 40
Where Vorname = 'Benjamin'*/


-- SUM, AVG, MIN, MAX
/*select min(Age) as age_min
from tabelle

select max(Age) as age_max
from tabelle

select avg(Age) as age_avg
from tabelle

select sum(Age) as age_sum
from tabelle*/


-- DELETE | DROP
/*delete from tabelle
where Age IS NULL*/

-- löschen Spalte Age
--alter table tabelle DROP column Age 

-- ganze Tabelle löschen
--drop table tabelle

-- datenbank löschen (muss nicht in Verwendung sein)
--drop database zwei_za

/*select *
from tabelle*/

-- group by
-- group by
-- Subselect

-- Subselect
/*select Name 
from Mitarbeiter 
where AbtNr = (
	select AbteilungsNr
	from Abteilung
	where Bezeichnung = 'Personal'
)*/


-- SELECT with IN
/*select Name 
from Mitarbeiter
where AbtNr in (1,2,3)*/


-- ORDER BY
/*select *
from Mitarbeiter
order by Name asc // asc(aufsteigend) or desc(absteigend) or nothing*/


-- GROUP BY + COUNT
/*select Count(Name) as Summe_Vorname, AbtNr
from Mitarbeiter
group by AbtNr*/




-- Kleine Aufgabe 19.10.2026

--create database ZA2

--use ZA2

/*create table Schueler (
	Id int primary key identity(1,1),
	Vorname nvarchar(50),
	Nachname nvarchar(50),
	Geburtsdatum date,
	PLZ smallint,
	Adresse nvarchar(50),
	Stadt nvarchar(50),
	Telefonnummer nvarchar(50),
	Age tinyint,
	Geschlecht nvarchar(1),
	Beruf nvarchar(50),
)*/

/*insert into Schueler(Vorname, Nachname, Geburtsdatum, PLZ, Adresse, Stadt, Telefonnummer, Age, Geschlecht, Beruf) values (
	'Maria',
	'Lia',
	'2005-04-30',
	8040,
	'Musststraße 73',
	'Wien',
	'+4312781521',
	19,
	'm',
	'Taxifahrer'
);*/



-- Alle weiblichen, die Age > 18 sind
SELECT *
FROM Schueler
WHERE Geschlecht = 'w'
AND Age > 18



-- Durchschnittliche Age
SELECT AVG(Age) as age_avg
FROM Schueler



-- Alle Schüler, die in 1020 Wohnen
SELECT *
FROM Schueler
WHERE PLZ = 1020



-- Alle deren Nachnamen ein "e" enthält
SELECT *
FROM Schueler
WHERE Nachname LIKE Lower('%%e%%')



-- Alle, die nicht in Wien leben
-- Subselect Verwendung
SELECT *
FROM Schueler
WHERE Stadt NOT IN (
	SELECT Stadt
	FROM Schueler
	WHERE Stadt = 'Wien'
)
-- ODER LEICHTERE BEISPIEL
SELECT *
FROM Schueler
WHERE Stadt NOT IN ('Wien')



-- Gruppieren alle nach Geschlecht mit Count
SELECT Geschlecht, COUNT(*) as Anzahl
FROM Schueler
GROUP BY  Geschlecht


-- Alle, die in ihrem Beruf 'Büro' stehen haben
SELECT *
FROM Schueler
WHERE Beruf LIKE 'Büro%%'



-- Aufsteigend sortiert nach Adresse
SELECT *
FROM Schueler
ORDER BY Adresse ASC






select *
from Schueler


/*create database ER_Modell
go
use ER_Modell*/

-- ABTEILUNG
/*create table Abteilung (
	AbteilungsNr int primary key Identity(1,1) not null,
	AbtName nvarchar(50)
)

SELECT *
FROM Abteilung


-- MITARBEITER
create table Mitarbeiter (
	PersonalNr int primary key Identity(1,1) not null,
	Name nvarchar(50),
	Vorname nvarchar(50),
	Gebdatum date,
	Position nvarchar(50),
)

SELECT *
FROM Mitarbeiter


-- ARBEITET_AN
create table Arbeitet_an (
	Task nvarchar(50),
	ProzAnteil int
)

SELECT *
FROM Arbeitet_An


-- PROJEKTE
create table Projekte (
	ProjektNr int primary key Identity(1,1) not null,
	Beschreibung nvarchar(50),
)

SELECT *
FROM Projekte


insert into Mitarbeiter values (
	'Frawley',
	'Lutz',
	'1979-09-09',
	''
)

select *
from Mitarbeiter

insert into Projekte values (
	'Konkurrenzanalyse'
)


select *
from Projekte
select *
from Mitarbeiter
select *
from Abteilung
*/

/*insert into Arbeitet_an values (
	'Sachbearbeiter',
	50
)*/


-- RENAME TABLE
--EXEC sp_rename 'Projekte', 'projekte';






-- ADD FOREIGN KEY
/*ALTER TABLE mitarbeiter ADD AbtNr int,
				FOREIGN KEY(AbtNr) REFERENCES abteilung(AbteilungsNr)*/

/*ALTER TABLE mitarbeiter ADD
	AbtNr int FOREIGN KEY REFERENCES abteilung(AbteilungsNr)*/


/*UPDATE mitarbeiter 
SET AbtNr = 3, 
	Position = 'Mitarb.'
WHERE PersonalNr = 5*/


/*delete from abteilung
WHERE AbteilungsNr = 1*/




-- 1
/*SELECT Name, Vorname, Position
FROM mitarbeiter
WHERE AbtNr = (
	SELECT AbteilungsNr
	FROM abteilung
	WHERE AbtName = 'Personal'
)*/


-- 2
/*SELECT AbtName
FROM abteilung
WHERE AbteilungsNr = (
	SELECT AbtNr
	FROM mitarbeiter
	WHERE Name = 'Kirsch'
)*/


-- 3
/*SELECT Gebdatum
FROM mitarbeiter
WHERE AbtNr = (
	SELECT AbteilungsNr
	FROM abteilung
	WHERE AbtName = 'Verkauf'
)
AND Position <> 'Leiter'
ORDER BY Gebdatum ASC*/




/*ALTER TABLE arbeitet_an ADD PersonalNr int
				FOREIGN KEY(PersonalNr) REFERENCES mitarbeiter(PersonalNr)

ALTER TABLE arbeitet_an ADD ProjektNr int
				FOREIGN KEY(ProjektNr) REFERENCES projekte(ProjektNr)*/

/*ALTER TABLE arbeitet_an
ADD Id int primary key identity(1,1)*/



/*UPDATE arbeitet_an
SET PersonalNr = 3,
    ProjektNr = 3
WHERE Id = 8*/



/*select Task, ProzAnteil, PersonalNr, ProjektNr, ROW_NUMBER() OVER(ORDER BY Task) AS row_num
from arbeitet_an*/





-- INNER JOIN
SELECT Vorname, Name as Nachname, Position, AbtNr, AbtName
FROM mitarbeiter as m
JOIN abteilung as a
ON m.AbtNr = a.AbteilungsNr
where AbtName = 'Personal'




-- Gebdatum alle Mitarbeiter, die im Einkauf arbeiten
SELECT Gebdatum
FROM mitarbeiter as m
JOIN abteilung as a
ON a.AbteilungsNr = m.AbtNr
WHERE a.AbtName = 'Einkauf'


/*UPDATE projekte
SET Beschreibung = 'Kundenumfrage'
WHERE ProjektNr = 1*/


-- 1
SELECT Vorname, Name as Nachname, a.Task, a.ProzAnteil, p.Beschreibung
FROM mitarbeiter as m
JOIN arbeitet_an as a
	ON m.PersonalNr = a.PersonalNr
JOIN projekte as p
	ON p.ProjektNr = a.ProjektNr
WHERE p.Beschreibung = 'Kundenumfrage'
	OR p.Beschreibung = 'Konkurrenzanalyse'


-- 2
SELECT m.Name as Nachname, m.Vorname, p.Beschreibung, a.Task, a.ProzAnteil
FROM mitarbeiter as m
JOIN arbeitet_an as a
	ON m.PersonalNr = a.PersonalNr
JOIN projekte as p
	ON p.ProjektNr = a.ProjektNr
WHERE a.ProzAnteil >= 50
ORDER BY p.Beschreibung, a.ProzAnteil, a.Task, m.Name, m.Vorname






select * from arbeitet_an

select * from mitarbeiter
select * from projekte
select * from abteilung


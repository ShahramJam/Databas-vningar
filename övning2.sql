	--Övning 2
	--Skapa en databas som heter School.
	--I denna databas ska du:
	--Skapa en tabell med studenter i SQL. Den ska ha följande kolumner:
	--Namn TYP Måste ha värde? Primärnyckel?
	--SID int Ja Ja
	--FName Varchar(20) ja nej
	--LName Varchar(20) ja nej
	--Comment Text nej nej
	--Lägg in minst 3 studenter. Tänk på att du kan klippa, klistra.

CREATE DATABASE School;
GO


USE School;
GO

CREATE TABLE dbo.Students
(
    SID     int           NOT NULL,
    FName   varchar(20)   NOT NULL,
    LName   varchar(20)   NOT NULL,
    Comment varchar(max)  NULL,

    CONSTRAINT PK_Students PRIMARY KEY (SID)
);
GO

INSERT INTO dbo.Students (SID, FName, LName, Comment)
VALUES
    (1, 'Anna', 'Andersson', 'Gillar matematik'),
    (2, 'Erik', 'Eriksson', NULL),
    (3, 'Sara', 'Svensson', 'Deltar aktivt på lektionerna');
GO
 
SELECT SID, FName, LName, Comment
FROM dbo.Students;
GO
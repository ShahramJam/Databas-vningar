--Övning 6
USE Chinook
GO
-- Gör en lagrad procedur som tar en inparameter. 
-- Om man inte anropar med värde ska det finnas ett default värde.

--Gör en inparameter som är valfri. Kan vara t.ex. namn.

--Frågan ska ge ett resultat och namnet på frågan ska spegla vad 
--det önskade resultatet är.
 
-- Visa även hur du anropar proceduren.
 
 

 CREATE PROC getCustomersByFirstName2
@firstname varchar(40) = 'Mark'
AS
SELECT FirstName, LastName, City 
FROM Customer
WHERE FirstName = @firstname

GO

 
EXEC getCustomersByFirstName2 'Astrid'
GO 


EXEC getCustomersByFirstName2

GO

CREATE PROC getCustomersLastNameStartsWithP2
AS
SELECT FirstName, LastName, City 
FROM Customer
WHERE LastName LIKE 'P%'

GO


EXEC getCustomersLastNameStartsWithP2
GO
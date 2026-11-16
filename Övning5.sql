--Övning 5
-- USE Chinook
--Skapa en lagrad procedur som hämtar ut alla kunder som heter 
--’Mark’ eller ’Astrid’ sortera fallande på förnamn.
--Anropa proceduren.

USE Chinook;
GO

CREATE OR ALTER PROCEDURE dbo.GetCustomersByFirstName
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM dbo.Customer
    WHERE FirstName IN ('Mark', 'Astrid')
    ORDER BY FirstName DESC;
END;
GO

EXEC dbo.GetCustomersByFirstName;
GO
-- This file is intended for notes
-- and for demonstrating how to work
-- with SQLite in Codespaces.

-- These two statements operate on the 
-- restaurant.db SQLite database.
SELECT * FROM Dishes;
SELECT * FROM Customers;

CREATE TABLE AnniversaryAttendees (
  CustomerID INTEGER,
  PartySize INTEGER
);

SELECT Customers.FirstName, Customers.LastName, Customers.Email, Reservations.Date, Reservations.PartySize
FROM Customers
JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.Email = 'smac@kinetecoinc.com';
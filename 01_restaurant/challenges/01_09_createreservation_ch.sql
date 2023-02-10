-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES ('Sam', 'McAdams', 'smac@kinetecoinc.com', '555-555-1212');

INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES (
  (SELECT CustomerID FROM Customers
  WHERE email == 'smac@kinetecoinc.com'),
  '2022-08-12 18:00:00',
  5);

SELECT * FROM Reservations
ORDER BY Date DESC;

SELECT Customers.FirstName, Customers.LastName, Customers.Email, Reservations.Date, Reservations.PartySize
FROM Customers
JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.Email = 'smac@kinetecoinc.com';
-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM Customers
WHERE FirstName = "Norby";

-- CustomerID = 64

SELECT *
FROM Reservations
WHERE CustomerID = 64
ORDER BY Date DESC;

-- ReservationID = 2000

DELETE FROM Reservations
WHERE ReservationID == 2000;
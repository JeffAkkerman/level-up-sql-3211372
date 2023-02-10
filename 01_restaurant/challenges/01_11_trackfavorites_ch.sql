-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

CREATE TABLE CustomersFavorites (
  CustomerID INTEGER,
  OrderID INTEGER,
  DishID Integer
);

-- Tried to create a new table above that would track all the dishes ordered by each customer to then find the max

-- Going to try joining tables instead and finding the max and inputting that to the Customers table

SELECT Customers.FirstName, Customers.LastName, Customers.Email, Reservations.Date, Reservations.PartySize
FROM Customers
JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.Email = 'smac@kinetecoinc.com';
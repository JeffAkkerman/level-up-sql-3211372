-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

CREATE TABLE CustomersFavorites (
  CustomerID INTEGER PRIMARY KEY,
  OrderID INTEGER,
  DishID Integer
);

SELECT *, COUNT(DishID)
FROM Orders
JOIN OrdersDishes ON Orders.OrderID = OrdersDishes.OrderID
GROUP BY CustomerID, DishID
ORDER BY CustomerID, COUNT(DishID) DESC;

-- Tried to create a new table above that would track all the dishes ordered by each customer to then find the max




-- -- Going to try joining tables instead and finding the max and inputting that to the Customers table

-- SELECT Customers.FirstName, Customers.LastName, Customers.Email, Reservations.Date, Reservations.PartySize
-- FROM Customers
-- JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID
-- WHERE Customers.Email = 'smac@kinetecoinc.com';

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * FROM Customers
WHERE FirstName == 'Cleo' AND LastName == 'Goldwater';

-- CustomerID = 42

SELECT * FROM Dishes
WHERE Name = 'Quinoa Salmon Salad';

-- DishID = 9

UPDATE Customers
SET FavoriteDish = 9
WHERE CustomerID = 42;

SELECT * FROM Customers
WHERE CustomerID = 42;

-- In one query below

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = 42;

SELECT Customers.FirstName, Customers.LastName, Customers.FavoriteDish, Dishes.Name
FROM Customers
JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;
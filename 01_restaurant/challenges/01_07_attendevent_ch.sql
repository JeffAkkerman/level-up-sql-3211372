-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT * FROM Customers
WHERE Email == "atapley2j@kinetecoinc.com";

-- CustomerID = 92

INSERT INTO AnniversaryAttendees (CustomerID, PartySize)
VALUES (92, 4);

-- OR

INSERT INTO AnniversaryAttendees (CustomerID, PartySize)
VALUES (
  (SELECT CustomerID FROM Customers
  WHERE Email == "atapley2j@kinetecoinc.com"),
  4);



SELECT * FROM AnniversaryAttendees;
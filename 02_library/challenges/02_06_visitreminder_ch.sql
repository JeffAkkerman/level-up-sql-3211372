-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(PatronID), PatronID
FROM Loans
GROUP BY PatronId
ORDER BY COUNT(PatronID);


SELECT COUNT(Loans.PatronID) AS TotalCheckouts, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Patrons.PatronID
ORDER BY COUNT(Loans.PatronID)
LIMIT 15;




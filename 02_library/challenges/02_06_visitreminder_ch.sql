-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(PatronID), PatronID
FROM Loans
GROUP BY PatronId
ORDER BY COUNT(PatronID);


SELECT COUNT(Loans.PatronID), Patrons.FirstName, Patrons.Email, 
FROM Loans
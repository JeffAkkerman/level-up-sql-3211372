-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.


SELECT COUNT(*), Published
FROM Books
GROUP BY Published
ORDER BY Published DESC;


SELECT COUNT(DISTINCT Title), Published
FROM Books
GROUP BY Published
ORDER BY Published DESC;


SELECT COUNT(Loans.LoanID), Books.Title
FROM Loans
JOIN Books ON Loans.BookID=Books.BookID
GROUP BY Books.Title
ORDER BY COUNT(Loans.LoanID) DESC
LIMIT 5;
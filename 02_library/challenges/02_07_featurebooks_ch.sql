-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Books.Title, Books.Author, Books.Published, Books.Barcode
FROM Books
JOIN Loans on Books.BookID=Loans.BookID
WHERE Books.Published BETWEEN 1890 AND 1899
AND Loans.ReturnedDate IS NOT NULL
GROUP BY Books.Barcode
ORDER BY Books.Title;

-- My solution finds 44 books, their solution finds 41 books.
-- My solution doesn't grab one of the 4 Dracula Books that is not checked out
-- because it has never been checked out, so it's returned date doesn't fall under not null.
-- Also, my solution grabs books that are checked out, like BookID 95 for Also sprach Zarathustra
-- because there are numerous times where it was checked out and returned, those returned dates are not null.


SELECT Title, Barcode
FROM Books
WHERE Published BETWEEN 1890 AND 1899
AND (BookID NOT IN 
  (SELECT BookID 
  FROM Loans 
  WHERE ReturnedDate IS NULL)) 
ORDER BY Title;
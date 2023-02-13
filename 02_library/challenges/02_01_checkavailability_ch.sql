-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(*), Title, Author
FROM Books
WHERE Title == 'Dracula';

-- There are 3 copies of Dracula

SELECT Books.Title, Books.Author, Loans.ReturnedDate
FROM Books
JOIN Loans ON Books.BookID = Loans.BookId
WHERE 
  Books.Title == 'Dracula'
  AND Loans.ReturnedDate IS NULL;

-- One copy is checked out, so there are two available

SELECT 
  (SELECT COUNT(Books.Title)
    FROM Books
    WHERE Title == 'Dracula')
  -
  (SELECT COUNT(Books.Title)
    FROM Books
    JOIN Loans ON Books.BookID = Loans.BookId
    WHERE Books.Title == 'Dracula'
    AND Loans.ReturnedDate IS NULL)
    AS AvailableCopies;

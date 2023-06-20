-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT b.Published, COUNT(b.Published)
FROM Books b
GROUP BY b.Published;

SELECT b.Title, COUNT(l.LoanID) AS 'Loans'
FROM Loans l
INNER JOIN Books b
  ON b.BookID = l.BookID
GROUP BY b.Title
ORDER BY Loans DESC
LIMIT 10;
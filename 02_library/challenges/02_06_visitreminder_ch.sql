-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(l.LoanID) AS 'BookedBorrowed', p.FirstName, p.LastName, p.Email
FROM Loans l 
INNER JOIN Patrons p 
  ON p.PatronID = l.PatronID
GROUP BY l.PatronID
ORDER BY BookedBorrowed ASC
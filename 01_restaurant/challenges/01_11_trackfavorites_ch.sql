-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

-- SELECT CustomerID
-- FROM Customers
-- WHERE FirstName = 'Cleo'
-- AND LastName = 'Goldwater'
/*
UPDATE Customers 
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE 
CustomerID = 42
*/

SELECT * 
FROM Customers c
INNER JOIN Dishes d 
ON c.FavoriteDish = d.DishID
WHERE c.CustomerID = 42
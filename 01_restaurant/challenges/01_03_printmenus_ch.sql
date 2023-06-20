-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
SELECT *
FROM 
  Dishes d
ORDER BY d.Price ASC;

SELECT *
FROM 
  Dishes d 
WHERE 
  d.Type IN ('Appetizer', 'Beverage');

SELECT *
FROM 
  Dishes d
WHERE 
  d.Type <> 'Beverage';
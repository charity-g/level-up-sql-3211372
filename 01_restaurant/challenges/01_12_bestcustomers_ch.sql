-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.FirstName, c.LastName, c.Email, COUNT(o.OrderID) AS 'ORDER_NUM'
FROM Customers c
INNER JOIN Orders o 
  ON c.CustomerID = o.CustomerID
GROUP BY
  c.FirstName, c.LastName, c.Email
ORDER BY ORDER_NUM DESC
LIMIT 15
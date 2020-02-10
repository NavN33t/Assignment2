-- Navneet Kaur(8622734) --

-- PART 1 --
-- Query1 --
SELECT OrderNumber, (QuotedPrice*QuantityOrdered) AS Revenue FROM order_details;

-- Query2 --
SELECT EmpFirstName, EmpLastName, timestampdiff(YEAR, EmpBirthDate, NOW()) AS Age FROM employees;


-- PART 2 --

-- Query1 --
SELECT EmpFirstName, EmpLastName FROM employees WHERE EmpFirstName LIKE '%r%' AND EmpLastName NOT LIKE '%q%';


-- PART 4 --

-- Query1 --
SELECT  DISTINCT C.CustFirstName, C.CustPhoneNumber FROM customers C JOIN orders O
ON C.CustomerID = O.CustomerID
JOIN order_details OD ON
O.OrderNumber = OD.OrderNumber
JOIN products P ON
OD.ProductNumber = P.ProductNumber WHERE P.ProductName LIKE '%helmet%';

-- Query2 --
SELECT C.CustFirstName, E.EmpFirstName FROM customers C
INNER JOIN employees E ON C.CustFirstName = E.EmpFirstName;


-- PART 5 --

-- Query1 --
SELECT SUM(QuantityOrdered*QuotedPrice*2) AS Total FROM order_details AS OD
JOIN orders O ON OD.OrderNumber = O.OrderNumber JOIN customers C
ON O.CustomerID = C.CustomerID WHERE C.CustState = 'OR';
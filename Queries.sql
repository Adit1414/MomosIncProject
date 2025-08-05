--Query 1: Name all employees who work in a branch which offers a menu of the kind breakfast/lunch/snacks/dinner.

SELECT Name
FROM Employee E
WHERE E.Employee_ID IN (
	SELECT Employee_ID
	FROM WorksIn W
	WHERE W.BranchID IN (
		SELECT B.BranchID
		FROM Branch B
		WHERE B.BranchID IN (
			SELECT BranchID
			FROM Offers O
			WHERE MenuID IN (
				SELECT MenuID
				FROM Menu M
				WHERE M.Kind = 'breakfast'
			)
		)
	)
);


--Query 2:  List the details of the customers who have ordered any momo of type kurkure

SELECT distinct Customer.customerID, Customer.name, Customer.phone_no
FROM Customer natural join Orders natural join Has natural join MenuItem
WHERE type = 'Kurkure'
ORDER BY customerid;

--Query 3 Getting an average order value for all the order placed till now by branch.

SELECT BranchID, AVG(TotalPrice) 
FROM Orders
GROUP BY BranchID ;

--Query 4 Given a Dish get its number of Orders till now, show smallest number of orders first

-- SELECT M.dishname,Count(H.orderid) count 
-- FROM menuitem M 
-- JOIN has H 
-- ON M.dishname=H.dishname 
-- GROUP BY M.dishname
-- ORDER BY count;

--Query 5 Select all the orders where dishname is 'Veg Steamed Momos'

SELECT O.orderid 
FROM Orders O  
JOIN HAS H 
ON O.orderid= H.orderid 
WHERE H.dishname='Veg Steam Momos';

--Query 6 Select all the Orders with the no. of items in each of them, show 20 orders with the most number of items

SELECT orders.orderid, COUNT(has.orderid) num
FROM orders 
JOIN has 
ON orders.orderid=has.orderid 
GROUP BY orders.orderid
ORDER BY num desc
LIMIT 20; 

	
--Query7 List the Branch IDs which do not have potato in their inventory

SELECT DISTINCT BranchID
FROM Inventory
WHERE BranchID NOT IN (
	SELECT BranchID
	FROM Inventory
	WHERE Item = 'Potato'
);

--Query8: Increment the salary by 10000 of those managers who joined a restaurant more than 2 years ago.

UPDATE employee e
SET salary = salary + 10000
FROM  worksin w 
WHERE w.employee_id = e.employee_id AND  e.role = 'manager' 
AND CURRENT_DATE - w.doj >= 730;


--Query9: List the menu item which is ordered the most for every branch

SELECT R2.BranchID, R1.Dishname, MAX(R1.dish_count) AS sales_num

FROM 
    (SELECT SUM(Quantity) AS dish_count, Dishname
    FROM Orders NATURAL JOIN Has
    GROUP BY Dishname) AS R1
NATURAL JOIN
    (SELECT BranchID, Dishname
    FROM Branch NATURAL JOIN Offers NATURAL JOIN Contain) AS R2
GROUP BY R2.BranchID, R1.Dishname;


--Query10: List all the sales of all branches in descending order

SELECT sum(totalprice) as Total_Sales,BranchID
FROM Orders
GROUP BY BranchID
ORDER BY Total_Sales Desc;


-- --Query 11: Inserting  a manager to one of the branch which does not have a manager with a given joining date;

-- CREATE TEMP TABLE  branch_with_manager AS 
-- SELECT branchid 
-- FROM EMPLOYEE 
-- JOIN worksin 
-- ON employee.employee_id=worksin.employee_id 
-- where employee.role='manager' ;


-- INSERT INTO worksin VALUES (
-- 	(SELECT branchid from branch
--     where branchid 
--     not in (SELECT branchid from  branch_with_manager) ORDER BY RANDOM() LIMIT 1), 
--     (SELECT employee.employee_id from employee where employee.role ='manager' ORDER BY RANDOM() LIMIT 1),
--     '2024-09-17'
-- );

--Query 12: Select all the customer ID’s who have done payment only in upi till now;

SELECT O.customerid 
FROM  ORDERS  O 
WHERE NOT EXISTS
(SELECT * FROM ORDERS O1 
WHERE O1.customerid=O.customerid 
AND O1.payment_method!='upi') ;

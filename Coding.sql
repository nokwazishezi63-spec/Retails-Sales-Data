select * from `brightlearn`.`data`.`retail_sales` limit 100;
--Dispay only the customer ID and Product Category columns
SELECT `Customer ID`,
`Product Category`
From retail_sales

--Display all elecronic sales transcation 
Select *
From retail_sales
WHERE `Product Category` = 'Electronics';

--Display All Customers age that are greater than 40 
Select *
From retail_sales
WHERE Age > 40;

--Display transcation where the quantity purchase is 3 or more
Select*
From retail_sales
Where Quantity >3;

--Display Beauty product sales where the total amount is greater than 100
Select*
From retail_sales
Where `Product Category` = 'Beauty' AND `Total Amount` >100;

--Display customer who ages are between 25 and 35
Select*
From retail_sales
Where Age Between 25 and 35


--Calculate the total sales amount for all transactions
SELECT Sum(`Total Amount`) As `Total Transact`
From retail_sales;

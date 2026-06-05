-- Databricks notebook source
USE brightlearn.data;
Select*
From retail_sales;

-- 1. Which product categories generated more than 150,000 in total sales? 

Select `Product Category` 
Sum(`Total Amount`) AS Total_Sales
From retail_sales;
GROUP BY `Product Category`
Where `Total Amount`>150000
HAVING Sum(`Total Amount`)>150000;


-- 2. Which genders generated an average transaction value above 300?  

Select 'Gender'
AVG(`Total Amount`) AS Total Transact
From retail_sales;
Group BY
HAVING avg_transaction > 300

-- 3. Find the top 5 customers with the highest total spending. 
Select `Customer ID`,
`Total Amount`
FROM retail_sales;
ORDER BY `Total Amount` DESC
LIMIT 5;


-- 4. Which product categories have more than 300 transactions? 

-- 5. What is the highest sale amount recorded for each product category? 

-- 6. Find the minimum sale amount for each gender.  

-- 7. Show categories where the average quantity sold is greater than 2. 

-- 8. Find the total sales for customers aged between 25 and 40 who purchased Beauty or Clothing products.

-- 9. Which product categories have a maximum sale amount greater than 1000? 

-- 10. Show the top 3 categories by average sales value, excluding customers under 25.

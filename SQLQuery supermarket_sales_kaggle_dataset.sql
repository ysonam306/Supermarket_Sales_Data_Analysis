create database kaggle_data;
use kaggle_data;

-- create table
CREATE TABLE supermarket_sales_data(
	Invoice_ID VARCHAR(11) NOT NULL PRIMARY KEY,
    Branch VARCHAR(5) NOT NULL,
    City VARCHAR(50) NOT NULL,
    Customer_type VARCHAR(50) NOT NULL,
    Gender VARCHAR(50) NOT NULL,
	Product_line VARCHAR(50) NOT NULL,
	Unit_price DECIMAL(10,2) NOT NULL,
	Quantity INT NOT NULL,
	Tax DECIMAL(10,4) NOT NULL,
	Total DECIMAL(10,4) NOT NULL,
	Purchase_Date DATE NOT NULL,
	Purchase_Time TIME NOT NULL,
	Payment VARCHAR(50) NOT NULL,
	Cogs DECIMAL(10,2) NOT NULL,
	gross_margin_percentage DECIMAL(12,9),
	gross_income DECIMAL(10,4),
	Rating DECIMAL(3,1)
);


-- Checking for null values
SELECT 
    COUNT(CASE WHEN gross_margin_percentage IS NULL THEN 1 END) AS NullCount_gmp,
    COUNT(CASE WHEN gross_income IS NULL THEN 1 END) AS NullCount_gi,
    COUNT(CASE WHEN Rating IS NULL THEN 1 END) AS NullCount_Rating
FROM
	supermarket_sales_data;



-- What is the gender with the most purchases?
select
	Gender,
	Sum(Total) AS total_purchase
From
	supermarket_sales_data
Group by
	Gender
Order by
	total_purchase Desc;



-- What are the spending patterns of females and males and identify the type of products they buy the most?
select Top 5
	Gender,
	Product_line,
	Count(Quantity) AS no_of_purchases
From
	supermarket_sales_data
Group by
	Gender,
	Product_line
Order by
	no_of_purchases Desc;




-- Is there a difference in purchases between a customer with a membership card and a normal customer?
select
	Customer_type,
	Sum(Total) AS total_purchase
From
	supermarket_sales_data
Group by
	Customer_type
Order by
	total_purchase Desc;




-- What is the most popular payment method used by customers?
select
	Payment,
	count(Payment) AS payment_method
From
	supermarket_sales_data
Group by
	Payment
Order by
	payment_method Desc;



-- Which branch is the most profitable?
select
	Branch,
	Sum(gross_income) AS total_gross_income
From
	supermarket_sales_data
Group by
	Branch
Order by
	total_gross_income Desc;



-- Which product category generates the highest revenue?
select
	Product_line,
	Sum(gross_income) AS total_revenue
From
	supermarket_sales_data
Group by
	Product_line
Order by
	total_revenue Desc;



-- How many products are purchased by customers in each category?
select
	Product_line,
	Sum (Quantity) AS purchased_quantity
From
	supermarket_sales_data
Group by
	Product_line
Order by
	purchased_quantity Desc;



-- Which product category should the supermarket prioritize?

-- 1.Most popular based on total quantity purchased
select Top 1
	Product_line,
	Sum(Quantity) AS purchased_quantity
From
	supermarket_sales_data
Group by
	Product_line
Order by
	purchased_quantity Desc;
-- 2.Most profitable based on total revenue
select Top 1
	Product_line,
	Sum(gross_income) AS total_revenue
From
	supermarket_sales_data
Group by
	Product_line
Order by
	total_revenue Desc;




-- Which city branch shows the greatest potential for expansion, and which products should be prioritized in that branch?

-- 1.Identify the Branch with the Greatest Potential based on total_revenue
select Top 1
	Branch,
	Sum(gross_income) AS total_revenue
From
	supermarket_sales_data
Group by
	Branch
Order by
	total_revenue Desc;

-- 2.Find the top selling Products in that Branch based on total quantity sold
select Top 1
	Product_line,
	Sum(Quantity) AS total_Quantity
From
	supermarket_sales_data
Where
	Branch = 'C'
Group by
	Product_line
Order by
	total_Quantity Desc;











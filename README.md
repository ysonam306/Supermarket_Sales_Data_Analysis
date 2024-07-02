# Supermarket_Sales_Data_Analysis

# Supermarket Sales Data Analysis
## Introduction-
The growth of supermarkets in highly populated cities is accelerating, leading to increased market competition. This dataset represents historical sales data (Record available from January 2019 to March 2019) from a supermarket company, collected over 3 months across 3  different branches. 

## Objectives-
Our main objective in this project is to deeply understand the factors influencing supermarket sales. We are analyzing product performance, sales trends, and customer behavior through MS SQL. By uncovering these insights, we aim to provide decision-makers with actionable intelligence for more informed strategic decisions. The dataset was obtained from Kaggle Supermarket Sales.
The primary goal of this project is to analyze the data through Exploratory Data Analysis (EDA) to examine the data using statistical measures and visualizations. For this, we will follow the steps of the data analysis process: Ask, Prepare, Process, Analyze, Share , and Act. This approach allows us to convert raw data into practical knowledge.


## About Dataset-
| Column    | Description            | Data Type    |
|:----------|:-----------------------|:-------------|
|Invoice_Id |Invoice Identification Number |VARCHAR(11) |
|Branch     |Branch of Supermarkets (3 Branches A, B and C)|VARCHAR(5)|
|City       |Location of Supermarkets|VARCHAR(50)   |
|Customer_type|Type of Customers(Members- using member card, Normal- without member card)|VARCHAR(50)|
|Gender     |Gender type of customer |VARCHAR(50)  |
|Product_line|General item categorization groups (Electronic accessories, Fashion accessories, Food and beverages, Health and beauty, Home and lifestyle, Sports and travel)|VARCHAR(50)|
|Unit_price  |Price of each product in $|DECIMAL(10,2)|
|Quantity    |Number of products purchased by customer|INT |
|Tax         |5% tax fee for customer buying|DECIMAL(10,4)|
|Total       |Total price including tax|DECIMAL(10,4)|
|Date        |Date of purchase (Record available from January 2019 to March 2019)|DATE |
|Time        |Purchase time (10am to 9pm)|TIME |
|Payment     |Payment used by customer for purchase (Cash, Credit card and Ewallet)|VARCHAR(50)|
|Cogs        |Cost of goods sold|DECIMAL(10,2)|
|gross_margin_percentage|Gross margin percentage|DECIMAL(12,9)|
|gross_income|Gross income|DECIMAL(10,4)|
|Rating      |Customer stratification rating (On a scale of 1 to 10)|DECIMAL(3,1)




## Customer Analysis-
In this analysis, our goal is to uncover patterns in customer behavior by examining gender and customer type in relation to total purchases, most popular payment method. Through this exploration, we aim to gain valuable insights into how these factors influence the supermarket's success.
Based on the existing data set, we have some questions to answer:
**1. What is the gender with the most purchases?**
**2. What are the spending patterns of females and males and identify the categories where they spend the most money?**
**3. Is there a difference in purchases between a customer with a membership card and a normal customer?**
**4. What is the most popular payment method used by customers?**


## Supermarket Analysis-
Our objective is to analyze supermarket operations across various cities and branches, with the aim of enhancing performance and increasing customer satisfaction.
We need to answer the following questions:
**1. Which branch is the most profitable?**
**2. Which product category generates the highest revenue?**
**3. How many products are purchased by customers in each category?**
**4. Which product category should the supermarket prioritize?**
**5. Which city branch shows the greatest potential for expansion, and which products should be prioritized in that branch?**


## Steps-
To answer the above questions, we will follow these steps-
**1. Data Preparation-**  Clean the data to handle any missing or NULL values, ensuring that the dataset is ready for analysis.
**2. Exploratory Data Analysis (EDA)-**  Use statistical methods and visualizations to explore the data.
**3. Conclusion**
**4. Recommendation**

## Code and Visualizations-
I have created the code to answer the questions above using **MS SQL**. Check it here. 
All the visualizations are shown in **Power BI**. Check it here.

## Analysis-
### A.Customer Analysis-
**1. What is the gender with the most purchases?**

![alt text](<Total Purchases By Gender.png>)<br/><br/>
From this graph, we observe that females make the majority of purchases, accounting for 51.98%, while males make up 48.02% of the purchases.


**2. What are the spending patterns of females and males and identify the categories where they spend the most money?**

![alt text](<Count of Product line by Gender.png>)<br/><br/>
From above, we can see the spending patterns of females and males across different product categories. Females spend the most money on ‘Fashion accessories’, while males spend the most money on ‘Health and beauty’. 


**3. Is there a difference in purchases between a customer with a membership card and a normal customer?**

![alt text](<Total Purchases by Customer Type.png>)<br/><br/>
The total purchases made by members and normal customers differ significantly. Members account for a higher percentage of total purchases at 50.85%, compared to normal customers.


**4. What is the most popular payment method used by customers?**

![alt text](<Most Popular Payment Method.png>)<br/><br/>
The most popular payment method used by customers is Ewallet which is 34.5%.




### B. Supermarket Analysis-
**1. Which branch is the most profitable?**

![alt text](<Total Sales By Branch.png>)<br/><br/>
From this, we can see that Branch ‘C’ has the highest total gross income(34.24%). Therefore, Branch ‘C’ is the most profitable branch based on gross income.


**2. Which product category generates the highest revenue?**

![alt text](<Total Revenue by Product Line.png>)<br/><br/>
From above graph, we can see that product category ‘Food and beverages’ generates the highest revenue which is 17.38%.


**3. How many products are purchased by customers in each category?**

![alt text](<Product Sale by Quantity.png>)<br/><br/>
From above, we can see the total number of products purchased across all product categories. The highest purchased product is ‘Electronic accessories’ while the lowest purchased is ‘Health and Beauty’.


**4. Which product category should the supermarket prioritize?**

![alt text](<Most Popular Product by Quantity and Total Revenue.png>)<br/><br/>
From above, we can see that based on the total quantity sold, the graph shows that ‘Electronic accessories’ is the product category that the supermarket should prioritize, as it has the highest total quantity sold. Also, based on total gross income, ‘Food and beverages’ is the product category that the supermarket should prioritize.
This suggests that products in the ‘Electronic accessories’ and ‘Food and beverages’ category are the most popular among customers.


**5. Which city branch shows the greatest potential for expansion, and which products should be prioritized in that branch?**

![alt text](<Branch with highest Total Revenue and Top selling Products in that Branch.png>)<br/><br/>
From above graph, we can see that Branch ‘C’ shows the greatest potential for expansion, with the highest total gross income. In Branch ‘C’, the products that should be prioritized are ‘Food and beverages’ as this product category have the highest total number of sold quantity.

## Conclusion-
The key findings based on Customer analysis are as follows-
**1. Spending Patterns by Gender:**
* Females spend the most money on ‘Fashion Accessories’.
* Males spend the most money on ‘Health and Beauty’.
* On average, females make more purchases than males.

**2. Customer Type:**
* Members tend to make more total purchases compared to non-members.

**3. Payment Methods:**
* The most preferred payment method is E-wallet.
* Cash transactions are the second most preferred payment method.
* The dataset covers three cities/branches, with Naypyitaw's Branch ‘C’ being the most profitable. 

Key findings based on Supermarket analysis are as follows:
**1. Branch Profitability:**
* Branch ‘C’ in Naypyitaw is the most profitable, showing the highest total gross income and greatest potential for expansion.

**2. Product Categories:**
* 'Food and Beverages' has the highest total sold quantities on average.
* 'Electronic Accessories' is the highest purchased product category.
* 'Health and Beauty' is the lowest purchased product category.

**3. Customer Preferences:**
* 'Electronic Accessories' and 'Food and Beverages' are the most popular categories among customers, with the highest quantity sold and highest total revenue, respectively.




## Recommendation-
To maximize sales and customer satisfaction, the supermarket should:
* Increase the stock and marketing for ‘Fashion Accessories’ to match the buying habits of female customers.
* Enhance promotions and stock for ‘Health and Beauty’ products to attract male customers.
* Implement loyalty programs or special offers for members to encourage even more purchases.
* Make sure E-wallet transactions are smooth and keep accepting cash to meet customer preferences.
* The supermarket should prioritize 'Electronic Accessories' and 'Food and Beverages' categories due to their popularity and high sales performance.















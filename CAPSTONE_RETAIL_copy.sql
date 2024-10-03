CREATE TABLE IF NOT EXISTS Customer (
CustomerID VARCHAR(255) PRIMARY KEY NOT NUll,
Birth_Year VARCHAR(10) NOT NUll,
Age INT NOT NULL,
Education VARCHAR(100) NOT NUll, 
Marital_Status VARCHAR(100) NOT NULL,
Income INT NULL, 
Kids_Home INT NOT NULL,
Teens_Home INT NOT NULL,
Join_Date DATE NOT NULL,
Recency INT NOT NULL 
);

DELETE from Marketing 

SELECT *
from Marketing m 


DELETE FROM Retail 

SELECT *
from Retail r 


CREATE TABLE IF NOT EXISTS Retail (
RowID VARCHAR(255) PRIMARY KEY,
CustomerID VARCHAR(255) NOT NULL,
Mnt_Wines INT NOT NULL, 
Mnt_Fruits INT NOT NULL,
Mnt_Meat_products INT NOT NULL,	
Mnt_Fish_products INT NOT NULL,	
Mnt_Sweet_products INT NOT NULL,	
Mnt_Gold_products INT NOT NULL,	
Num_Deals_purchases INT NOT NULL,
Num_Web_purchases INT NOT NULL,	
Num_Catalog_purchases INT NOT NULL,	
Num_Store_purchases INT NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);



CREATE TABLE IF NOT EXISTS Marketing (
RowID VARCHAR(255) PRIMARY KEY,
CustomerID VARCHAR(255) NOT NULL,
Num_Web_Visits_Month	 INT NOT NULL,
Accepted_Cmp1 INT NOT NULL,	
Accepted_Cmp2 INT NOT NULL,	
Accepted_Cmp3 INT NOT NULL,	
Accepted_Cmp4 INT NOT NULL,	
Accepted_Cmp5 INT NOT NULL,	
Complain INTNOT NULL,	
Z_Cost_Contact INT NOT NULL,	
Z_Revenue INT NOT NULL,	
Response INT NOT NULL,
FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);


UPDATE Customer 
set Income = NULL 
WHERE Income = ''


--Calculate the total number of customer encounters in the marketing campaign dataset

SELECT Sum(Accepted_Cmp1 + Accepted_Cmp2 + Accepted_Cmp3 + Accepted_Cmp4 + Accepted_Cmp5 + Response) as Total_customers_accepted
from Marketing m ;


--Identify the top 10 most purchased products in the dataset, such as Wines, Meat Products, etc.

SELECT 
'Mnt_Wines' as Product_Categories,
SUM(Mnt_Wines) as Total_Amt_spent
from Retail r 
union all
SELECT 
'Mnt_Fruits' as Product_Categories,
SUM(Mnt_Fruits) as Total_Amt_spent
from Retail r 
union all
SELECT 
'Mnt_Meat_products' as Product_Categories,
SUM(Mnt_Meat_products) as Total_Amt_spent
from Retail r 
union all
SELECT 
'Mnt_Fish_products' as Product_Categories,
SUM(Mnt_Fish_products) as Total_Amt_spent
from Retail r 
union all
SELECT 
'Mnt_Sweet_products' as Product_Categories,
SUM(Mnt_Sweet_products) as Total_Amt_spent
from Retail r 
union all
SELECT 
'Mnt_Gold_products' as Product_Categories,
SUM(Mnt_Gold_products) as Total_Amt_spent
from Retail r 
order by Total_Amt_spent DESC ;



--Tina says its OK to only do the top 3 
-- ANSWER:
--1. Wine
--2. Meat
--3. Gold


--Find the count of response values

SELECT 
COUNT(Response)
from Marketing m 
;


--Determine the distribution of customers based on their education level and marital status

SELECT 
    Education ,
    Marital_Status,
    COUNT(*) AS customer_count
FROM Customer 
GROUP BY 
  Education ,
    Marital_Status
ORDER BY 
    Education ,
    Marital_Status;


--Identify the average income of customers who participated in the marketing campaign

SELECT DISTINCT 
'Accepted_Cmp1' as Accepted_Campaign,
ROUND(AVG(Income) over (partition by Accepted_Cmp1)) as Avg_Income
from Customer c 
inner join Marketing m on m.CustomerID = c.CustomerID 
WHERE m.Accepted_Cmp1 = 1
union ALL 
SELECT DISTINCT 
'Accepted_Cmp2' as Accepted_Campaign,
ROUND(AVG(Income) over (partition by Accepted_Cmp2)) as Avg_Income
from Customer c 
inner join Marketing m on m.CustomerID = c.CustomerID 
WHERE m.Accepted_Cmp2 = 1
union ALL 
SELECT DISTINCT 
'Accepted_Cmp3' as Accepted_Campaign,
ROUND(AVG(Income) over (partition by Accepted_Cmp3)) as Avg_Income
from Customer c 
inner join Marketing m on m.CustomerID = c.CustomerID 
WHERE m.Accepted_Cmp3 = 1
union ALL 
SELECT DISTINCT 
'Accepted_Cmp4' as Accepted_Campaign,
ROUND(AVG(Income) over (partition by Accepted_Cmp4)) as Avg_Income
from Customer c 
inner join Marketing m on m.CustomerID = c.CustomerID 
WHERE m.Accepted_Cmp4 = 1
union ALL 
SELECT DISTINCT 
'Accepted_Cmp5' as Accepted_Campaign,
Round(AVG(Income) over (partition by Accepted_Cmp5)) as Avg_Income
from Customer c 
inner join Marketing m on m.CustomerID = c.CustomerID 
WHERE m.Accepted_Cmp5 = 1
union ALL 
SELECT DISTINCT 
'Response' as Accepted_Campaign,
Round(AVG(Income) over (partition by Response)) as Avg_Income
from Customer c 
inner join Marketing m on m.CustomerID = c.CustomerID 
WHERE m.Response = 1
;

--total

SELECT Sum(Accepted_Cmp1 + Accepted_Cmp2 + Accepted_Cmp3 + Accepted_Cmp4 + Accepted_Cmp5 + Response) as Total_customers_accepted,
AVG(Income) over (PARTITION by Income) as Total_avg_income 
from Marketing m 
inner join Customer c ON c.CustomerID = m.CustomerID 
;


--Calculate the total number of promotions accepted by customers in each campaign


SELECT DISTINCT 
'Accepted_Cmp1' as Accepted_Campaign,
ROUND(SUM(Accepted_Cmp1) over (partition by Accepted_Cmp1)) as total_promotions_accepted
from Marketing 
WHERE Accepted_Cmp1 = 1
union all 
SELECT DISTINCT 
'Accepted_Cmp2' as Accepted_Campaign,
ROUND(SUM(Accepted_Cmp2) over (partition by Accepted_Cmp2)) as total_promotions_accepted
from Marketing 
WHERE Accepted_Cmp2 = 1
union all
SELECT DISTINCT 
'Accepted_Cmp3' as Accepted_Campaign,
ROUND(SUM(Accepted_Cmp3) over (partition by Accepted_Cmp3)) as total_promotions_accepted
from Marketing 
WHERE Accepted_Cmp3 = 1
union all
SELECT DISTINCT 
'Accepted_Cmp4' as Accepted_Campaign,
ROUND(SUM(Accepted_Cmp4) over (partition by Accepted_Cmp4)) as total_promotions_accepted
from Marketing 
WHERE Accepted_Cmp4 = 1
union all
SELECT DISTINCT 
'Accepted_Cmp5' as Accepted_Campaign,
ROUND(SUM(Accepted_Cmp5) over (partition by Accepted_Cmp5)) as total_promotions_accepted
from Marketing 
WHERE Accepted_Cmp5 = 1
union all
SELECT DISTINCT 
'Response' as Accepted_Campaign,
ROUND(SUM(Response) over (partition by Response)) as total_promotions_accepted
from Marketing 
WHERE Response = 1


--Identify the distribution of customers' responses to the last campaign

SELECT 
SUM(Response)
from Marketing m 
where Response = "1"
;

--Calculate the average number of children and teenagers in customers' households

SELECT 
AVG(Kids_Home + Teens_Home) as Avg_Minors_in_Home
from Customer c ;


--Create an Age column by subtracting year_birth from the current year 


SELECT 
    Birth_Year,
    strftime('%Y', 'now') - Birth_Year AS Current_age
FROM 
    Customer c 


--Create Age_group columns based on the below condition:

 Select c.*,
  CASE WHEN (strftime('%Y', 'now') - Birth_Year) between 18 and 25 then '18-25'
  when (strftime('%Y', 'now') - Birth_Year) between 26 and 35 Then '26-35'
  when (strftime('%Y', 'now') - Birth_Year) between 36 and 45 Then '36-45'
  When (strftime('%Y', 'now') - Birth_Year) between 46 and 55 Then '46-55'
  Else '56+'
  End as Age_Group_current_age
  From Customer c 
  
  

--Determine the average number of visits per month for customers in each age group

 with CTE as ( Select c.*,
  CASE WHEN (strftime('%Y', 'now') - Birth_Year) between 18 and 25 then '18-25'
  when (strftime('%Y', 'now') - Birth_Year) between 26 and 35 Then '26-35'
  when (strftime('%Y', 'now') - Birth_Year) between 36 and 45 Then '36-45'
  When (strftime('%Y', 'now') - Birth_Year) between 46 and 55 Then '46-55'
  Else '56+'
  End as Age_Group_current_age
  From Customer c )
SELECT 
Age_group_current_age,
  AVG(m.Num_Web_Visits_Month) AS Avg_Monthly_Web_Visits
FROM 
    CTE c
INNER JOIN Marketing m ON m.CustomerID = c.CustomerID
group by Age_Group_current_age ;




-- number of unique customers who accepted a campaign -- 609

SELECT *
from Marketing m 
where m.Accepted_Cmp1 = 1 OR m.Accepted_Cmp2 = 1 OR m.Accepted_Cmp3 = 1 or m.Accepted_Cmp4 = 1 or m.Accepted_Cmp5 = 1 or Response = 1
group by 
CustomerID ;



select 
income
from Customer c 







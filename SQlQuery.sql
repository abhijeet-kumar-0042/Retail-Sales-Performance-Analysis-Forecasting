select * from SAMPLE_SUPERSTORE;

----1.Total Sales by Region----

select Region,
sum(sales) as Total_Sales 
from sample_superstore 
group by Region 
order by Total_Sales desc;

----2. Total Profit by Categories----

select Category,sum(Profit) as Total_Profit 
from sample_superstore 
group by Category 
order by Total_Profit desc;

----4. Product Performance----

SELECT Product_Name, 
SUM(Sales) AS Sales, 
SUM(Profit) AS Profit
FROM sample_superstore
GROUP BY Product_Name
ORDER BY Sales DESC;

----5.Top 5 Profitable Product----

select top 5 Product_Name,
sum(Profit) as Total_Profit 
from sample_superstore 
group by Product_Name 
order by Total_Profit desc;

----6. Top 5 Product Sold----

select top 5 Product_Name,
sum(quantity) as Total_Quantity_Sold 
from sample_superstore
group by Product_Name 
Order by Total_Quantity_Sold desc;

----7. Top 5 Profitable Sub-Categories----

select top 5 sub_category,
sum(profit) as Total_Profit 
from sample_superstore
group by Sub_category 
order by Total_profit desc;

----8. Top 5 Sub Categoery sold----

select top 5 sub_category,
sum(quantity) as Total_Quantity 
from sample_superstore
group by Sub_category 
order by Total_Quantity desc;

----9. Total sales by State----

select state, 
sum(sales) as Total_Sales 
from sample_superstore
group by state 
order by Total_Sales desc;

----10. Total Sales by Year----

select year(order_date) as order_year,
sum(sales) as Total_Sales 
from sample_superstore
group by year(order_date) 
order by order_year;

---11.Monthly Sales Trend----

select format(min(order_date),'MMM-yyyy') as Order_Month_Year,
sum(sales) as Total_Sales 
from sample_superstore
group by year(order_date),month(order_date) 
order by year(order_date),month(order_date);

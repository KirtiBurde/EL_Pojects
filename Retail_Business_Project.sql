use exel;
select * from retaildata;

#Checking if there is any null values
select * from retaildata where Order_ID is null or Product_Category is null;

#Calculating Profit Margins
select Product_Category, Product_Sub_Category, sum((Unit_Price - Cost_Price) * Quantity) as Total_Profit,
sum(Unit_Price * Quantity) as Total_Sales, round(sum((Unit_Price - Cost_Price) * Quantity) / sum(Unit_Price * Quantity) *100, 2) as Profit_Margin_Percent 
from retaildata group by Product_Category, Product_Sub_Category order by Profit_Margin_Percent desc;

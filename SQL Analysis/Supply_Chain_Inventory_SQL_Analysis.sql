-- ============================================
-- SUPPLY CHAIN & INVENTORY ANALYSIS
-- ============================================



--KPI Summary
select sum(Units_Sold) as Total_Units_Sold,
       sum(Revenue) as Total_Revenue,
       sum(Profit) as Total_Profit,
       avg(Shipping_Time_Days) as Avg_Shipping_Time
from [supply_chain_inventory_dataset_$];

--Inventory Status
select [Inventory Status], count(*) as Product_Count 
from [supply_chain_inventory_dataset_$] group by [Inventory Status];

--Top 10 Selling Products
select Top 10 Product_Name, 
       sum(Units_Sold) as Total_Units_Sold 
from [supply_chain_inventory_dataset_$] 
group by Product_Name order by Total_Units_Sold desc;

--Top 10 Profitable Products
select Top 10 Product_Name, 
       sum(Profit) as Total_Profit 
from [supply_chain_inventory_dataset_$] 
group by Product_Name order by Total_Profit desc;

--Category Performance
select Category, 
       sum(Revenue) as Total_Revenue,  
       sum(Profit) as Total_Profit
from [supply_chain_inventory_dataset_$] 
group by Category order by Total_Revenue desc;

--Supplier Performance
select Supplier_Name, 
       avg(Shipping_Time_Days) as Avg_Shipping_Time 
from [supply_chain_inventory_dataset_$] 
group by Supplier_Name order by Avg_Shipping_Time desc;

--Warehouse Performance
select Warehouse_Location, 
       sum(Revenue) as Total_Revenue,
       sum(Profit) as Total_Profit
from [supply_chain_inventory_dataset_$]
group by Warehouse_Location order by Total_Revenue desc;

--Delivery Delay Analysis
select Shipping_Time_Days, count(*) as Total_Orders 
from [supply_chain_inventory_dataset_$] 
group by Shipping_Time_Days order by Shipping_Time_Days;

--Top Revenue Generating Suppliers
select Supplier_Name, 
       sum(Revenue) as Total_Revenue
from [supply_chain_inventory_dataset_$]
group by Supplier_Name order by Total_Revenue desc;

--Most Profitable Suppliers
select Supplier_Name, 
       sum(Profit) as Total_Profit 
from [supply_chain_inventory_dataset_$]
group by Supplier_Name order by Total_Profit desc;

--Warehouse-wise Inventory Status
select Warehouse_Location,
       [Inventory Status], count(*) as Product_Count 
from [supply_chain_inventory_dataset_$]
group by Warehouse_Location, [Inventory Status] order by Warehouse_Location;

--Category-wise Units Sold
select Category, 
       sum(Units_Sold) as Total_Units_Sold 
from [supply_chain_inventory_dataset_$]
group by Category order by Total_Units_Sold desc;
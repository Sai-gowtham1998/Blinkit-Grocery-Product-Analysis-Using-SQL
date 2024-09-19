create database Project;

show databases;

use Project;

show tables;

#1
select * from blinkit;

#2
select count(Item_Identifier) from blinkit;

#3
select max(Item_Weight) from blinkit;

#4
select max(Item_MRP) as High_Price from blinkit;

#5.
select min(Item_Weight) from blinkit;

#6
select min(Item_MRP) as Low_Price from blinkit;

#7
select avg(Item_Weight) from blinkit;

#8
select count(Item_Fat_Content) from blinkit
where Item_Fat_Content ="Low Fat";

#9
select count(Item_Fat_Content) from blinkit 
where Item_Fat_Content ="Regular";

#10
select Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP
from blinkit 
where Item_MRP>200;

#11
select max(Item_MRP) from blinkit 
where Item_Fat_Content = "Low Fat";

#12
select min(Item_MRP) from blinkit 
where Item_Fat_Content = "Low Fat";

#13
select * from blinkit where Item_MRP 
between 50 and 100;

#14
select distinct(Item_Fat_Content) from blinkit;

#15
select distinct(Item_Type) from blinkit;

#16
select * from blinkit order by Item_MRP desc;

#17
select * from blinkit order by Item_Outlet_Sales asc;

#18
select * from blinkit order by Item_Type asc;

#19
select * from blinkit  
where Item_Type = "dairy" and Item_Type = "Meat";

#20
select distinct (trim(Outlet_Size)) from blinkit;

#21
select distinct (Outlet_Location_Type) from blinkit;

#22
select distinct (Outlet_Type) from blinkit;

#23
select Item_type, count(*) as item_Count from blinkit
group by Item_type order by item_Count desc;

#24
select Outlet_Size, count(*) as Outlet_Count from blinkit
group by Outlet_Size order by Outlet_Count asc;

#25
select Outlet_Type, count(*) as Count_Outlet_Type from blinkit
group by Outlet_Type order by Count_Outlet_Type desc;

#26
select Outlet_Location_Type, count(*) as Num_Outlet_Location_Type 
from blinkit
group by Outlet_Location_Type order by Num_Outlet_Location_Type;

#27
select Item_Type, max(Item_MRP) as Price 
from blinkit
group by Item_Type;

#28
select Item_Type, min(Item_MRP) as Price from blinkit
group by Item_Type;

#29
select Outlet_Establishment_Year, min(Item_MRP) as Min_Price
from blinkit
group by Outlet_Establishment_Year order by Min_Price desc;

#30
select Outlet_size, avg(Item_MRP) as Avg_Price
from blinkit
group by Outlet_size order by Avg_Price desc;

#31
select Outlet_Type, max(Item_MRP) as Price
from blinkit
group by Outlet_Type;

#32
select  Item_Type, max(Item_Weight) as Max_Weight 
from blinkit
group by Item_Type;

#33
select  Outlet_Establishment_Year, max(Item_Weight) as Max_Weight
from blinkit
group by  Outlet_Establishment_Year;

#34
select Outlet_type, min(Item_Weight) as Min_Weight
from blinkit
group by Outlet_type;

#35
select  Outlet_Location_Type, avg(Item_Weight) as Avg_Weight 
from blinkit
group by Outlet_Location_Type order by Avg_Weight desc;

#36
select Item_type, max(Item_Outlet_Sales) Max_Sales
from blinkit
group by Item_type;

#37
select Item_type, min(Item_Outlet_Sales) Min_Sales 
from blinkit
group by Item_type;

#38
select Outlet_Establishment_Year, min(Item_Outlet_Sales) as Min_Outlet_Sales
from blinkit
group by Outlet_Establishment_Year;

#39
select Outlet_Establishment_Year, max(Item_Outlet_Sales) as Max_Outlet_Sales
from blinkit
group by Outlet_Establishment_Year order by Max_Outlet_Sales desc;

#40
select  Outlet_Size, avg(Item_Outlet_Sales) as Avg_Outlet_Sales
from blinkit
group by Outlet_Size order by Avg_Outlet_Sales desc;

#41
select Outlet_type, avg(Item_Outlet_Sales) as Avg_Outlet_Sales
from blinkit
group by Outlet_type;

#42
select Outlet_type, Max(Item_Outlet_Sales) as Max_Outlet_Sales
from blinkit
group by Outlet_type;

#43
select Item_type, sum(Item_Outlet_Sales) as Total_Outlet_Sales 
from blinkit
group by Item_type;

#44
select Item_Fat_Content, sum(Item_Outlet_Sales) as Total_Sales 
from blinkit
group by Item_Fat_Content;

#45
select Item_Type, Max(Item_Visibility) as Max_Visibility 
from blinkit
group by Item_type;

#46
select Item_Type, Min(Item_Visibility) as Min_Visibility 
from blinkit
group by Item_type;

#47
select Item_Type, sum(Item_Outlet_Sales) as Total_Sales 
from blinkit
where Outlet_Location_Type = "Tier 1" group by Item_Type;

#48
select Item_Type,sum(Item_Outlet_Sales) as Total_Sales 
from blinkit
where (Item_Fat_Content = "Low Fat") or (Item_Fat_Content = "LF")
group by Item_Type;











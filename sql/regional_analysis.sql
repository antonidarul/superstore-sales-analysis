
-- Which region generates the highest revenue?
select 
	region,
	sum(sales) as revenue
from sales_data
group by region
order by revenue desc
limit 1;
-- Which region generates the lowest revenue?
select 
	region,
	sum(sales) as revenue
from sales_data
group by region
order by revenue asc
limit 1;

-- Which region generates the highest profit?
select
	region,
	sum(profit) as profit
from sales_data 
group by region
order by profit desc
limit 1;
-- Which region generates the lowest profit?
select
	region,
	sum(profit) as profit
from sales_data 
group by region
order by profit asc
limit 1;

-- How do revenue and profit compare across regions?
-- Answered using the Regional Analysis dashboard.
-- This comparison is based on the visual interpretation
-- of revenue and profit across all regions.
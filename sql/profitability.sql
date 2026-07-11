-- Which product generates the highest profit?
select 
	product_name,
	sum(profit) as profit 
from sales_data
group by product_name
order by profit desc
limit 1;


-- Which products generate a loss?
select 
	product_name,
	sum(profit) as profit 
from sales_data
group by product_name
order by profit asc;


-- Which category has the lowest profit?
select
	category,
	sum(profit) as profit 
from sales_data
group by category
order by profit asc
limit 1;
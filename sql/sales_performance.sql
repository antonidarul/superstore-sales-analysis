-- What is the revenue trend over time? 
select
	date_trunc('month', order_date) as month,
	sum(sales) as revenue
from sales_data
group by month 
order by month;

-- Is revenue increasing or decreasing over time?
-- Answered using the dashboard

-- Which month generates the highest revenue?
select 
	date_trunc('month', order_date) as month,
	sum(sales) as revenue 
from sales_data
group by month 
order by revenue desc
limit 1;
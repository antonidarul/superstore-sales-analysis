
-- Who is the highest-value customer?
select
	customer_name,
	sum(sales) as total_sales
from sales_data
group by customer_name
order by total_sales desc
limit 1;

-- Which customer segment contributes the most to overall profitability?
select
	segment,
	sum(profit) as segment_cust
from sales_data
group by segment
order by segment_cust desc
limit 1;

-- Does the Corporate segment outperform the Consumer segment in terms of profit?
-- This question will be answered on the dashboard

-- Which products are the best-selling?
select 
	product_name,
	count(*) as best_selling
from sales_data
group by product_name
order by best_selling desc


-- Which products generate losses most frequently?
select
	product_name,
	count(*) as loss_trans
from sales_data
where profit < 0
group by product_name
order by loss_trans desc


-- Which sub-categories require further business evaluation?
SELECT
    sub_category,
    SUM(sales) AS revenue,
    SUM(profit) AS profit,
    COUNT(order_id) AS total_orders
FROM sales_data
GROUP BY sub_category
ORDER BY profit ASC;
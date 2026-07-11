-- Apakah diskon tinggi menyebabkan profit turun?
-- Answered using dashboard


-- Berapa rata-rata diskon tiap kategori?

select
	category,
	avg(discount)
from sales_data
group by category
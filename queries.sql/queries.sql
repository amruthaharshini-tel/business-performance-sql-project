--- Customer Growth Over Time

SELECT YEAR(subscription_date) AS year,

COUNT(subscription_date) AS total_customers

FROM dbo.customers

GROUP BY YEAR(subscription_date)

ORDER BY year;


--- Customer Distribution by Country

SELECT country,

COUNT (country) AS total_customers

FROM dbo.customers

GROUP BY country

ORDER BY total_customers DESC;

--- Lead Source Performance Analysis

SELECT source, COUNT (source) AS source_efficiency

FROM dbo.leads

GROUP BY source

ORDER BY source_efficiency DESC;


--- Lead Conversion Funnel

SELECT deal_stage, COUNT(deal_stage) AS lead_conversion

FROM dbo.leads

GROUP BY deal_stage

ORDER BY lead_conversion DESC;


--- Top High-Value Products

SELECT TOP 10 name,Category, price

FROM dbo.products

ORDER BY PRICE DESC;


--- Low Stock Products Alert

SELECT Name, stock

FROM dbo.products

WHERE stock < 100

ORDER BY stock



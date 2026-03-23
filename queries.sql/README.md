1. Customer Growth Over Time

#Explanation:

This query tracks the number of customers acquired each year, helping identify growth trends over time.

###Query:

SELECT YEAR(subscription_date) AS year,

COUNT(subscription_date) AS total_customers

FROM dbo.customers

GROUP BY YEAR(subscription_date)

ORDER BY year;


2. Customer Distribution by Country

##Explanation:

This query shows how customers are distributed across different countries, helping identify key markets.

###Query:

SELECT country,

COUNT (country) AS total_customers

FROM dbo.customers

GROUP BY country

ORDER BY total_customers DESC;

3. Lead Source Performance Analysis

##Explanation:

This query analyzes the number of leads generated from each source. It helps identify which channels contribute the most leads.

###Query:

SELECT source, COUNT (source) AS source_efficiency

FROM dbo.leads

GROUP BY source

ORDER BY source_efficiency DESC;


4. Lead Conversion Funnel

##Explanation:

This query groups leads by deal stage to visualize the sales funnel and understand conversion distribution.

###Query:

SELECT deal_stage, COUNT(deal_stage) AS lead_conversion

FROM dbo.leads

GROUP BY deal_stage

ORDER BY lead_conversion DESC;


5. Top High-Value Products

##Explanation:

This query retrieves the highest-priced products, helping identify premium offerings.

###Query:

SELECT TOP 10 name,Category, price

FROM dbo.products

ORDER BY PRICE DESC;


6. Low Stock Products Alert

##Explanation:

This query identifies products with low inventory, which helps in restocking decisions.

###Query:

SELECT Name, stock

FROM dbo.products

WHERE stock < 100

ORDER BY stock


7. Average Price by Product Category
   
##Explanation:

This query calculates the average price for each product category, useful for pricing analysis.

###Query:

SELECT category, AVG (price) AS average_price

FROM dbo.products

GROUP BY Category

ORDER BY average_price DESC;


8. Lead Source vs Deal Stage Analysis

#Explanation:

This query combines lead source and deal stage to evaluate which channels generate high-quality leads.

##Query:

SELECT Source, Deal_Stage,

COUNT (*) AS total

FROM dbo.leads

GROUP BY Source, Deal_Stage

ORDER BY total DESC;







SELECT 
-- from stg_order
s.productname,
s.productid,
SUM(s.orderprofit) AS PROFITSUM
FROM {{ ref('stg_orders') }} as s
GROUP BY s.productid,s.productname
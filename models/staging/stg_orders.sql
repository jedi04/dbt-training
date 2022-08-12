SELECT 
--from raw orders
o.oderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice - o.ordercostprice as orderprofit,
o.ordercostprice,
o.ordersellingprice,
-- from raw customer
c.customername,
c.segment,
c.country,
-- from raw product
p.productid,
p.category,
p.productname,
p.subcategory
from {{ ref('raw_orders') }} as o
left join {{ref('raw_customer')}} as c 
ON o.customerid = c.customerid
left join {{ref('raw_product')}} as p
ON o.productid = p.productid
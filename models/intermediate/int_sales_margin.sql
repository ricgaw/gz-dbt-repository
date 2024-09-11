select
    products_id,
    date_date,
    orders_id,
    revenue,
    quantity,
    purchase_price,
    round(s.quantity*p.purchase_price,2) as purchase_cost,
    round(s.revenue - s.quantity*p.purchase_price, 2) as margin
from {{ref("stg_raw__sales")}} s
left join {{ref("stg_raw_product")}} p
    using (products_id)
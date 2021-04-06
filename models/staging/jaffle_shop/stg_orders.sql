select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from analytics_ds_dev.bfrison_jaffle_shop.orders

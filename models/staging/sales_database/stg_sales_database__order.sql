select
    order_id_b,
    user_name as user_id_b,
    order_status_b,
    DATETIME(order_date, "Europe/Paris") AS order_created_at_b,
    DATETIME(order_approved_date, "Europe/Paris") AS order_approved_at_b,
    DATETIME(pickup_date, "Europe/Paris") AS picked_up_at_b,
    DATETIME(delivered_date, "Europe/Paris") AS delivered_at_b,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS estimated_time_delivery_b
from {{ source('sales_database', 'order') }}
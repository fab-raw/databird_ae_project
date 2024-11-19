select
    order_id_y,
    user_name as user_id_a,
    order_status_a,
    DATETIME(order_date, "Europe/Paris") AS order_created_at_a,
    DATETIME(order_approved_date, "Europe/Paris") AS order_approved_at_a,
    DATETIME(pickup_date, "Europe/Paris") AS picked_up_at_a,
    DATETIME(delivered_date, "Europe/Paris") AS delivered_at_a,
    DATETIME(estimated_time_delivery, "Europe/Paris") AS estimated_time_delivery_a
from {{ source('sales_database', 'order') }}
-- ====================================================
-- SELECT: Просмотр деталей конкретного заказа
-- ====================================================

-- Параметр: order_id
WITH selected_order AS (
    SELECT o.order_id,
           o.customer_name,
           o.telegram_contact,
           o.phone,
           os.name AS status_name,
           o.created_at,
           o.closed_at,
           o.desired_date,
           o.is_delivery,
           o.comments,
           o.is_closed,
           d.address AS delivery_address,
           d.delivery_date,
           d.delivery_time_start,
           d.delivery_time_end,
           d.courier_name,
           d.courier_contact
    FROM yogood_tst.orders o
    LEFT JOIN yogood_tst.order_statuses os ON o.status_id = os.status_id
    LEFT JOIN yogood_tst.deliveries d ON o.delivery_id = d.delivery_id
    WHERE o.order_id = 1 -- Заменить на нужный заказ
)
SELECT so.order_id,
       so.customer_name,
       so.telegram_contact,
       so.phone,
       so.status_name,
       p.name AS product_name,
       pt.name AS product_type,
       f.name AS filler,
       v.volume_ml,
       oi.weight_g,
       oi.quantity,
       so.created_at,
       so.closed_at,
       so.desired_date,
       so.comments AS order_comments,
       so.is_closed,
       so.is_delivery,
       so.delivery_address,
       so.courier_name,
       so.courier_contact,
       so.delivery_date,
       so.delivery_time_start,
       so.delivery_time_end
FROM selected_order so
LEFT JOIN yogood_tst.order_items oi ON so.order_id = oi.order_id
LEFT JOIN yogood_tst.products p ON oi.product_id = p.product_id
LEFT JOIN yogood_tst.product_types pt ON oi.product_type_id = pt.type_id
LEFT JOIN yogood_tst.fillers f ON oi.filler_id = f.filler_id
LEFT JOIN yogood_tst.volumes v ON oi.volume_id = v.volume_id
ORDER BY oi.order_item_id;
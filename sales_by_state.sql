SELECT
    c.customer_state,
    ROUND(SUM(p.payment_value), 2) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY total_sales DESC;

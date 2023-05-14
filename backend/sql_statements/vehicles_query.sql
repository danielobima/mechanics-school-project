SELECT v.*, c.customer_name, c.customer_phone
FROM vehicles v
LEFT JOIN customers c ON v.customer_id = c.customer_id
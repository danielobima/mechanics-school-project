SELECT vehicles.*, customer.customer_name, customer.customer_phone
FROM vehicles
JOIN customer ON vehicles.customer_id = customer.customer_id;

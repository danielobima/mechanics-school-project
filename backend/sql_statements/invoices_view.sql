CREATE VIEW invoices_view AS
SELECT j.job_id, c.customer_name, v.make, v.model, v.year, 
 j.start_time, j.end_time, j.is_paid, j.job_description,
 SUM(jp.quantity_used * sp.cost_per_unit) as total_cost
FROM jobs j
JOIN job_parts jp ON j.job_id = jp.job_id
JOIN vehicles v ON j.vehicle_id = v.vehicle_id
JOIN customers c ON v.customer_id = c.customer_id
JOIN spare_parts sp ON jp.part_id = sp.part_id
WHERE j.job_status = 'completed'
GROUP BY j.job_id, c.customer_name, v.make, v.model, v.year, 
 j.start_time, j.end_time, j.is_paid, j.job_description
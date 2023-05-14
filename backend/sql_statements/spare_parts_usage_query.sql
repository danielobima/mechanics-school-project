SELECT sp.part_name, SUM(jp.quantity_used) AS total_quantity_used
FROM job_parts jp
INNER JOIN jobs j ON jp.job_id = j.job_id
INNER JOIN spare_parts sp ON jp.part_id = sp.part_id
GROUP BY sp.part_name
ORDER BY total_quantity_used DESC
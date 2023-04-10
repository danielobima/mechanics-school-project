SELECT s.part_name, s.cost_per_unit, s.quantity_in_stock 
FROM spare_parts s
INNER JOIN job_parts j ON j.part_id = s.part_id
WHERE j.job_id = <<job_id>>;
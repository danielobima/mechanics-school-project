SELECT part_name, SUM(quantity_used) AS total_quantity_used
FROM job_parts
INNER JOIN jobs ON job_parts.job_id = jobs.job_id
GROUP BY job_parts.part_id
ORDER BY total_quantity_used DESC;

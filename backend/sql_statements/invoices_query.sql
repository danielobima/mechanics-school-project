SELECT
    c.customer_name,
    v.make,
    v.model,
    v.year,
    j.start_time,
    j.end_time,
    m.mechanic_name,
    SUM(jp.cost) AS total_cost
FROM
    customers c
    JOIN vehicles v ON c.customer_id = v.customer_id
    JOIN jobs j ON v.vehicle_id = j.vehicle_id
    JOIN mechanics m ON j.mechanic_id = m.mechanic_id
    JOIN job_parts jp ON j.job_id = jp.job_id
WHERE
    j.status = 'completed'
GROUP BY
    c.customer_name,
    v.make,
    v.model,
    v.year,
    j.start_time,
    j.end_time,
    m.mechanic_name;

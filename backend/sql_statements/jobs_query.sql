SELECT  j.job_id j.vehicle_id c.customer_name c.customer_phone m.mechanic_name 
        w.workshop_name j.job_description j.start_time j.end_time j.status 
        j.is_paid
FROM jobs j 
INNER JOIN vehicles v ON j.vehicle_id = v.vehicle_id
INNER JOIN customers c ON c.customer_id = v.customer_id
INNER JOIN mechanics m ON m.mechanic_id = j.mechanic_id
INNER JOIN workshops w ON w.workshop_id = j.workshop_id
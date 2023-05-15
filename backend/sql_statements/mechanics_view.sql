CREATE VIEW mechanics_view AS
SELECT m.mechanic_id, m.mechanic_name, w.workshop_name
FROM mechanics m
LEFT JOIN workshops w ON m.workshop_id = w.workshop_id
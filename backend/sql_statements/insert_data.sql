INSERT INTO workshops (workshop_name, location) VALUES ('Workshop A', 'Location A');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop B', 'Location B');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop C', 'Location C');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop D', 'Location D');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop E', 'Location E');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop F', 'Location F');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop G', 'Location G');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop H', 'Location H');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop I', 'Location I');
INSERT INTO workshops (workshop_name, location) VALUES ('Workshop J', 'Location J');

INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('John Smith', 1);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Jane Doe', 2);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Bob Johnson', 1);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Sara Lee', 3);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Peter Parker', 4);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Clark Kent', 5);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Bruce Wayne', 6);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Tony Stark', 7);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Natasha Romanoff', 8);
INSERT INTO mechanics (mechanic_name, workshop_id) VALUES ('Steve Rogers', 9);

INSERT INTO customers (customer_name, customer_phone) VALUES ('Emily Chen', '555-1234');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Alex Wong', '555-5678');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Avery Davis', '555-9012');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Grace Kim', '555-3456');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Isaac Park', '555-7890');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Mila Patel', '555-2345');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Levi Nguyen', '555-6789');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Sofia Rodriguez', '555-0123');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Ethan Thompson', '555-4567');
INSERT INTO customers (customer_name, customer_phone) VALUES ('Olivia Johnson', '555-8901');

INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Oil filter', 50, 5.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Air filter', 75, 9.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Brake pads', 25, 39.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Spark plugs', 100, 3.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Battery', 20, 89.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Radiator', 10, 129.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Tire', 30, 99.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Alternator', 5, 189.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Water pump', 15, 149.99);
INSERT INTO spare_parts (part_name, quantity_in_stock, cost_per_unit) VALUES ('Fuel pump', 12, 79.99);

INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Toyota', 'Corolla', 2018, 1);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Honda', 'Civic', 2019, 2);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Ford', 'F-150', 2016, 3);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Chevrolet', 'Impala', 2015, 4);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Nissan', 'Altima', 2020, 5);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('BMW', 'X3', 2021, 6);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Audi', 'A4', 2017, 7);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Mercedes-Benz', 'C-Class', 2014, 8);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Jeep', 'Wrangler', 2013, 9);
INSERT INTO vehicles (make, model, year, customer_id) VALUES ('Tesla', 'Model S', 2022, 10);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (1, 1, 1, TO_TIMESTAMP('2023-04-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace spark plugs', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (2, 2, 1, TO_TIMESTAMP('2023-04-08 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace brake pads', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (3, 3, 1, TO_TIMESTAMP('2023-04-08 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'Engine diagnostic', 0);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (4, 4, 2, TO_TIMESTAMP('2023-04-08 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Oil change', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (5, 5, 2, TO_TIMESTAMP('2023-04-08 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace air filter', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (6, 6, 2, TO_TIMESTAMP('2023-04-08 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'Suspension repair', 0);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (7, 7, 3, TO_TIMESTAMP('2023-04-08 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace timing belt', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (8, 8, 3, TO_TIMESTAMP('2023-04-08 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Transmission flush', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (9, 9, 3, TO_TIMESTAMP('2023-04-08 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'Tire rotation', 0);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (10, 10, 4, TO_TIMESTAMP('2023-04-08 09:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace battery', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (1, 1, 4, TO_TIMESTAMP('2023-04-08 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace starter motor', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (2, 2, 4, TO_TIMESTAMP('2023-04-08 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'Brake line repair', 0);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (3, 3, 5, TO_TIMESTAMP('2023-04-08 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace water pump', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (4, 4, 5, TO_TIMESTAMP('2023-04-08 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-04-08 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'completed', 'Replace alternator', 1);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (5, 5, 5, TO_TIMESTAMP('2023-04-08 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'AC repair', 0);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (6, 6, 5, TO_TIMESTAMP('2023-04-08 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'AC repair', 0);

INSERT INTO jobs (vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES (7, 7, 5, TO_TIMESTAMP('2023-04-08 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 'in-progress', 'AC repair', 0);


INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (1, 1, 2, 50.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (2, 2, 1, 75.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (3, 1, 1, 50.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (4, 3, 3, 125.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (5, 4, 2, 150.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (6, 5, 1, 100.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (7, 2, 4, 300.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (8, 3, 2, 125.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (9, 1, 1, 50.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (10, 4, 3, 225.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (11, 2, 2, 150.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (12, 5, 1, 100.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (13, 3, 3, 125.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (14, 4, 2, 150.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (15, 1, 2, 50.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (16, 5, 1, 100.00);

INSERT INTO job_parts (job_id, part_id, quantity_used, cost) 
VALUES (17, 2, 3, 225.00);

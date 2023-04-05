
INSERT INTO workshops (workshop_id, workshop_name) VALUES 
(1, 'Workshop A'),
(2, 'Workshop B'),
(3, 'Workshop C'),
(4, 'Workshop D'),
(5, 'Workshop E');

INSERT INTO mechanics (mechanic_id, mechanic_name, workshop_id) VALUES 
(1, 'John Doe', 1),
(2, 'Jane Smith', 2),
(3, 'Bob Johnson', 3),
(4, 'Sara Lee', 1),
(5, 'David Kim', 2),
(6, 'Emily Lee', 3),
(7, 'James Chen', 4),
(8, 'Jessica Wang', 5),
(9, 'Alex Wong', 4),
(10, 'Sophie Liu', 5);

INSERT INTO customers (customer_id, customer_name) VALUES 
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Bob Johnson'),
(4, 'Sara Lee'),
(5, 'David Kim'),
(6, 'Emily Lee'),
(7, 'James Chen'),
(8, 'Jessica Wang'),
(9, 'Alex Wong'),
(10, 'Sophie Liu');

INSERT INTO spare_parts (part_id, part_name, quantity_in_stock, cost_per_unit) VALUES 
(1, 'Brake pads', 50, 19.99),
(2, 'Oil filter', 100, 7.99),
(3, 'Spark plugs', 200, 5.99),
(4, 'Air filter', 75, 12.99),
(5, 'Batteries', 30, 49.99),
(6, 'Tires', 20, 99.99),
(7, 'Radiator', 10, 149.99),
(8, 'Alternator', 15, 199.99),
(9, 'Starter', 10, 179.99),
(10, 'Shock absorbers', 25, 89.99);


INSERT INTO vehicles (vehicle_id, make, model, year, customer_id) VALUES 
(1, 'Toyota', 'Camry', 2018, 1),
(2, 'Honda', 'Civic', 2019, 2),
(3, 'Ford', 'Mustang', 2020, 3),
(4, 'Chevrolet', 'Silverado', 2017, 4),
(5, 'Nissan', 'Altima', 2021, 5),
(6, 'Tesla', 'Model S', 2022, 6),
(7, 'BMW', '3 Series', 2016, 7),
(8, 'Mercedes-Benz', 'C-Class', 2019, 8),
(9, 'Audi', 'A4', 2020, 9),
(10, 'Lexus', 'ES', 2017, 10);

INSERT INTO jobs (job_id, vehicle_id, mechanic_id, workshop_id, start_time, end_time, status) VALUES 
(1, 1, 1, 1, '2023-04-04 08:00:00', '2023-04-04 12:00:00', 'completed'),
(2, 2, 2, 2, '2023-04-04 09:00:00', '2023-04-04 11:00:00', 'completed'),
(3, 3, 3, 3, '2023-04-04 10:00:00', '2023-04-04 13:00:00', 'completed'),
(4, 4, 4, 4, '2023-04-04 11:00:00', NULL, 'in-progress'),
(5, 5, 5, 5, '2023-04-04 12:00:00', NULL, 'in-progress'),
(6, 6, 6, 6, '2023-04-04 13:00:00', NULL, 'in-progress'),
(7, 7, 7, 7, '2023-04-04 14:00:00', NULL, 'in-progress'),
(8, 8, 8, 8, '2023-04-04 15:00:00', NULL, 'in-progress'),
(9, 9, 9, 9, '2023-04-04 16:00:00', NULL, 'in-progress'),
(10, 10, 10, 10, '2023-04-04 17:00:00', NULL, 'in-progress'),
(11, 1, 2, 1, '2023-04-05 08:00:00', NULL, 'in-progress'),
(12, 2, 3, 2, '2023-04-05 09:00:00', NULL, 'in-progress'),
(13, 3, 4, 3, '2023-04-05 10:00:00', NULL, 'in-progress'),
(14, 4, 5, 4, '2023-04-05 11:00:00', NULL, 'in-progress'),
(15, 5, 6, 5, '2023-04-05 12:00:00', NULL, 'in-progress'),
(16, 6, 7, 6, '2023-04-05 13:00:00', NULL, 'in-progress'),
(17, 7, 8, 7, '2023-04-05 14:00:00', NULL, 'in-progress');

INSERT INTO job_parts (job_id, part_id, quantity_used, cost)
VALUES 
  (1, 1, 2, 100.00),
  (1, 2, 1, 50.00),
  (2, 3, 1, 75.00),
  (2, 4, 2, 200.00),
  (3, 5, 1, 150.00),
  (4, 2, 2, 100.00),
  (4, 4, 3, 300.00),
  (5, 6, 4, 200.00),
  (6, 5, 2, 150.00),
  (7, 2, 1, 50.00),
  (7, 6, 2, 100.00),
  (8, 1, 1, 50.00),
  (8, 3, 1, 75.00),
  (8, 4, 1, 100.00),
  (9, 6, 3, 150.00),
  (10, 2, 2, 100.00),
  (10, 5, 1, 75.00);

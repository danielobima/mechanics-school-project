INSERT INTO workshops (workshop_id, workshop_name, location)
VALUES 
  (1, 'Workshop A', 'Location A'),
  (2, 'Workshop B', 'Location B'),
  (3, 'Workshop C', 'Location C'),
  (4, 'Workshop D', 'Location D'),
  (5, 'Workshop E', 'Location E'),
  (6, 'Workshop F', 'Location F'),
  (7, 'Workshop G', 'Location G'),
  (8, 'Workshop H', 'Location H'),
  (9, 'Workshop I', 'Location I'),
  (10, 'Workshop J', 'Location J');

INSERT INTO mechanics (mechanic_id, mechanic_name, workshop_id)
VALUES 
  (1, 'John Smith', 1),
  (2, 'Jane Doe', 2),
  (3, 'Bob Johnson', 1),
  (4, 'Sara Lee', 3),
  (5, 'Peter Parker', 4),
  (6, 'Clark Kent', 5),
  (7, 'Bruce Wayne', 6),
  (8, 'Tony Stark', 7),
  (9, 'Natasha Romanoff', 8),
  (10, 'Steve Rogers', 9);

INSERT INTO customers (customer_id, customer_name, customer_phone)
VALUES 
  (1, 'John Smith', '555-1234'),
  (2, 'Jane Doe', '555-5678'),
  (3, 'Bob Johnson', '555-9012'),
  (4, 'Sara Lee', '555-3456'),
  (5, 'Peter Parker', '555-7890'),
  (6, 'Clark Kent', '555-2345'),
  (7, 'Bruce Wayne', '555-6789'),
  (8, 'Tony Stark', '555-0123'),
  (9, 'Natasha Romanoff', '555-4567'),
  (10, 'Steve Rogers', '555-8901');

INSERT INTO spare_parts (part_id, part_name, quantity_in_stock, cost_per_unit)
VALUES 
  (1, 'Oil filter', 50, 5.99),
  (2, 'Air filter', 75, 9.99),
  (3, 'Brake pads', 25, 39.99),
  (4, 'Spark plugs', 100, 3.99),
  (5, 'Battery', 20, 89.99),
  (6, 'Radiator', 10, 129.99),
  (7, 'Tire', 30, 99.99),
  (8, 'Alternator', 5, 189.99),
  (9, 'Water pump', 15, 149.99),
  (10, 'Fuel pump', 12, 79.99);

INSERT INTO vehicles (vehicle_id, make, model, year, customer_id)
VALUES
    (1, 'Toyota', 'Corolla', 2018, 1),
    (2, 'Honda', 'Civic', 2019, 2),
    (3, 'Ford', 'F-150', 2016, 3),
    (4, 'Chevrolet', 'Impala', 2015, 4),
    (5, 'Nissan', 'Altima', 2020, 5),
    (6, 'BMW', 'X3', 2021, 6),
    (7, 'Audi', 'A4', 2017, 7),
    (8, 'Mercedes-Benz', 'C-Class', 2014, 8),
    (9, 'Jeep', 'Wrangler', 2013, 9),
    (10, 'Tesla', 'Model S', 2022, 10);

INSERT INTO jobs (job_id, vehicle_id, mechanic_id, workshop_id, start_time, end_time, status, description, paid)
VALUES 
  (1, 1, 1, 1, '2023-04-08 10:00:00', '2023-04-08 12:00:00', 'completed', 'Replace spark plugs', true),
  (2, 2, 2, 1, '2023-04-08 11:00:00', '2023-04-08 14:00:00', 'completed', 'Replace brake pads', true),
  (3, 3, 3, 1, '2023-04-08 13:00:00', NULL, 'in-progress', 'Engine diagnostic', false),
  (4, 4, 4, 2, '2023-04-08 09:00:00', '2023-04-08 11:00:00', 'completed', 'Oil change', true),
  (5, 5, 5, 2, '2023-04-08 11:30:00', '2023-04-08 13:30:00', 'completed', 'Replace air filter', true),
  (6, 6, 6, 2, '2023-04-08 14:00:00', NULL, 'in-progress', 'Suspension repair', false),
  (7, 7, 7, 3, '2023-04-08 10:00:00', '2023-04-08 12:00:00', 'completed', 'Replace timing belt', true),
  (8, 8, 8, 3, '2023-04-08 12:30:00', '2023-04-08 15:00:00', 'completed', 'Transmission flush', true),
  (9, 9, 9, 3, '2023-04-08 14:00:00', NULL, 'in-progress', 'Tire rotation', false),
  (10, 10, 10, 4, '2023-04-08 09:30:00', '2023-04-08 11:30:00', 'completed', 'Replace battery', true),
  (11, 1, 1, 4, '2023-04-08 12:00:00', '2023-04-08 15:00:00', 'completed', 'Replace starter motor', true),
  (12, 2, 2, 4, '2023-04-08 14:30:00', NULL, 'in-progress', 'Brake line repair', false),
  (13, 3, 3, 5, '2023-04-08 10:30:00', '2023-04-08 12:30:00', 'completed', 'Replace water pump', true),
  (14, 4, 4, 5, '2023-04-08 13:00:00', '2023-04-08 16:00:00', 'completed', 'Replace alternator', true),
  (15, 5, 5, 5, '2023-04-08 15:00:00', NULL, 'in-progress', 'AC repair', false),
  (16, 6, 6, 5, '2023-04-08 15:00:00', NULL, 'in-progress', 'AC repair', false),
  (17, 7, 7, 5, '2023-04-08 15:00:00', NULL, 'in-progress', 'AC repair', false),


INSERT INTO job_parts (job_id, part_id, quantity_used, cost)
VALUES
    (1, 1, 2, 50.00),
    (2, 2, 1, 75.00),
    (3, 1, 1, 50.00),
    (4, 3, 3, 125.00),
    (5, 4, 2, 150.00),
    (6, 5, 1, 100.00),
    (7, 2, 4, 300.00),
    (8, 3, 2, 125.00),
    (9, 1, 1, 50.00),
    (10, 4, 3, 225.00),
    (11, 2, 2, 150.00),
    (12, 5, 1, 100.00),
    (13, 3, 3, 125.00),
    (14, 4, 2, 150.00),
    (15, 1, 2, 50.00),
    (16, 5, 1, 100.00),
    (17, 2, 3, 225.00),

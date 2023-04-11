INSERT INTO workshops (workshop_name, location)
VALUES 
  ( 'Workshop A', 'Location A'),
  ( 'Workshop B', 'Location B'),
  ( 'Workshop C', 'Location C'),
  ( 'Workshop D', 'Location D'),
  ( 'Workshop E', 'Location E'),
  ( 'Workshop F', 'Location F'),
  ( 'Workshop G', 'Location G'),
  ( 'Workshop H', 'Location H'),
  ( 'Workshop I', 'Location I'),
  ( 'Workshop J', 'Location J');

INSERT INTO mechanics ( mechanic_name, workshop_id)
VALUES 
  ( 'John Smith', 1),
  ( 'Jane Doe', 2),
  ( 'Bob Johnson', 1),
  ( 'Sara Lee', 3),
  ( 'Peter Parker', 4),
  ( 'Clark Kent', 5),
  ( 'Bruce Wayne', 6),
  ( 'Tony Stark', 7),
  ( 'Natasha Romanoff', 8),
  ( 'Steve Rogers', 9);

INSERT INTO customers (customer_name, customer_phone)
VALUES
  ( 'Emily Chen', '555-1234'),
  ( 'Alex Wong', '555-5678'),
  ( 'Avery Davis', '555-9012'),
  ( 'Grace Kim', '555-3456'),
  ( 'Isaac Park', '555-7890'),
  ( 'Mila Patel', '555-2345'),
  ( 'Levi Nguyen', '555-6789'),
  ( 'Sofia Rodriguez', '555-0123'),
  ( 'Ethan Thompson', '555-4567'),
  ( 'Olivia Johnson', '555-8901');

INSERT INTO spare_parts ( part_name, quantity_in_stock, cost_per_unit)
VALUES 
  ( 'Oil filter', 50, 5.99),
  ( 'Air filter', 75, 9.99),
  ( 'Brake pads', 25, 39.99),
  ( 'Spark plugs', 100, 3.99),
  ( 'Battery', 20, 89.99),
  ( 'Radiator', 10, 129.99),
  ( 'Tire', 30, 99.99),
  ( 'Alternator', 5, 189.99),
  ( 'Water pump', 15, 149.99),
  ( 'Fuel pump', 12, 79.99);

INSERT INTO vehicles ( make, model, year, customer_id)
VALUES
    ( 'Toyota', 'Corolla', 2018, 1),
    ( 'Honda', 'Civic', 2019, 2),
    ( 'Ford', 'F-150', 2016, 3),
    ( 'Chevrolet', 'Impala', 2015, 4),
    ( 'Nissan', 'Altima', 2020, 5),
    ( 'BMW', 'X3', 2021, 6),
    ( 'Audi', 'A4', 2017, 7),
    ( 'Mercedes-Benz', 'C-Class', 2014, 8),
    ( 'Jeep', 'Wrangler', 2013, 9),
    ( 'Tesla', 'Model S', 2022, 10);

INSERT INTO jobs ( vehicle_id, mechanic_id, workshop_id, start_time, end_time, job_status, job_description, is_paid)
VALUES 
  ( 1, 1, 1, '2023-04-08 10:00:00', '2023-04-08 12:00:00', 'completed', 'Replace spark plugs', 1),
  ( 2, 2, 1, '2023-04-08 11:00:00', '2023-04-08 14:00:00', 'completed', 'Replace brake pads', 1),
  ( 3, 3, 1, '2023-04-08 13:00:00', NULL, 'in-progress', 'Engine diagnostic', 0),
  ( 4, 4, 2, '2023-04-08 09:00:00', '2023-04-08 11:00:00', 'completed', 'Oil change', 1),
  ( 5, 5, 2, '2023-04-08 11:30:00', '2023-04-08 13:30:00', 'completed', 'Replace air filter', 1),
  ( 6, 6, 2, '2023-04-08 14:00:00', NULL, 'in-progress', 'Suspension repair', 0),
  ( 7, 7, 3, '2023-04-08 10:00:00', '2023-04-08 12:00:00', 'completed', 'Replace timing belt', 1),
  ( 8, 8, 3, '2023-04-08 12:30:00', '2023-04-08 15:00:00', 'completed', 'Transmission flush', 1),
  ( 9, 9, 3, '2023-04-08 14:00:00', NULL, 'in-progress', 'Tire rotation', 0),
  ( 10, 10, 4, '2023-04-08 09:30:00', '2023-04-08 11:30:00', 'completed', 'Replace battery', 1),
  ( 1, 1, 4, '2023-04-08 12:00:00', '2023-04-08 15:00:00', 'completed', 'Replace starter motor', 1),
  ( 2, 2, 4, '2023-04-08 14:30:00', NULL, 'in-progress', 'Brake line repair', 0),
  ( 3, 3, 5, '2023-04-08 10:30:00', '2023-04-08 12:30:00', 'completed', 'Replace water pump', 1),
  ( 4, 4, 5, '2023-04-08 13:00:00', '2023-04-08 16:00:00', 'completed', 'Replace alternator', 1),
  ( 5, 5, 5, '2023-04-08 15:00:00', NULL, 'in-progress', 'AC repair', 0),
  ( 6, 6, 5, '2023-04-08 15:00:00', NULL, 'in-progress', 'AC repair', 0),
  ( 7, 7, 5, '2023-04-08 15:00:00', NULL, 'in-progress', 'AC repair', 0);


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
    (17, 2, 3, 225.00);

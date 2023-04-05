CREATE TABLE IF NOT EXISTS workshops (
    workshop_id INT PRIMARY KEY,
    workshop_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS mechanics (
    mechanic_id INT PRIMARY KEY,
    mechanic_name VARCHAR(255) NOT NULL,
    workshop_id INT NOT NULL,
    FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id)
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);
 
CREATE TABLE IF NOT EXISTS spare_parts (
    part_id INT PRIMARY KEY,
    part_name VARCHAR(255) NOT NULL,
    quantity_in_stock INT NOT NULL,
    cost_per_unit DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS jobs (
    job_id INT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    mechanic_id INT NOT NULL,
    workshop_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME,
    status ENUM('in-progress', 'completed') NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id)
);

CREATE TABLE IF NOT EXISTS vehicles (
    vehicle_id INT PRIMARY KEY,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS job_parts (
    job_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity_used INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (job_id, part_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (part_id) REFERENCES spare_parts(part_id)
);

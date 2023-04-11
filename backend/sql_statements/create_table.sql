IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'workshops') AND type in (N'U'))
CREATE TABLE workshops (
    workshop_id INT IDENTITY(1,1) PRIMARY KEY,
    workshop_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'mechanics') AND type in (N'U'))
CREATE TABLE mechanics (
    mechanic_id INT IDENTITY(1,1) PRIMARY KEY,
    mechanic_name VARCHAR(255) NOT NULL,
    workshop_id INT NOT NULL,
    FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id)
);

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'customers') AND type in (N'U'))
CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    customer_phone VARCHAR(20)
);
 
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'spare_parts') AND type in (N'U'))
CREATE TABLE spare_parts (
    part_id INT IDENTITY(1,1) PRIMARY KEY,
    part_name VARCHAR(255) NOT NULL,
    quantity_in_stock INT NOT NULL,
    cost_per_unit DECIMAL(10,2) NOT NULL
);

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'vehicles') AND type in (N'U'))
CREATE TABLE vehicles (
    vehicle_id INT IDENTITY(1,1) PRIMARY KEY,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'jobs') AND type in (N'U'))
CREATE TABLE jobs (
    job_id INT IDENTITY(1,1) PRIMARY KEY,
    vehicle_id INT NOT NULL,
    mechanic_id INT NOT NULL,
    workshop_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME,
    job_status VARCHAR(20) NOT NULL CHECK (job_status IN ('in-progress', 'completed')),
    job_description VARCHAR(255),
    is_paid BIT NOT NULL DEFAULT 0,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id)
);

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'job_parts') AND type in (N'U'))
CREATE TABLE job_parts (
    job_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity_used INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (part_id) REFERENCES spare_parts(part_id)
);

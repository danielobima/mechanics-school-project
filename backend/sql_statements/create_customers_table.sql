CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL
);

CREATE TABLE mechanics (
    mechanic_id INT PRIMARY KEY,
    mechanic_name VARCHAR(255) NOT NULL,
    workshop_id INT NOT NULL,
    FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id)
);

CREATE TABLE workshops (
    workshop_id INT PRIMARY KEY,
    workshop_name VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL
);
 
 CREATE TABLE spare_parts (
    part_id INT PRIMARY KEY,
    part_name VARCHAR(255) NOT NULL,
    quantity_in_stock INT NOT NULL,
    cost_per_unit DECIMAL(10,2) NOT NULL
);

CREATE TABLE jobs (
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

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE job_parts (
    job_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity_used INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (job_id, part_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (part_id) REFERENCES spare_parts(part_id)
);

CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    job_id INT NOT NULL,
    customer_id INT NOT NULL,
    total_cost DECIMAL(10,2) NOT NULL,
    invoice_date DATETIME NOT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    invoice_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (invoice_id) REFERENCES invoices(invoice_id)
);
 
 CREATE TABLE receipts (
    receipt_id INT PRIMARY KEY,
    payment_id INT NOT NULL,
    customer_id INT NOT NULL,
    receipt_date DATETIME NOT NULL,
    FOREIGN KEY (payment_id) REFERENCES payments(payment_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'mechanic', 'customer_service') NOT NULL
);

CREATE TABLE job_cards (
    card_id INT PRIMARY KEY,
    vehicle_id INT NOT NULL,
    mechanic_id INT NOT NULL,
    workshop_id INT NOT NULL,
    card_date DATETIME NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    FOREIGN KEY (workshop_id) REFERENCES workshops(workshop_id)
);

CREATE TABLE services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(255) NOT NULL,
    service_description TEXT,
    cost DECIMAL(10,2) NOT NULL
);

CREATE TABLE job_services (
    job_id INT NOT NULL,
    service_id INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (job_id, service_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE parts_orders (
    order_id INT PRIMARY KEY,
    supplier_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity_ordered INT NOT NULL,
    order_date DATETIME NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id),
    FOREIGN KEY (part_id) REFERENCES spare_parts(part_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    job_id INT NOT NULL,
    amount_paid DECIMAL(10,2) NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    expense_date DATETIME NOT NULL,
    expense_category VARCHAR(255) NOT NULL,
    expense_description TEXT,
    expense_amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE employee_types (
    employee_type_id INT PRIMARY KEY,
    employee_type_name VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    employee_type_id INT NOT NULL,
    employee_salary DECIMAL(10,2) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (employee_type_id) REFERENCES employee_types(employee_type_id)
);

CREATE TABLE employee_hours (
    employee_id INT NOT NULL,
    work_date DATE NOT NULL,
    hours_worked DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (employee_id, work_date),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    sale_date DATE NOT NULL,
    vehicle_id INT NOT NULL,
    sale_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(255)
);
CREATE TABLE customer_vehicles (
    customer_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    PRIMARY KEY (customer_id, vehicle_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id)
);

CREATE TABLE customer_jobs (
    customer_id INT NOT NULL,
    job_id INT NOT NULL,
    job_description TEXT,
    job_date DATETIME NOT NULL,
    PRIMARY KEY (customer_id, job_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

CREATE TABLE job_parts (
    job_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity_used INT NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (job_id, part_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (part_id) REFERENCES spare_parts(part_id)
);


CREATE TABLE Clients (
    client_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Inventory (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(100),
    price_per_day NUMERIC(10,2)
);

CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100)
);

CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES Clients(client_id),
    item_id INT REFERENCES Inventory(item_id),
    employee_id INT REFERENCES Employees(employee_id),
    start_date DATE,
    end_date DATE
);

CREATE TABLE Returns (
    return_id SERIAL PRIMARY KEY,
    booking_id INT REFERENCES Booking(booking_id),
    condition_after VARCHAR(100)
);

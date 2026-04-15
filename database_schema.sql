-- Database Schema for Staff, Amenities Report, and Room Tracking Tables

-- Staff Table
CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
);

-- Initial Staff Data
INSERT INTO staff (staff_id, first_name, last_name, position, hire_date, salary) VALUES
(1, 'John', 'Doe', 'Manager', '2020-01-15', 60000.00),
(2, 'Jane', 'Smith', 'Receptionist', '2021-05-22', 35000.00),
(3, 'Emily', 'Johnson', 'Housekeeper', '2019-09-10', 30000.00);

-- Amenities Report Table
CREATE TABLE amenities_report (
    report_id INT PRIMARY KEY,
    amenity_name VARCHAR(100),
    availability_status BOOLEAN,
    last_inspected DATE
);

-- Room Tracking Table
CREATE TABLE room_tracking (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(50),
    status VARCHAR(50),
    last_cleaned DATE
);
DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    Customer_id INT AUTO_INCREMENT PRIMARY KEY,
    Customer_Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    signup_date DATE
);

SELECT * FROM Customers;

CREATE TABLE Staff (
    Staff_id INT AUTO_INCREMENT PRIMARY KEY,
    Staff_Name VARCHAR(100) NOT NULL,
    Staff_Availability VARCHAR(50),
    Staff_Workhours INT
);

SELECT * FROM Staff;

CREATE TABLE Appointments (
    appointment_id VARCHAR(20) PRIMARY KEY,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    appointment_status VARCHAR(50),

    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_id),
    FOREIGN KEY (Staff_ID) REFERENCES Staff(Staff_id)
);

SELECT * FROM Appointments;
CREATE TABLE Customer_Payment (
    Payment_ID VARCHAR(20) PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Payment_Date DATETIME NOT NULL,
    Amount INT NOT NULL,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customers(Customer_id)
);

SELECT * FROM Customer_Payment;

CREATE TABLE Staff_Payment (
    Payday_ID VARCHAR(20) PRIMARY KEY,
    Staff_ID INT NOT NULL,
    Payday DATETIME NOT NULL,
    Amount INT NOT NULL,

    FOREIGN KEY (Staff_ID)
        REFERENCES Staff(Staff_id)
);

SELECT * FROM Staff_Payment;












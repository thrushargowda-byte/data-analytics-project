-- Create Database
CREATE DATABASE business_project;
USE business_project;

-- Create Table
CREATE TABLE samplestore (
ProductName VARCHAR(255),
Sales DECIMAL(10,2),
Quantity INT,
Discount DECIMAL(5,2),
Profit DECIMAL(10,2)
);

-- Insert Sample Data
INSERT INTO samplestore VALUES
('Office Chair', 500.00, 2, 0.10, 120.00),
('Laptop', 1200.00, 1, 0.05, 300.00),
('Table', 750.00, 3, 0.00, 200.00),
('Printer', 400.00, 1, 0.15, 80.00),
('Phone', 900.00, 2, 0.08, 250.00);

-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM samplestore;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit FROM samplestore;

-- Profit by Product
SELECT ProductName, SUM(Profit)
FROM samplestore
GROUP BY ProductName
ORDER BY SUM(Profit) DESC;

-- Top Selling Product
SELECT ProductName, SUM(Sales) AS Total_Sales
FROM samplestore
GROUP BY ProductName
ORDER BY Total_Sales DESC
LIMIT 1;

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Insert 20 Records
INSERT INTO Orders (order_id, customer_id, order_date, product_name, quantity, price)
VALUES
(1, 101, '2025-01-05', 'Laptop', 1, 55000.00),
(2, 102, '2025-01-06', 'Smartphone', 2, 25000.00),
(3, 103, '2025-01-06', 'Headphones', 3, 2000.00),
(4, 104, '2025-01-07', 'Keyboard', 1, 1500.00),
(5, 105, '2025-01-07', 'Mouse', 2, 800.00),
(6, 101, '2025-01-08', 'Tablet', 1, 18000.00),
(7, 106, '2025-01-08', 'Monitor', 2, 12000.00),
(8, 107, '2025-01-09', 'Printer', 1, 7000.00),
(9, 108, '2025-01-09', 'Router', 1, 2500.00),
(10, 109, '2025-01-10', 'Smartwatch', 1, 9000.00),
(11, 110, '2025-01-11', 'Camera', 1, 45000.00),
(12, 111, '2025-01-12', 'Speakers', 2, 3500.00),
(13, 112, '2025-01-12', 'External HDD', 1, 6000.00),
(14, 113, '2025-01-13', 'Power Bank', 2, 1500.00),
(15, 114, '2025-01-13', 'Charger', 3, 1200.00),
(16, 115, '2025-01-14', 'SSD 1TB', 1, 9000.00),
(17, 116, '2025-01-15', 'RAM 16GB', 2, 7000.00),
(18, 117, '2025-01-15', 'Graphics Card', 1, 45000.00),
(19, 118, '2025-01-16', 'Cooling Fan', 4, 1200.00),
(20, 119, '2025-01-16', 'Gaming Chair', 1, 15000.00);

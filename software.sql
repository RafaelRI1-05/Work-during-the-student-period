CREATE DATABASE IF NOT EXISTS software_store;

USE software_store;


CREATE TABLE IF NOT EXISTS Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    description TEXT
);


INSERT INTO Products (name, price, description) VALUES
('Microsoft Office 365', 99.99, 'Подписка на пакет офисных программ'),
('Adobe Photoshop', 199.99, 'Графический редактор для обработки изображений'),
('AutoCAD', 299.99, 'Профессиональное программное обеспечение для 3D-моделирования и черчения');


CREATE TABLE IF NOT EXISTS Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);


INSERT INTO Categories (name) VALUES
('Офисное программное обеспечение'),
('Графические редакторы'),
('Проектирование и архитектура');



CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);


INSERT INTO Customers (first_name, last_name, email, phone) VALUES
('Иван', 'Иванов', 'ivan@example.com', '123-456-7890'),
('Петр', 'Петров', 'petr@example.com', '987-654-3210'),
('Мария', 'Сидорова', 'maria@example.com', '555-123-4567');



CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2024-04-23'),
(2, '2024-04-22'),
(3, '2024-04-21');


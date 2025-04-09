create database ecommerce;
CREATE TABLE users (
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
    );
    
CREATE TABLE products (
	product_id SERIAL PRIMARY KEY, 
    product_name VARCHAR (100),
    product_price DECIMAL (8, 2) NOT NULL
);

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
    user_id INT,
    order_quantity INT,
    total_amount DECIMAL (10, 3),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
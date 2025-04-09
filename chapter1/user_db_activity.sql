create database user_db;
CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
    name VARCHAR (100),
    email VARCHAR (100) UNIQUE
    );

CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY
);
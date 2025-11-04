CREATE TABLE dim_customer (
    customer_key SERIAL PRIMARY KEY,
    customer_id INTEGER,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER,
    email VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(50),
    pet_type VARCHAR(50),
    pet_name VARCHAR(50),
    pet_breed VARCHAR(50),
    created_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);
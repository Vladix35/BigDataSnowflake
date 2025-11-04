CREATE TABLE dim_seller (
    seller_key SERIAL PRIMARY KEY,
    seller_id INTEGER,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(50),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
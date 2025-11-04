CREATE TABLE dim_store (
    store_key SERIAL PRIMARY KEY,
    store_name VARCHAR(50),
    location VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(50),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
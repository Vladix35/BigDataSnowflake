CREATE TABLE dim_product (
    product_key SERIAL PRIMARY KEY,
    product_id INTEGER,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price REAL,
    weight REAL,
    color VARCHAR(50),
    size VARCHAR(50),
    brand VARCHAR(50),
    material VARCHAR(50),
    description VARCHAR(1024),
    rating REAL,
    reviews INTEGER,
    release_date VARCHAR(50),
    expiry_date VARCHAR(50),
    pet_category VARCHAR(50),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
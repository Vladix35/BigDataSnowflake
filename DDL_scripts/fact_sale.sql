CREATE TABLE fact_sale (
    sale_key SERIAL PRIMARY KEY,
    customer_key INTEGER REFERENCES dim_customer(customer_key),
    seller_key INTEGER REFERENCES dim_seller(seller_key),
    product_key INTEGER REFERENCES dim_product(product_key),
    store_key INTEGER REFERENCES dim_store(store_key),
    supplier_key INTEGER REFERENCES dim_supplier(supplier_key),
    sale_date VARCHAR(50),
    quantity INTEGER,
    total_price REAL,
    original_id INTEGER,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
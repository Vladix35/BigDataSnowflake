INSERT INTO dim_customer (customer_id, first_name, last_name, age, email, country, postal_code, pet_type, pet_name, pet_breed)
SELECT DISTINCT 
    sale_customer_id as customer_id,
    customer_first_name as first_name,
    customer_last_name as last_name,
    customer_age as age,
    customer_email as email,
    customer_country as country,
    customer_postal_code as postal_code,
    customer_pet_type as pet_type,
    customer_pet_name as pet_name,
    customer_pet_breed as pet_breed
FROM mock_data
WHERE sale_customer_id IS NOT NULL;
INSERT INTO dim_seller (seller_id, first_name, last_name, email, country, postal_code)
SELECT DISTINCT
    sale_seller_id as seller_id,
    seller_first_name as first_name,
    seller_last_name as last_name,
    seller_email as email,
    seller_country as country,
    seller_postal_code as postal_code
FROM mock_data
WHERE sale_seller_id IS NOT NULL;
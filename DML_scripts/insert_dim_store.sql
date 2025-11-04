INSERT INTO dim_store (store_name, location, city, state, country, phone, email)
SELECT DISTINCT
    store_name,
    store_location as location,
    store_city as city,
    store_state as state,
    store_country as country,
    store_phone as phone,
    store_email as email
FROM mock_data
WHERE store_name IS NOT NULL AND store_location IS NOT NULL;
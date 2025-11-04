INSERT INTO dim_supplier (supplier_name, contact, email, phone, address, city, country)
SELECT DISTINCT
    supplier_name,
    supplier_contact as contact,
    supplier_email as email,
    supplier_phone as phone,
    supplier_address as address,
    supplier_city as city,
    supplier_country as country
FROM mock_data
WHERE supplier_name IS NOT NULL;
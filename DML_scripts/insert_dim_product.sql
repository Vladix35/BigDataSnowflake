INSERT INTO dim_product (product_id, product_name, category, price, weight, color, size, brand, material, description, rating, reviews, release_date, expiry_date, pet_category)
SELECT DISTINCT
    sale_product_id as product_id,
    product_name,
    product_category as category,
    product_price as price,
    product_weight as weight,
    product_color as color,
    product_size as size,
    product_brand as brand,
    product_material as material,
    product_description as description,
    product_rating as rating,
    product_reviews as reviews,
    product_release_date as release_date,
    product_expiry_date as expiry_date,
    pet_category
FROM mock_data
WHERE sale_product_id IS NOT NULL;
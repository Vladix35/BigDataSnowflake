INSERT INTO fact_sale (customer_key, seller_key, product_key, store_key, supplier_key, sale_date, quantity, total_price, original_id)
SELECT 
    c.customer_key,
    s.seller_key,
    p.product_key,
    st.store_key,
    sup.supplier_key,
    m.sale_date,
    m.sale_quantity as quantity,
    m.sale_total_price as total_price,
    m.id as original_id
FROM mock_data m
    JOIN dim_customer c ON m.sale_customer_id = c.customer_id
    JOIN dim_seller s ON m.sale_seller_id = s.seller_id
    JOIN dim_product p ON m.sale_product_id = p.product_id
    JOIN dim_store st ON m.store_name = st.store_name AND m.store_location = st.location
    JOIN dim_supplier sup ON m.supplier_name = sup.supplier_name;
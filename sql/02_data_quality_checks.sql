SELECT COUNT(*) AS total_rows
FROM orders_raw;
SELECT *
FROM orders_raw
LIMIT 10;
SELECT
    COUNT(*) AS total_rows,
    COUNT(*) FILTER (WHERE row_id IS NULL OR TRIM(row_id) = '') AS row_id_empty,
    COUNT(*) FILTER (WHERE order_id IS NULL OR TRIM(order_id) = '') AS order_id_empty,
    COUNT(*) FILTER (WHERE order_date IS NULL OR TRIM(order_date) = '') AS order_date_empty,
    COUNT(*) FILTER (WHERE ship_date IS NULL OR TRIM(ship_date) = '') AS ship_date_empty,
    COUNT(*) FILTER (WHERE customer_id IS NULL OR TRIM(customer_id) = '') AS customer_id_empty,
    COUNT(*) FILTER (WHERE customer_name IS NULL OR TRIM(customer_name) = '') AS customer_name_empty,
    COUNT(*) FILTER (WHERE sales IS NULL OR TRIM(sales) = '') AS sales_empty,
    COUNT(*) FILTER (WHERE quantity IS NULL OR TRIM(quantity) = '') AS quantity_empty,
    COUNT(*) FILTER (WHERE discount IS NULL OR TRIM(discount) = '') AS discount_empty,
    COUNT(*) FILTER (WHERE profit IS NULL OR TRIM(profit) = '') AS profit_empty
FROM orders_raw;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT (
        row_id,
        order_id,
        order_date,
        ship_date,
        ship_mode,
        customer_id,
        customer_name,
        segment,
        country,
        city,
        state,
        postal_code,
        region,
        product_id,
        category,
        sub_category,
        product_name,
        sales,
        quantity,
        discount,
        profit
    )) AS unique_rows
FROM orders_raw;

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT row_id) AS unique_row_ids
FROM orders_raw;

SELECT
    COUNT(DISTINCT order_id) AS unique_orders,
    COUNT(*) AS order_lines
FROM orders_raw;

SELECT
    MIN(TO_DATE(order_date, 'MM/DD/YYYY')) AS first_order_date,
    MAX(TO_DATE(order_date, 'MM/DD/YYYY')) AS last_order_date,
    MIN(TO_DATE(ship_date, 'MM/DD/YYYY')) AS first_ship_date,
    MAX(TO_DATE(ship_date, 'MM/DD/YYYY')) AS last_ship_date
FROM orders_raw;

SELECT COUNT(*) AS invalid_date_rows
FROM orders_raw
WHERE TO_DATE(ship_date, 'MM/DD/YYYY')
    < TO_DATE(order_date, 'MM/DD/YYYY');

	SELECT
    MIN(
        TO_DATE(ship_date, 'MM/DD/YYYY')
        - TO_DATE(order_date, 'MM/DD/YYYY')
    ) AS min_shipping_days,
    
    MAX(
        TO_DATE(ship_date, 'MM/DD/YYYY')
        - TO_DATE(order_date, 'MM/DD/YYYY')
    ) AS max_shipping_days,
    
    ROUND(
        AVG(
            TO_DATE(ship_date, 'MM/DD/YYYY')
            - TO_DATE(order_date, 'MM/DD/YYYY')
        ), 2
    ) AS avg_shipping_days
FROM orders_raw;

SELECT
    MIN(sales::NUMERIC) AS min_sales,
    MAX(sales::NUMERIC) AS max_sales,
    AVG(sales::NUMERIC) AS avg_sales,
    COUNT(*) FILTER (
        WHERE sales::NUMERIC < 0
    ) AS negative_sales
FROM orders_raw;

SELECT
    MIN(quantity::INTEGER) AS min_quantity,
    MAX(quantity::INTEGER) AS max_quantity,
    AVG(quantity::INTEGER) AS avg_quantity,
    COUNT(*) FILTER (
        WHERE quantity::INTEGER <= 0
    ) AS invalid_quantity
FROM orders_raw;

SELECT
    MIN(discount::NUMERIC) AS min_discount,
    MAX(discount::NUMERIC) AS max_discount,
    AVG(discount::NUMERIC) AS avg_discount,
    COUNT(*) FILTER (
        WHERE discount::NUMERIC < 0
           OR discount::NUMERIC > 1
    ) AS invalid_discount
FROM orders_raw;

SELECT
    MIN(profit::NUMERIC) AS min_profit,
    MAX(profit::NUMERIC) AS max_profit,
    AVG(profit::NUMERIC) AS avg_profit,
    COUNT(*) FILTER (
        WHERE profit::NUMERIC IS NULL
    ) AS null_profit
FROM orders_raw;

SELECT
    TRIM(ship_mode) AS ship_mode,
    COUNT(*) AS rows_count
FROM orders_raw
GROUP BY TRIM(ship_mode)
ORDER BY rows_count DESC;

SELECT
    TRIM(segment) AS segment,
    COUNT(*) AS rows_count
FROM orders_raw
GROUP BY TRIM(segment)
ORDER BY rows_count DESC;

SELECT
    TRIM(category) AS category,
    COUNT(*) AS rows_count
FROM orders_raw
GROUP BY TRIM(category)
ORDER BY rows_count DESC;

SELECT
    TRIM(region) AS region,
    COUNT(*) AS rows_count
FROM orders_raw
GROUP BY TRIM(region)
ORDER BY rows_count DESC;

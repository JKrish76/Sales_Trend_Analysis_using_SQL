WITH monthly_sales AS (
    SELECT
        EXTRACT(YEAR FROM `Order Date`) AS sales_year,
        EXTRACT(MONTH FROM `Order Date`) AS sales_month,

        SUM(`Sales`) AS total_revenue,
        COUNT(DISTINCT `Order ID`) AS order_volume,

        ROUND(AVG(`Sales`), 2) AS avg_sale_value,
        SUM(`Quantity`) AS total_items_sold,
        COUNT(DISTINCT `Product ID`) AS unique_products_sold,
        MAX(`Sales`) AS highest_single_sale

    FROM superstore
    GROUP BY sales_year, sales_month
)

SELECT * , SUM(total_revenue) OVER (ORDER BY sales_year, sales_month) AS cumulative_revenue
FROM monthly_sales
ORDER BY sales_year, sales_month;
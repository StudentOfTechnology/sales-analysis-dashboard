-- ============================================
-- Sales Data Cleaning & Transformation
-- ============================================

-- Description:
-- This view prepares raw sales data for analysis by:
-- 1. Extracting year and month from order date
-- 2. Categorizing profit into business-friendly segments

CREATE VIEW sales_cleaned AS
SELECT
    order_id,
    order_date,

    -- Date transformations
    DATE_PART('year', order_date) AS year,
    DATE_PART('month', order_date) AS month,

    -- Customer info
    customer_id,
    customer_name,
    segment,

    -- Location
    region,
    state,

    -- Product details
    category,
    sub_category,
    product_name,

    -- Metrics
    sales,
    quantity,
    discount,
    profit,

    -- Business logic: Profit segmentation
    CASE
        WHEN profit < 0 THEN 'Loss'
        WHEN profit < 50 THEN 'Low Profit'
        WHEN profit < 200 THEN 'Medium Profit'
        ELSE 'High Profit'
    END AS profit_category

FROM sales_data;
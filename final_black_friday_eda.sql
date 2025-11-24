-- FINAL SQL FILE WITH EDA, SEGMENTATION, INVENTORY INSIGHTS, CITY ANALYSIS, OUTLIERS, PRODUCT PERFORMANCE

-- =====================================================
-- PART 1: CREATE SCHEMA AND LOAD DATA
-- =====================================================
DROP TABLE IF EXISTS train_data;

CREATE TABLE train_data (
    User_ID INT,
    Product_ID VARCHAR(20),
    Gender CHAR(1),
    Age VARCHAR(10),
    Occupation VARCHAR(10),
    City_Category CHAR(1),
    Stay_In_Current_City_Years VARCHAR(5),
    Marital_Status INT,
    Product_Category_1 INT,
    Product_Category_2 INT,
    Product_Category_3 INT,
    Purchase INT
);

LOAD DATA LOCAL INFILE 'data/train.csv'
INTO TABLE train_data
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- =====================================================
-- PART 2: EXPLORATORY DATA ANALYSIS (EDA)
-- =====================================================
SELECT * FROM train_data LIMIT 10;
SELECT COUNT(*) AS total_rows FROM train_data;
DESC train_data;

SELECT 
    COUNT(*) AS total_rows,
    COUNT(*) - COUNT(Product_Category_2) AS PC2_missing,
    COUNT(*) - COUNT(Product_Category_3) AS PC3_missing
FROM train_data;

SELECT 
    AVG(Purchase) AS avg_purchase,
    MIN(Purchase) AS min_purchase,
    MAX(Purchase) AS max_purchase,
    STDDEV(Purchase) AS std_dev_purchase
FROM train_data;

-- Quantiles
SELECT 
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Purchase) AS Q1,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY Purchase) AS median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Purchase) AS Q3
FROM train_data;

-- =====================================================
-- SEGMENTATION
-- =====================================================
SELECT
    User_ID,
    AVG(Purchase) AS avg_purchase,
    COUNT(*) AS frequency,
    CASE
        WHEN AVG(Purchase) > 12000 THEN 'High spender'
        WHEN AVG(Purchase) BETWEEN 8000 AND 12000 THEN 'Mid spender'
        ELSE 'Low spender'
    END AS segment
FROM train_data
GROUP BY User_ID;

-- =====================================================
-- INVENTORY INSIGHTS (PRODUCT LEVEL)
-- =====================================================
SELECT 
    Product_ID,
    COUNT(*) AS purchase_count,
    SUM(Purchase) AS total_revenue,
    AVG(Purchase) AS avg_purchase
FROM train_data
GROUP BY Product_ID
ORDER BY purchase_count DESC;

-- =====================================================
-- CITY-LEVEL ANALYSIS
-- =====================================================
SELECT 
    City_Category,
    COUNT(*) AS transaction_count,
    AVG(Purchase) AS avg_purchase,
    SUM(Purchase) AS total_purchase
FROM train_data
GROUP BY City_Category
ORDER BY avg_purchase DESC;

-- =====================================================
-- OUTLIER DETECTION
-- =====================================================
WITH stats AS (
    SELECT 
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY Purchase) AS Q1,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY Purchase) AS Q3
), bounds AS (
    SELECT Q1, Q3, (Q3 - Q1) AS IQR,
           Q1 - 1.5 * (Q3 - IQR) AS lower_bound,
           Q3 + 1.5 * (Q3 - IQR) AS upper_bound
    FROM stats
)
SELECT COUNT(*) AS outliers
FROM train_data, bounds
WHERE Purchase < lower_bound OR Purchase > upper_bound;

-- =====================================================
-- PRODUCT PERFORMANCE INSIGHTS
-- =====================================================
SELECT 
    Product_Category_1,
    COUNT(*) AS frequency,
    AVG(Purchase) AS avg_purchase,
    SUM(Purchase) AS total_revenue
FROM train_data
GROUP BY Product_Category_1
ORDER BY frequency DESC;

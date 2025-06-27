-- Create database
CREATE DATABASE IF NOT EXISTS myntra_db;
USE myntra_db;

-- Create table for product catalog
CREATE TABLE myntra_products (
    ProductID INT PRIMARY KEY,
    ProductName TEXT,
    ProductBrand VARCHAR(100),
    Gender VARCHAR(20),
    Price_INR INT,
    NumImages INT,
    Description TEXT,
    PrimaryColor VARCHAR(50)
);


-- Quries

-- 1. Total number of products
SELECT COUNT(*) AS total_products FROM myntra_products;

-- 2. Count by gender
SELECT Gender, COUNT(*) AS count FROM myntra_products GROUP BY Gender;

-- 3. Brand with the most products
SELECT ProductBrand, COUNT(*) AS product_count 
FROM myntra_products 
GROUP BY ProductBrand 
ORDER BY product_count DESC 
LIMIT 1;

-- 4. Most common primary color
SELECT PrimaryColor, COUNT(*) AS color_count 
FROM myntra_products 
GROUP BY PrimaryColor 
ORDER BY color_count DESC 
LIMIT 1;

-- 5. Distribution of number of images per product
SELECT NumImages, COUNT(*) AS count 
FROM myntra_products 
GROUP BY NumImages 
ORDER BY NumImages;

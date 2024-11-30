CREATE TABLE products (
         product_id INT PRIMARY KEY, 
         product_name VARCHAR(100), 
         brand_rating DECIMAL(2, 1), 
         available_languages INT
     );
     INSERT INTO products VALUES 
         (1, 'Smartphone A', 4.0, 5), 
         (2, 'Gadget B', 2.5, 2), 
         (3, 'Device C', 3.0, 4);


SELECT * FROM PRODUCTS

/*
Find all products from brands that have a rating below 3.5 and are available in more than 3 languages.
*/

SELECT PRODUCT_NAME
FROM PRODUCTS
WHERE BRAND_RATING > 3.5
AND AVAILABLE_LANGUAGES >3;
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    transaction_amount DECIMAL(10, 2) NOT NULL
);

-- Insert the data into the table
INSERT INTO transactions (transaction_id, user_id, transaction_date, transaction_amount)
VALUES
    (1, 269, '2018-08-15', 500),
    (2, 478, '2018-11-25', 400),
    (3, 269, '2019-01-05', 1000),
    (4, 123, '2020-10-20', 600),
    (5, 478, '2021-07-05', 700),
    (6, 123, '2022-03-05', 900);


SELECT * FROM TRANSACTIONS


/*
Write a SQL query to calculate the average transaction amount per year for each
client, where the years are in the range of 2018 to 2022.
*/

SELECT USER_ID,
       EXTRACT(YEAR FROM TRANSACTION_DATE) AS YEAR,
       ROUND(AVG(TRANSACTION_AMOUNT))
FROM TRANSACTIONS
WHERE EXTRACT(YEAR FROM TRANSACTION_DATE) BETWEEN 2018 AND 2022
GROUP BY 1,2
ORDER BY 2
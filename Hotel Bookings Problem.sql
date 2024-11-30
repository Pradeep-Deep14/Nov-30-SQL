CREATE TABLE oyo_reviews (
         review_id INT, 
         hotel_id INT, 
         hotel_name VARCHAR(100), 
         rating INT, 
         review_date DATE
     );
     CREATE TABLE makemytrip_reviews (
         review_id INT, 
         hotel_id INT, 
         hotel_name VARCHAR(100), 
         rating INT, 
         review_date DATE
     );
     INSERT INTO oyo_reviews VALUES 
         (1, 401, 'Hotel Bliss', 4, '2023-09-01'), 
         (2, 402, 'Sea View Resort', 5, '2023-09-15'), 
         (3, 401, 'Hotel Bliss', 3, '2023-10-02');
     INSERT INTO makemytrip_reviews VALUES 
         (1, 401, 'Hotel Bliss', 5, '2023-09-05'), 
         (2, 403, 'Mountain Retreat', 4, '2023-09-20'), 
         (3, 402, 'Sea View Resort', 4, '2023-10-01');

SELECT * FROM OYO_REVIEWS

SELECT * FROM MAKEMYTRIP_REVIEWS

/*
Find all hotels that have received ratings from both OYO and MakeMyTrip customers.
*/

SELECT O.HOTEL_NAME 
FROM OYO_REVIEWS O
JOIN MAKEMYTRIP_REVIEWS M
ON O.HOTEL_ID = O.HOTEL_ID
AND O.REVIEW_ID=M.REVIEW_ID

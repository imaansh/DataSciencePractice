## 1757. Recyclable and Low Fat Products
# Write your MySQL query statement below
SELECT 
PRODUCT_ID

FROM PRODUCTS

WHERE LOW_FATS = 'Y'
AND RECYCLABLE = 'Y'
GROUP BY 1


# 584. Find Customer Referee
# Write your MySQL query statement below
SELECT 
NAME 
FROM CUSTOMER 
WHERE referee_id <> 2
or referee_id is null


#570. Managers with at Least 5 Direct Reports
# Write your MySQL query statement below


SELECT B.NAME 
FROM (
SELECT MANAGERID
FROM EMPLOYEE 
GROUP BY 1
HAVING COUNT(MANAGERID) >= 5
) AS A
JOIN EMPLOYEE AS B
ON A.MANAGERID = B.ID

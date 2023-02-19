SELECT C.AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM(PRICE * SALES) AS TOTAL_SALES
FROM BOOK_SALES AS A
JOIN BOOK AS B ON A.BOOK_ID = B.BOOK_ID
JOIN AUTHOR AS C ON B.AUTHOR_ID = C.AUTHOR_ID
WHERE DATE_FORMAT(SALES_DATE, '%Y-%m') = '2022-01'
GROUP BY C.AUTHOR_ID, CATEGORY
ORDER BY C.AUTHOR_ID, CATEGORY DESC
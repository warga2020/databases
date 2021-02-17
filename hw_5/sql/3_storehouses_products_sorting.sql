CREATE TEMPORARY TABLE storehouses_products (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	value INT NOT NULL
);

-- наполняем таблицы данными, вызывая вставки вразброс
INSERT INTO storehouses_products (value) VALUES (0);
INSERT INTO storehouses_products (value) VALUES (RAND() * 10);

SELECT * FROM storehouses_products;

-- выборка со "своеобразной" сортировкой
SELECT *
FROM storehouses_products 
ORDER BY ISNULL(CASE WHEN value = 0 THEN NULL ELSE value END) ASC, value ASC;
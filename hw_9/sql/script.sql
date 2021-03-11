USE hw_9;
/*
В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
*/

START TRANSACTION;
SELECT * FROM shop.users u WHERE id = 1;
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
COMMIT;


/*
Создайте представление, которое выводит название name товарной позиции 
из таблицы products и соответствующее название каталога name из таблицы catalogs.
*/
USE hw_9;

CREATE OR REPLACE VIEW v_products_name AS 
SELECT p.name AS product_name, c.name AS catalog_name 
FROM products p 
LEFT JOIN catalogs c ON c.id = p.catalog_id;

SELECT * FROM v_products_name;


/*
Пусть имеется таблица с календарным полем created_at. 
В ней размещены разряженые календарные записи за август 2018 года: '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17. 
Составьте запрос, который выводит полный список дат за август, 
выставляя в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.
*/

CREATE TEMPORARY TABLE tmp (dd datetime);
INSERT INTO tmp VALUES 
('2018-08-31'),
('2018-08-21'),
('2018-08-17'),
('2018-08-16'),
('2018-08-11'),
('2018-08-04'),
('2018-08-01');
SELECT * FROM tmp;

SELECT *, (dd IS NOT NULL) is_exists 
FROM (
	SELECT str_to_date(concat(x.value, '.08.2018'), '%d.%m.%Y') AS v
	FROM (WITH RECURSIVE seq AS (SELECT 1 AS value UNION ALL SELECT value + 1 FROM seq LIMIT 31) SELECT * FROM seq) x
) AS ff
LEFT JOIN tmp ON tmp.dd = ff.v;


-- (по желанию) Пусть имеется любая таблица с календарным полем created_at. 
-- Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.





-- Создайте двух пользователей которые имеют доступ к базе данных shop. 
-- Первому пользователю shop_read должны быть доступны только запросы на чтение данных, 
-- второму пользователю shop — любые операции в пределах базы данных shop.

GRANT SELECT ON shop.* TO 'shop_read'@'localhost' IDENTIFIED WITH sha256_password BY 'shop_read_pass';

GRANT ALL ON shop.* TO 'shop'@'localhost';
GRANT GRANT OPTIONS ON shop.* TO shop;

-- (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, 
-- содержащие первичный ключ, имя пользователя и его пароль. 
-- Создайте представление username таблицы accounts, предоставляющий доступ к столбца id и name. 
-- Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы 
-- извлекать записи из представления username.

CREATE OR UPDATE VIEW username AS SELECT id, name FROM accounts;
GRANT SELECT(id,name) ON accounts TO 'user_read'@'localhost';



-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
-- в зависимости от текущего времени суток.
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP PROCEDURE IF EXISTS hello;
CREATE PROCEDURE hello()
BEGIN
	IF(current_time BETWEEN '06:00' AND '12:00') THEN 
		SELECT 'Доброе утро';
	ELSEIF (current_time BETWEEN '12:00' AND '18:00') THEN 
		SELECT 'Добрый день !';
	ELSEIF (current_time BETWEEN '18:00' AND '00:00') THEN 
		SELECT 'Доброй ночи';
	ELSE SIGNAL SQLSTATE '45000' SET message_text = 'invalid time to hello';
	END IF;
END

CALL hello();



-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.


DROP TRIGGER IF EXISTS products_right_insert;

CREATE TRIGGER products_right_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF (NEW.name IS NULL AND NEW.desription IS NULL) THEN 
		SIGNAL SQLSTATE '45000' SET message_text = 'All fields can\'t be NULL';
	END IF;
END

SELECT * FROM products p ;
INSERT INTO products (name, desription) VALUES (NULL,'test');


-- (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.


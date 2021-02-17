-- подготовка для создания рабочей таблицы с данными
CREATE TEMPORARY TABLE monthes (
	name VARCHAR(20)
);

INSERT INTO monthes VALUES 
	('January'),
	('February'),
	('March'),
	('April'),
	('May'),
	('June'),
	('July'),
	('August');

CREATE TEMPORARY TABLE users (
	id INT UNSIGNED,
	name VARCHAR(30),
	birthday_month VARCHAR (20) NOT NULL
); 

-- повторяем много раз для заполнения таблицы
INSERT INTO users (id, name, birthday_month) VALUES (
		1 + RAND() * 100,
		CONCAT('user_', id), 
		(SELECT name FROM monthes ORDER BY RAND() LIMIT 1)		
);

-- выборка по условию
SELECT * FROM users WHERE birthday_month in ('may', 'august');
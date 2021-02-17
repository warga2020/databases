-- таблица пользователей
CREATE TEMPORARY TABLE usrs (
	birthday DATE NOT NULL
);

-- повторяем много раз для заполнения данными
INSERT INTO usrs VALUES (
	STR_TO_DATE(
		CONCAT(
		LPAD(FLOOR(1 + RAND() * 28), 2, '0'), '/',
		LPAD(FLOOR(1 + RAND() * 11), 2, '0'), '/',
		FLOOR(RAND() * (2005 - 1980) + 1980)
		),
		'%d/%m/%Y'
	)
);


SELECT AVG(FLOOR(datediff(now(), birthday) / 365.2)) AS x FROM usrs;



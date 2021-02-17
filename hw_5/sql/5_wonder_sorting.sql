CREATE TEMPORARY TABLE catalogs (
	id int UNSIGNED NOT NULL
);
-- повторяем много раз
INSERT INTO catalogs VALUES (1 + rand() * 15);

-- задание определенного порядка
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY FIELD(id, 5, 1, 2) asc; 
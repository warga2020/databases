USE hw_7;
SHOW tables;

-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT u.* 
FROM users u
LEFT join orders o ON o.user_id = u.id
WHERE o.id IS NOT NULL;

-- Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT p2.name, c.name 
FROM products p2 
LEFT JOIN catalogs c ON c.id = p2.catalog_id;



-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, поле name — русское. 
-- Выведите список рейсов flights с русскими названиями городов.
CREATE TABLE flights (
	id serial PRIMARY KEY,
	`from` varchar(255) NOT NULL,
	`to` varchar(255) NOT NULL
);

INSERT INTO flights (`from`, `to`) VALUES 
('moscow','omsk'),
('novgorod','kazan'),
('irkutsk','moscow'),
('omsk','irkutsk'),
('moscow','kazan');

CREATE TABLE cities (
	label varchar(255) NOT NULL,
	name varchar(255) NOT null
);

INSERT INTO cities (label, name) VALUES 
('moscow','Москва'),
('irkutsk','Иркутск'),
('novgorod','Новгород'),
('kazan','Казань'),
('omsk','Омск');

SELECT 
-- 	f.`from`, f.`to`, 
	c1.name, c2.name
FROM flights f
LEFT JOIN cities c1 ON f.`from` = c1.label
LEFT JOIN cities c2 ON f.`to` = c2.label;



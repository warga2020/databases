USE example;

DROP TABLE IF EXISTS users; -- 

CREATE TABLE IF NOT EXISTS users (
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	name CHAR(50)
);

INSERT INTO users (name) VALUES ('user_1');
INSERT INTO users (id, name) VALUES (NULL, 'user_2');
INSERT INTO users (id, name) VALUES (0, 'user_3');
INSERT INTO users (id, name) VALUES (DEFAULT, 'user_4');


SELECT * FROM users u;
USE vk;
SHOW tables;

-- Вносим изменения в таблицу профилей
ALTER TABLE profiles MODIFY COLUMN gender ENUM('M', 'F');
-- Вносим изменение в таблицу групп
ALTER TABLE communities ADD COLUMN owner_id INT UNSIGNED NOT NULL AFTER id;


--==================
-- friendship_status
--==================
SELECT * FROM friendship_status fs;
TRUNCATE friendship_status;
INSERT INTO friendship_status (name) VALUES
 	('Requested'),
 	('Confirmed'),
 	('Rejected');

 
--==================
-- friendship
--==================
SELECT * FROM friendship f;
UPDATE friendship SET friend_id = FLOOR(1 + RAND() * 100); 
UPDATE friendship SET friendship_status_id = FLOOR(1 + RAND() * 3); 
 

--==================
-- media_type
--==================
SELECT * FROM media_type mt;
TRUNCATE media_type;
INSERT INTO media_type (id, name) VALUES 
 	(1, 'audio'),
 	(2, 'video'),
 	(3, 'image');
 

--==================
-- users
--==================
SELECT * FROM users u;
UPDATE users SET updated_at = NOW() WHERE created_at > updated_at;


--==================
-- profiles
--==================
SELECT * FROM profiles p;
UPDATE profiles SET birthday =  DATE_SUB(birthday, INTERVAL 10 DAY) WHERE birthday < DATE_SUB(NOW(), INTERVAL 2 YEAR); 


--==================
-- messages
--==================
SELECT * FROM messages m;
UPDATE messages SET from_user_id = FLOOR(1 + RAND() * 100); 
UPDATE messages SET to_user_id = FLOOR(1 + RAND() * 100); 


--==================
-- media
--==================
SELECT * FROM media;
UPDATE media SET file_size = (FLOOR(1000 + RAND() * 50000)) WHERE file_size < 1000;

CREATE TEMPORARY TABLE extensions (name VARCHAR(20));
INSERT INTO extensions VALUES ('.avi'), ('.mp3'), ('.mpeg4'), ('.png');

UPDATE media SET filename = CONCAT(
	'http://dropbox.com/',
	filename,
	(SELECT name FROM extensions ORDER BY rand() limit 1)
);

UPDATE media SET metadata = CONCAT(
	'{"owner":"',
	(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE users.id = media.user_id),
	'"}'
); 


UPDATE media SET media_type_id = 1 /*audio*/ WHERE substring_index(filename, '.', -1) = 'mp3';

UPDATE media SET media_type_id = 2 /*video*/ 
	WHERE substring_index(filename, '.', -1) = 'mpeg4' or
			substring_index(filename, '.', -1) = 'avi';

UPDATE media SET media_type_id = 3 /*image*/ WHERE substring_index(filename, '.', -1) = 'png';


--==================
-- communities
--==================
SELECT * FROM communities c;
UPDATE communities SET owner_id = FLOOR(1 + RAND() * 100);


--==================
-- communities_users
--==================
SELECT * FROM communities_users cu;
UPDATE communities_users SET user_id = FLOOR(1 + RAND() * 100);


DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;

USE vk;

CREATE TABLE users (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID пользователя",
	first_name VARCHAR(100) NOT NULL COMMENT "Имя пользователя",
	last_name VARCHAR(100) NOT NULL COMMENT "Фамилия пользователя",
	email VARCHAR(100) NOT NULL UNIQUE COMMENT "Почта",
	phone VARCHAR(100) NOT NULL UNIQUE COMMENT "Телефон",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"	
) COMMENT "Пользователи";

CREATE TABLE profiles (
	user_id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "FK на пользователя",
	gender CHAR(1) NOT NULL COMMENT "Пол",
	birthday DATE COMMENT "Дата рождения",
	city VARCHAR(130) COMMENT "Город",
	country VARCHAR(130) COMMENT "Страна",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"
) COMMENT "Профили";

CREATE TABLE messages (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID сообщения",
	from_user_id INT UNSIGNED NOT NULL COMMENT "ID отправителя сообщения", 
	to_user_id INT UNSIGNED NOT NULL COMMENT "ID получателя сообщения",
	body TEXT NOT NULL COMMENT "Текст сообщения",
	is_important BOOLEAN COMMENT "Признак важности",
	is_delivered BOOLEAN COMMENT "Признак доставки",
	created_at DATETIME DEFAULT NOW() COMMENT "Время создания сообщения"
) COMMENT "Сообщения";

CREATE TABLE friendship (
	user_id INT UNSIGNED NOT NULL COMMENT "ID инициатора дружбы",
	friend_id INT UNSIGNED NOT NULL COMMENT "ID кандидата в друзья",
	friendship_status_id INT UNSIGNED NOT NULL COMMENT "Состояние отношения",
	requested_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время отправки запроса дружить",
	confirmed_at DATETIME COMMENT "Время подтверждения дружбы",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи",
	PRIMARY KEY (user_id, friend_id) COMMENT "Составной первичный ключ"
) COMMENT "Дружба";

CREATE TABLE friendship_status (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID статуса отношения",
	name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название статуса",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"
) COMMENT "Справочник статусов дружбы";

CREATE TABLE communities (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID группы",
	name VARCHAR(150) NOT NULL UNIQUE COMMENT "Название группы",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"
) COMMENT "Группа";

CREATE TABLE communities_users (
	community_id INT UNSIGNED NOT NULL COMMENT "ID группы",
	user_id INT UNSIGNED NOT NULL COMMENT "ID пользователя",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"
) COMMENT "Связка пользователя с группой";

CREATE TABLE media (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "ID медиа-данных",
	user_id INT UNSIGNED NOT NULL COMMENT "ID пользователя - владельца медиа-данных",
	filename VARCHAR(255) NOT NULL COMMENT "Название медиа-файла",
	file_size INT UNSIGNED NOT NULL COMMENT "Размер файла", 
	metadata JSON COMMENT "Метаданные файла",
	media_type_id INT UNSIGNED NOT NULL COMMENT "ID медиа-типа",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"
) COMMENT "Media-данные (фото, аудио, видео)";


CREATE TABLE media_type (
	id INT UNSIGNED NOT NULL PRIMARY KEY COMMENT "ID медиа-типа",
	name VARCHAR(255) NOT NULL UNIQUE COMMENT "Название медиа-типа",
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания записи",
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления записи"
) COMMENT "Медиа-типы";

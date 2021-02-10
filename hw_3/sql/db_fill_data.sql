#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID группы',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группа';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'ullam', '2007-04-03 12:56:34', '1921-06-21 17:00:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'sit', '1953-03-06 09:19:00', '1942-09-25 11:13:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'autem', '1978-04-15 17:55:08', '1947-02-20 01:55:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'magnam', '1938-09-07 11:23:29', '1988-12-06 08:48:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'nesciunt', '1954-09-02 06:58:14', '1992-08-05 16:26:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'accusantium', '1961-07-17 13:26:42', '1998-05-01 12:53:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'maiores', '2019-11-22 12:02:17', '1964-03-10 04:18:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'veritatis', '2011-11-04 06:59:20', '1982-11-30 23:32:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'ea', '1992-04-24 02:00:00', '1995-05-26 17:42:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'minus', '1992-03-27 01:56:58', '2005-01-09 23:40:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'est', '1964-09-16 19:28:00', '1991-11-29 22:11:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'architecto', '1959-08-27 21:35:26', '1966-07-21 04:50:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'culpa', '1930-05-25 15:51:30', '1930-11-29 17:07:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'voluptas', '1928-08-07 07:44:02', '1933-03-30 14:44:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'fugiat', '1932-03-12 20:37:51', '1969-02-23 01:07:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'et', '1998-04-02 23:27:53', '1996-10-17 05:11:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'nemo', '1921-02-12 14:13:51', '1926-02-10 22:27:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'qui', '1931-04-12 16:51:21', '1940-06-11 22:04:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'laudantium', '1965-08-12 23:46:09', '2004-11-12 06:36:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'facere', '1994-12-16 04:31:18', '1923-05-16 18:33:47');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'ID группы',
  `user_id` int(10) unsigned NOT NULL COMMENT 'ID пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Связка пользователя с группой';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 1, '1993-03-16 10:42:03', '2010-02-14 00:11:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (2, 2, '1980-04-04 05:41:14', '1958-12-07 23:56:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (3, 3, '2020-04-04 11:10:58', '1926-01-03 06:10:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (4, 4, '2013-01-08 05:51:52', '1928-08-27 19:56:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (5, 5, '2016-01-18 19:58:30', '2013-01-08 21:07:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (6, 6, '1987-12-08 22:23:59', '1982-03-24 12:37:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (7, 7, '1982-11-20 06:16:21', '1965-02-10 14:21:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (8, 8, '1996-11-22 19:39:00', '1924-09-19 18:15:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (9, 9, '1955-02-26 07:46:48', '2010-12-30 08:29:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (10, 10, '1938-01-22 15:37:16', '2018-08-02 18:13:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (11, 11, '1938-07-13 02:56:04', '1995-08-06 08:41:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (12, 12, '1999-11-26 06:39:26', '2007-07-12 00:55:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (13, 13, '2010-03-12 02:47:10', '2005-07-17 02:24:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (14, 14, '1994-06-15 08:38:55', '1989-12-27 04:07:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (15, 15, '2019-02-11 09:36:50', '1946-02-26 11:34:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (16, 16, '1961-09-25 14:15:42', '2004-01-26 14:07:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (17, 17, '2009-01-06 18:55:13', '1931-10-03 02:22:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (18, 18, '1940-02-24 11:23:27', '1930-12-06 17:28:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (19, 19, '1955-11-20 10:11:29', '1992-02-03 05:55:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (20, 20, '1999-07-07 03:59:17', '1930-06-04 01:59:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 21, '1994-09-04 17:17:50', '1943-03-31 17:15:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (2, 22, '1933-10-08 21:17:53', '1973-01-06 21:17:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (3, 23, '1932-11-07 17:46:45', '1995-11-30 17:23:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (4, 24, '2011-11-20 16:38:41', '1974-01-01 01:55:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (5, 25, '1992-07-26 01:44:04', '1962-09-06 19:29:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (6, 26, '1931-04-30 23:49:35', '2002-11-18 03:25:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (7, 27, '1977-04-06 20:37:53', '1971-10-18 03:37:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (8, 28, '1945-12-25 11:16:48', '1960-02-08 03:12:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (9, 29, '2016-01-01 21:38:10', '1961-09-24 11:20:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (10, 30, '1929-04-20 16:47:43', '2009-10-11 00:12:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (11, 31, '1972-11-12 16:45:14', '1936-02-21 02:46:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (12, 32, '1994-02-22 14:04:07', '1975-08-25 00:18:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (13, 33, '2006-12-12 20:51:05', '1950-01-23 20:11:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (14, 34, '1953-04-10 07:23:48', '2018-02-24 03:00:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (15, 35, '1937-02-25 07:00:37', '1941-02-23 19:40:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (16, 36, '1950-11-06 04:33:39', '1993-03-21 22:23:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (17, 37, '1993-12-15 15:56:20', '1932-11-14 13:32:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (18, 38, '2008-11-04 01:12:12', '1981-11-01 06:23:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (19, 39, '1994-01-12 15:44:37', '2020-08-12 03:59:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (20, 40, '1958-09-17 06:09:49', '2012-08-27 00:40:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 41, '1926-08-11 03:01:37', '2017-08-11 18:14:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (2, 42, '1999-03-11 16:28:32', '1963-10-18 14:22:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (3, 43, '1961-10-18 19:52:17', '1977-10-14 18:19:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (4, 44, '1992-03-18 17:45:10', '2011-02-22 01:03:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (5, 45, '1966-07-27 06:21:58', '2004-11-03 06:43:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (6, 46, '1937-10-08 19:27:31', '1994-10-04 05:38:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (7, 47, '1945-02-11 07:59:23', '2009-10-21 12:00:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (8, 48, '1967-12-06 01:16:37', '1927-01-07 14:13:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (9, 49, '1989-01-31 18:51:16', '1974-05-09 08:15:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`, `updated_at`) VALUES (10, 50, '2004-02-02 18:03:30', '1986-07-28 09:25:18');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'ID инициатора дружбы',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'ID кандидата в друзья',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Состояние отношения',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправки запроса дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения дружбы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Дружба';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2013-10-17 15:31:34', '1940-04-03 00:36:56', '1948-05-07 17:55:10', '1959-04-26 19:16:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1953-12-28 19:53:52', '1998-06-10 15:54:36', '1980-12-14 17:22:43', '1937-02-02 11:53:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '1983-01-06 01:22:13', '1991-01-16 13:02:40', '1938-01-13 09:17:43', '1972-12-18 22:20:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2010-08-30 09:52:02', '1939-04-29 12:09:24', '1952-05-13 10:37:28', '2019-03-11 08:23:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '1999-01-17 05:47:32', '1926-01-08 04:57:01', '1995-06-20 21:20:07', '2007-07-05 12:32:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 1, '1974-08-19 04:52:08', '1934-10-17 01:45:09', '1966-11-26 11:10:55', '1959-09-24 05:20:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 2, '1977-11-05 11:34:21', '1953-10-02 23:55:54', '2001-01-24 23:30:38', '1946-05-22 02:41:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 3, '1957-11-15 03:09:13', '1930-08-28 03:48:25', '1955-07-25 13:17:56', '1985-02-18 17:04:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 4, '1960-08-11 04:26:53', '1981-06-08 01:11:36', '1991-02-14 16:12:23', '1927-02-27 01:41:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 5, '2013-11-09 09:12:32', '1985-07-11 21:30:18', '1970-05-05 01:12:29', '1945-12-10 04:49:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 1, '2005-05-09 21:35:55', '1965-10-06 17:00:30', '1991-03-10 23:15:53', '1995-05-20 11:33:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 2, '1933-12-20 00:45:40', '1983-09-29 04:39:52', '1999-11-10 05:32:26', '1948-03-08 11:21:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 3, '2008-02-29 06:59:38', '2018-09-30 18:43:52', '1989-09-12 17:28:20', '1942-04-26 10:14:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 4, '1927-05-19 20:40:22', '1932-06-28 06:30:35', '1965-11-07 16:29:58', '1944-02-17 04:19:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 5, '1924-02-12 16:04:14', '1991-10-28 21:57:15', '1962-02-01 08:09:18', '1986-03-04 22:35:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 1, '1991-12-03 12:06:36', '1932-08-09 19:18:07', '1998-04-13 06:55:51', '1932-04-23 18:05:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 2, '1990-12-10 07:52:47', '1942-10-24 21:13:31', '1990-09-30 01:05:40', '2015-11-26 22:15:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 3, '1932-03-05 17:25:35', '1935-09-24 01:34:09', '1942-02-13 16:34:41', '1984-04-20 20:07:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 4, '2020-06-03 08:25:58', '1958-03-14 14:56:42', '2020-10-08 20:02:56', '1962-01-20 15:03:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 5, '1994-04-16 11:19:48', '1930-08-02 15:50:49', '1951-07-19 17:53:38', '1971-09-26 12:21:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 1, '2016-08-31 21:09:05', '1943-04-28 12:43:50', '2003-04-23 00:42:48', '2016-12-08 06:33:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 2, '1996-01-10 21:12:11', '1947-03-21 13:08:33', '1980-01-23 08:29:20', '1936-12-23 01:50:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 3, '1973-04-29 06:12:18', '2020-01-21 19:38:05', '1921-10-31 15:07:39', '1944-01-02 15:18:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 4, '1994-10-25 21:29:27', '2007-09-22 05:47:13', '1970-12-13 07:07:59', '1967-10-20 10:53:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 5, '1947-12-17 22:30:07', '2003-12-15 17:56:35', '1965-03-10 14:46:47', '2010-12-06 07:32:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 1, '1945-01-26 22:04:56', '1926-04-23 00:39:22', '1981-04-13 11:57:48', '2020-08-02 12:33:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 2, '1946-10-09 10:09:57', '1974-06-21 12:02:37', '1970-12-28 18:33:21', '2004-08-03 13:37:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 3, '1998-05-16 20:48:13', '1960-03-11 21:02:54', '2001-03-11 14:29:35', '1961-09-28 20:16:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 4, '2016-02-22 22:48:22', '1971-06-30 04:20:54', '1998-05-12 04:49:14', '1992-05-29 01:42:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 5, '2015-12-22 11:04:01', '1932-04-08 15:24:14', '2010-01-25 00:12:30', '1970-06-18 05:26:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '1996-02-28 01:23:56', '1939-12-05 10:08:42', '2011-05-19 05:39:51', '2002-10-16 13:43:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '1978-04-22 19:46:24', '1993-08-15 05:39:09', '2010-01-16 17:56:36', '1958-03-17 23:37:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2010-11-23 02:30:25', '1967-05-16 03:25:58', '2018-01-31 18:30:21', '1993-01-21 05:29:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 4, '1935-10-15 19:33:02', '1952-02-25 01:03:50', '1926-11-08 16:23:51', '1929-05-22 10:18:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 5, '1983-01-09 02:16:15', '2017-04-17 02:10:10', '1938-05-14 04:22:55', '1973-07-08 10:22:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 1, '2005-02-03 03:49:09', '1942-07-02 09:36:28', '2001-09-13 07:16:26', '2007-06-10 07:32:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 2, '1947-11-19 06:19:32', '2007-12-27 01:53:02', '1930-10-08 13:26:36', '1985-02-07 01:15:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 3, '1985-09-17 16:11:53', '2008-02-06 08:47:13', '1945-04-22 04:57:32', '1956-04-08 02:41:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 4, '2005-08-20 14:41:30', '1969-10-18 13:31:30', '1978-05-17 01:25:23', '1998-12-29 05:57:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 5, '1999-10-22 13:05:23', '1947-03-03 17:04:40', '1974-03-14 01:06:04', '1961-12-30 14:56:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 1, '1992-08-08 05:35:07', '1947-08-23 23:25:43', '1932-05-28 15:10:14', '1960-08-30 13:26:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 2, '1926-10-02 04:37:14', '1923-02-26 08:33:53', '2012-04-04 13:48:01', '1974-09-16 12:59:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 3, '1995-09-03 07:49:45', '2010-09-07 02:45:27', '1981-06-11 02:30:28', '1959-01-25 21:55:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 4, '1969-12-02 15:52:19', '1956-12-29 11:21:37', '1954-12-30 12:10:28', '1928-12-21 00:24:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 5, '1965-08-27 18:56:34', '1922-11-10 00:22:30', '2016-10-18 04:17:27', '2009-04-21 03:05:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 1, '2003-11-02 08:29:41', '2014-10-13 17:13:07', '1963-02-26 16:16:53', '1964-12-18 05:59:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '1951-07-18 20:05:50', '1980-01-09 01:09:58', '1922-02-22 12:30:24', '1964-02-29 01:25:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '2016-10-20 22:21:01', '2018-07-19 13:33:12', '1931-01-21 15:19:33', '2001-09-12 14:39:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 4, '1940-01-06 18:21:21', '1929-07-16 13:47:59', '1926-09-26 07:29:24', '1953-06-25 13:46:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 5, '1978-06-28 20:08:04', '2015-10-19 00:23:21', '1923-01-02 08:52:04', '2017-01-20 22:25:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 1, '1923-10-24 05:22:47', '1939-12-11 09:49:35', '1945-07-23 14:00:16', '1940-02-13 02:57:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 2, '1977-11-19 18:04:44', '1934-08-12 15:13:59', '2020-05-19 03:28:45', '2006-04-26 05:06:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 3, '1945-07-19 05:26:07', '1922-07-04 11:00:44', '2015-08-07 07:46:25', '1946-05-17 10:42:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 4, '1926-02-09 07:41:49', '1953-04-17 12:16:45', '1943-12-17 01:08:08', '2003-05-23 21:42:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 5, '1962-11-25 10:30:55', '1947-08-18 18:54:18', '2016-01-17 21:00:14', '1996-05-08 13:50:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 1, '2008-01-15 05:59:29', '1940-05-30 11:57:31', '1975-11-09 04:59:04', '1923-04-03 05:52:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 2, '1940-09-07 23:31:40', '1951-11-19 19:31:31', '1976-11-03 16:44:13', '1987-02-23 20:11:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 3, '1931-03-21 03:04:21', '1986-11-10 20:18:26', '1989-03-03 08:08:07', '1955-04-27 00:22:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 4, '1936-05-28 05:42:33', '1941-10-11 06:08:49', '1952-05-17 21:12:56', '2005-06-17 16:16:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 5, '2005-10-20 22:26:08', '1943-08-23 18:27:50', '1958-03-03 04:19:35', '1961-09-30 10:21:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '1997-07-06 14:38:14', '1981-06-29 04:00:43', '2009-02-13 18:14:45', '1928-03-21 00:15:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '1941-07-20 03:12:57', '1973-04-03 03:38:34', '1987-04-23 00:06:59', '1925-12-14 22:52:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '2011-06-07 20:07:30', '1953-01-25 23:23:27', '2003-01-31 19:01:40', '1950-07-03 10:04:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 4, '2018-06-29 03:56:19', '1934-02-14 08:48:36', '1933-07-24 09:39:25', '1996-07-15 10:51:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 5, '1927-01-03 14:30:53', '2008-09-30 00:41:56', '1950-10-18 21:24:36', '1946-08-29 04:27:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 1, '1955-01-21 02:52:16', '1924-02-25 21:37:39', '1971-05-02 19:54:54', '1991-12-15 05:28:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 2, '1945-11-16 01:25:19', '1924-10-19 01:09:55', '1922-12-19 12:09:05', '1939-03-14 06:51:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 3, '1991-07-10 19:23:37', '2010-07-24 03:55:29', '2004-12-27 09:47:16', '1926-07-03 07:25:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 4, '1924-07-13 19:04:16', '1938-02-06 22:22:44', '1998-10-26 22:14:27', '1964-04-13 08:27:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 5, '1978-12-17 07:04:15', '1992-08-23 02:44:06', '1926-01-15 00:08:55', '1972-11-24 01:18:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 1, '1922-08-12 19:33:38', '2017-05-07 17:42:32', '1970-11-26 22:50:10', '1944-08-07 11:18:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 2, '2012-05-23 21:56:46', '2003-05-25 01:01:32', '1981-01-01 06:06:06', '1983-07-30 20:43:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 3, '1928-08-06 15:29:35', '1933-09-07 05:35:43', '1969-04-02 15:59:41', '1930-10-14 23:12:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 4, '1981-05-28 22:37:16', '1956-01-24 02:03:25', '1985-03-29 01:26:08', '1990-04-26 12:13:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 5, '1975-02-13 10:02:16', '1940-11-11 09:53:38', '1977-03-11 23:57:52', '2019-09-07 06:19:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 1, '2008-11-17 17:41:00', '2012-04-07 00:02:16', '1948-11-02 19:28:19', '2015-02-03 09:48:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 2, '1967-11-26 04:11:45', '1979-06-24 03:12:14', '1936-04-08 14:58:53', '1989-09-06 06:10:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 3, '1988-12-25 09:56:15', '1971-01-22 10:34:27', '2005-07-27 16:32:41', '1976-04-06 13:29:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 4, '2006-02-12 22:37:15', '2012-04-02 13:42:17', '1926-01-08 22:00:34', '1964-12-22 18:31:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 5, '2013-05-14 02:49:00', '2009-03-30 03:59:06', '1941-11-21 23:10:41', '2019-11-19 18:03:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 1, '2000-06-17 14:01:43', '1984-12-21 18:03:34', '1926-11-29 14:28:05', '2016-10-29 19:41:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 2, '1943-06-20 10:21:59', '2001-06-08 07:52:10', '1961-05-28 14:30:07', '1973-01-21 02:27:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 3, '1951-06-04 15:03:12', '1963-11-23 22:43:59', '2013-05-29 00:07:22', '1941-04-24 09:52:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 4, '1971-05-04 07:34:26', '1989-05-21 23:40:44', '1949-06-20 08:39:51', '1988-04-10 07:34:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 5, '2005-11-04 11:35:05', '1956-11-07 03:50:03', '1997-03-09 23:24:12', '1973-06-03 14:23:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 1, '1970-12-27 18:03:53', '1956-12-11 19:07:45', '2006-02-16 14:49:31', '2017-12-13 20:41:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 2, '1980-12-06 19:10:46', '1989-01-12 13:40:01', '2001-01-27 05:27:50', '1926-07-21 12:36:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 3, '2005-08-01 16:54:53', '2003-06-15 11:09:19', '1966-06-10 06:08:04', '1973-04-21 11:26:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 4, '1939-02-17 19:56:44', '1922-09-29 10:20:17', '1966-04-27 08:10:25', '1965-08-05 10:34:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 5, '1955-02-07 09:14:28', '1969-05-30 20:35:46', '2004-11-29 22:37:44', '1936-03-17 17:22:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 1, '1994-09-16 19:25:05', '2012-11-04 20:15:38', '1962-07-19 06:44:16', '1992-03-16 03:14:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 2, '2009-04-15 20:13:04', '1970-01-03 21:28:33', '1998-11-21 21:16:51', '2001-10-04 09:03:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 3, '1934-07-17 03:00:45', '1935-04-26 11:44:36', '1939-09-17 20:56:36', '2006-05-07 20:58:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 4, '1994-07-27 15:13:32', '1954-06-12 05:39:47', '2002-12-03 10:14:38', '1923-11-25 20:14:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 5, '1924-02-02 14:27:00', '2003-01-19 21:20:42', '1975-06-19 11:16:32', '2001-03-07 06:53:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 1, '1987-10-28 13:21:42', '1957-02-28 05:51:04', '2001-03-16 02:26:37', '1924-04-14 13:19:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 2, '1964-11-07 15:19:27', '2014-12-09 18:52:00', '1989-04-30 21:22:26', '1989-01-25 08:31:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 3, '1990-02-24 18:04:17', '2006-04-01 16:43:03', '1999-02-26 19:27:11', '1937-09-28 05:54:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 4, '2005-03-16 19:12:53', '1943-11-27 12:28:45', '1993-02-08 16:20:31', '1937-10-31 12:30:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 5, '1965-09-13 10:34:40', '1954-04-18 14:39:40', '2019-02-24 12:43:22', '2003-05-21 21:46:21');


#
# TABLE STRUCTURE FOR: friendship_status
#

DROP TABLE IF EXISTS `friendship_status`;

CREATE TABLE `friendship_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID статуса отношения',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Справочник статусов дружбы';

INSERT INTO `friendship_status` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'eaque', '1969-11-08 03:53:23', '1943-10-10 05:36:41');
INSERT INTO `friendship_status` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'perferendis', '1928-07-30 03:42:47', '1969-05-07 08:11:36');
INSERT INTO `friendship_status` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'doloremque', '1949-06-14 14:29:56', '1976-10-21 10:43:27');
INSERT INTO `friendship_status` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'in', '1936-01-10 04:34:00', '1970-04-29 15:50:12');
INSERT INTO `friendship_status` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'sed', '1968-04-06 10:27:27', '1974-03-27 05:16:00');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID media-данных',
  `user_id` int(10) unsigned NOT NULL COMMENT 'ID пользователя - владельца медиа-данных',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название медиа-файла',
  `file_size` int(10) unsigned NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'ID медиа-типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Media-данные (фото, аудио, видео)';

#
# TABLE STRUCTURE FOR: media_type
#

DROP TABLE IF EXISTS `media_type`;

CREATE TABLE `media_type` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID медиа-типа',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название медиа-типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиа-типы';

INSERT INTO `media_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'sed', '1977-05-31 21:02:33', '2009-11-19 07:57:59');
INSERT INTO `media_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'rem', '1921-08-22 11:26:48', '1925-09-05 04:49:20');
INSERT INTO `media_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'expedita', '1970-02-16 06:23:22', '1963-02-04 10:48:41');
INSERT INTO `media_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dolorem', '1982-01-21 16:19:27', '1952-03-23 09:22:11');
INSERT INTO `media_type` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quis', '1936-11-20 11:42:10', '1924-05-24 17:15:29');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID сообщения',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'ID отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'ID получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания сообщения',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '1994-12-01', 'Krajcikton', 'Vanuatu', '2013-06-05 01:30:56', '1943-02-21 02:21:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1985-10-11', 'Hilllland', 'Oman', '1992-07-19 19:28:59', '1973-12-22 14:41:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '2018-06-24', 'Alysaside', 'Bahrain', '1983-06-12 02:02:10', '1943-12-25 14:14:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'f', '1969-05-08', 'Daughertyfurt', 'Fiji', '2019-10-29 17:11:28', '1976-12-23 08:32:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'f', '1929-12-28', 'Lake Miltonborough', 'El Salvador', '1975-09-04 10:10:23', '1939-12-29 21:47:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'f', '1985-03-20', 'South Hayden', 'Lithuania', '2011-04-20 10:44:02', '2001-06-09 09:03:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1946-08-11', 'Port Javier', 'Maldives', '1931-08-04 18:19:33', '2004-08-26 12:37:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'm', '1988-04-14', 'Jamelmouth', 'United States of America', '1948-09-30 10:27:52', '1973-02-08 10:05:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'm', '2002-02-20', 'South Zachery', 'Kyrgyz Republic', '1988-06-26 20:03:03', '1963-07-05 08:56:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'f', '2008-01-16', 'Port Westleyburgh', 'San Marino', '1928-09-26 12:46:20', '1935-06-28 22:49:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'm', '1982-08-11', 'Crawfordstad', 'Burkina Faso', '1958-12-09 20:12:38', '1935-12-27 04:22:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'f', '1921-08-15', 'New Zita', 'Iraq', '1921-08-01 14:17:00', '1996-05-12 05:42:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'f', '1967-07-03', 'Kristyborough', 'Cambodia', '1930-08-13 18:55:25', '2003-01-31 05:38:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1995-05-17', 'Port Adanstad', 'Thailand', '1938-12-10 14:16:15', '2002-02-23 01:27:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '1966-01-23', 'West Corrinechester', 'Georgia', '1989-03-14 09:27:06', '1964-02-26 10:24:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'f', '1995-08-19', 'Adeliaberg', 'Lao People\'s Democratic Republic', '1972-01-23 20:43:45', '1960-02-24 22:04:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'm', '2001-09-30', 'Kozeyville', 'France', '1982-12-16 02:40:12', '1938-04-01 00:18:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1928-04-08', 'North Bohaven', 'Greenland', '1962-04-29 19:49:21', '2013-02-10 11:25:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '1945-09-18', 'Lonzotown', 'Bouvet Island (Bouvetoya)', '1989-02-17 04:59:25', '1979-04-03 00:15:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'f', '2004-10-25', 'East Rosaliaside', 'Nepal', '1973-12-09 00:51:57', '1964-05-26 22:15:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '1940-11-07', 'Sashahaven', 'Togo', '1934-11-08 19:51:58', '2013-11-29 21:59:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'f', '1948-07-14', 'Wittingfort', 'Cote d\'Ivoire', '1930-11-28 12:14:20', '1975-03-27 18:12:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'm', '1937-03-27', 'New Erna', 'Benin', '1972-02-24 19:39:29', '1952-03-17 18:15:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'm', '1977-10-06', 'Port Vanceburgh', 'Bulgaria', '1984-05-07 06:29:27', '1999-01-03 02:33:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'f', '1965-11-04', 'Addisonchester', 'Cambodia', '1996-10-21 20:00:48', '2010-03-06 16:57:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '1998-01-27', 'New Devontechester', 'Saint Barthelemy', '1968-08-20 23:19:08', '1947-12-02 01:26:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'm', '1946-03-20', 'West Justonchester', 'Tonga', '1954-09-15 18:16:51', '1929-10-17 23:33:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'm', '1981-06-12', 'New Myrl', 'Norfolk Island', '1956-01-31 12:18:17', '2018-03-19 19:05:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'f', '1966-02-09', 'Port Katharina', 'Ecuador', '2007-07-01 12:48:24', '1970-12-03 14:26:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '1960-12-08', 'Jessikahaven', 'San Marino', '1983-12-11 10:47:01', '1940-08-28 16:16:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1952-12-07', 'Rebafurt', 'Equatorial Guinea', '1922-11-11 13:27:31', '2004-08-19 03:22:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'm', '1989-11-30', 'North Mercedesberg', 'Iran', '1976-09-01 02:57:33', '1959-10-01 06:54:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1958-08-28', 'Port Fletaton', 'Paraguay', '2004-07-10 12:30:29', '1970-02-26 16:05:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'f', '2006-06-26', 'Mohammadmouth', 'Belarus', '1936-04-19 03:55:36', '2011-04-23 12:22:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'm', '1997-10-04', 'Watsicashire', 'New Zealand', '1974-09-23 18:16:17', '1927-12-05 03:20:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'm', '2007-11-26', 'Callieton', 'Denmark', '2007-02-27 12:31:57', '1990-01-01 09:34:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'f', '1977-04-05', 'North Bria', 'Namibia', '1961-12-20 19:02:57', '1989-12-24 07:17:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '2006-05-07', 'West Jaydonberg', 'Guyana', '1977-11-09 09:43:13', '1987-10-28 09:28:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'f', '1947-05-28', 'Port Hubertfort', 'Bulgaria', '2020-05-23 07:45:07', '2017-12-27 19:00:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'f', '1969-05-31', 'Havenstad', 'Sweden', '1999-08-24 23:58:06', '1936-09-16 20:08:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'f', '1971-03-20', 'Wehnerville', 'Montenegro', '2002-08-12 06:14:33', '1956-11-18 12:11:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '1971-01-23', 'Bradtkebury', 'Latvia', '1961-07-31 05:59:21', '1975-12-09 23:33:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'f', '1968-09-21', 'Lake Gersonhaven', 'Malawi', '2004-06-20 18:01:32', '1964-09-22 09:19:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'm', '1927-08-22', 'New Jeraldborough', 'Oman', '2003-02-18 08:45:17', '1973-12-04 15:43:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '2016-10-26', 'Connellyport', 'India', '1974-04-01 16:02:50', '1962-05-09 09:05:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'f', '1962-06-07', 'South Wyattmouth', 'Ireland', '1983-07-20 07:58:32', '1924-10-07 09:45:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'm', '1996-05-10', 'Andrewfort', 'Netherlands Antilles', '1926-05-25 19:38:46', '1926-02-26 11:20:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'm', '1956-02-26', 'Lake Danial', 'Saint Lucia', '2003-07-19 01:29:58', '1967-09-25 20:15:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'm', '1944-02-29', 'Veldaton', 'Luxembourg', '2011-03-09 23:27:54', '2012-03-02 08:53:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'f', '2010-01-24', 'Lorinebury', 'Svalbard & Jan Mayen Islands', '1938-05-15 16:29:31', '2013-10-04 22:55:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'f', '1987-09-24', 'North Matteo', 'Gambia', '2007-05-15 08:55:49', '2009-12-12 22:38:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '1986-08-07', 'Zaneburgh', 'Greece', '1970-11-18 21:41:23', '1977-02-08 18:43:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'm', '1986-02-04', 'Valerieland', 'Kuwait', '1989-07-04 09:39:11', '1982-06-13 03:36:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1936-04-10', 'Raphaelhaven', 'Jordan', '1977-08-06 13:00:40', '1963-06-18 02:17:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'm', '1929-07-29', 'Lake Dwightmouth', 'Kyrgyz Republic', '1954-12-19 05:09:30', '1958-08-15 07:00:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'm', '1925-03-31', 'Port Danny', 'Estonia', '1924-11-07 07:29:55', '1978-04-27 01:32:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1995-01-19', 'Lake Careyview', 'Haiti', '1994-01-18 06:16:37', '1951-07-27 04:02:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '2018-07-24', 'Mohammedchester', 'Sierra Leone', '1945-01-13 21:45:21', '1997-07-15 20:42:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'f', '1966-09-03', 'East Percival', 'Syrian Arab Republic', '1972-10-20 08:09:08', '1925-02-25 07:55:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '1997-01-13', 'North Elda', 'Philippines', '2020-08-18 10:50:27', '2010-01-03 11:26:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'm', '1987-05-24', 'Lake Elvera', 'Seychelles', '1964-11-04 22:57:50', '1950-11-23 09:19:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '1921-04-05', 'Walshville', 'United States of America', '1982-04-20 16:40:12', '1957-03-22 13:16:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '1938-10-27', 'Terencefort', 'Bermuda', '1967-10-28 13:54:21', '1984-03-23 08:42:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'm', '1981-09-19', 'Port Al', 'Sao Tome and Principe', '1973-10-01 07:53:31', '1985-01-13 08:59:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'm', '2010-10-20', 'Earnestineberg', 'Falkland Islands (Malvinas)', '1997-11-01 16:10:31', '1925-05-25 17:43:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'm', '1922-03-09', 'East Sydney', 'Mongolia', '1921-11-24 07:35:05', '1983-12-08 15:16:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'm', '1943-06-06', 'Pourosbury', 'Antigua and Barbuda', '1948-03-23 17:50:13', '1960-02-23 04:37:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'f', '2003-06-06', 'East Jacques', 'Slovakia (Slovak Republic)', '1935-03-14 23:24:30', '1969-10-02 14:28:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'f', '1988-05-14', 'Quigleyside', 'Central African Republic', '1983-07-02 06:03:45', '1944-06-19 11:23:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '1927-11-09', 'Mrazchester', 'Macedonia', '2001-10-20 11:02:13', '1987-12-07 07:50:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '1981-07-02', 'Hahnton', 'Bhutan', '1990-03-16 01:05:15', '1929-12-04 18:31:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '1991-09-14', 'Port Earnest', 'Macedonia', '1925-10-05 19:12:26', '1955-12-20 18:28:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'f', '1952-06-14', 'Bartonmouth', 'Senegal', '2000-01-24 10:47:48', '1923-05-09 07:05:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'f', '1932-02-01', 'Ozellaton', 'Serbia', '1979-12-11 03:41:26', '2008-11-04 20:17:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'f', '2010-05-03', 'Hubertstad', 'Kenya', '1958-10-01 18:33:22', '2020-08-23 18:56:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '1989-12-20', 'Hendersonborough', 'Bangladesh', '1942-08-24 00:42:27', '1980-03-31 08:06:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '1981-09-19', 'Runolfssonside', 'Saudi Arabia', '1923-12-11 22:57:19', '1925-08-18 08:07:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'f', '2000-04-06', 'Tamiachester', 'Bouvet Island (Bouvetoya)', '1973-04-23 00:30:56', '2011-11-14 23:39:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'f', '1961-11-16', 'Jakubowskiview', 'Turkmenistan', '2001-07-29 00:29:35', '2004-04-02 15:42:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '2005-12-17', 'Lake Sandyborough', 'Canada', '2011-10-20 19:46:25', '1959-07-07 00:07:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'f', '1975-12-06', 'Jenkinsborough', 'Nepal', '2015-04-18 07:58:58', '1944-11-28 15:46:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'f', '1967-02-15', 'Dillanborough', 'Malawi', '1962-07-25 03:35:21', '1937-05-06 03:10:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1928-12-12', 'Heatherstad', 'Tajikistan', '1971-02-10 20:01:10', '1933-10-01 07:18:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1937-09-04', 'Jerrellshire', 'Western Sahara', '2007-07-19 13:57:29', '1985-03-06 02:15:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'm', '2006-07-01', 'Ricardohaven', 'Faroe Islands', '2021-02-09 23:11:41', '1982-07-12 09:53:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '2020-07-29', 'Pacochaborough', 'Guinea', '1965-05-09 08:04:28', '1960-08-21 13:37:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2016-03-12', 'Shayleemouth', 'Liberia', '1998-06-07 20:36:59', '1988-06-04 12:16:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'm', '1938-01-08', 'West Waldoport', 'Maldives', '1934-02-03 11:07:58', '1932-07-02 18:33:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '2013-08-21', 'East Ebba', 'San Marino', '1987-07-21 20:14:51', '1979-11-15 13:50:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'f', '1930-05-19', 'Gerholdchester', 'Cyprus', '1968-10-12 08:17:57', '1972-07-14 06:14:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'm', '1982-10-08', 'Jaronmouth', 'French Polynesia', '1942-07-10 12:24:40', '1961-10-15 10:40:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'f', '1936-03-15', 'Paulshire', 'Jordan', '1992-03-02 02:39:12', '1960-03-03 02:42:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'm', '1983-02-07', 'South Jovan', 'Lithuania', '1960-04-29 02:43:20', '1968-10-03 22:26:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1946-05-30', 'Port Penelopeside', 'Syrian Arab Republic', '2016-03-30 18:31:26', '1998-06-20 16:09:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '1942-06-07', 'West Margarita', 'Bhutan', '1956-03-08 18:25:09', '1937-04-18 06:04:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1965-07-23', 'West Leonberg', 'Bermuda', '1935-07-31 06:23:11', '1972-07-25 01:05:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'f', '1934-04-18', 'Rileyview', 'France', '2014-05-28 05:28:57', '2019-08-19 18:04:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '1926-12-09', 'Hartmannchester', 'Uganda', '1977-03-15 03:39:39', '1982-05-12 02:45:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'f', '1927-03-10', 'West Steve', 'Colombia', '1950-08-11 02:28:18', '1961-03-01 00:03:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '1925-12-26', 'Lake Karianeburgh', 'Portugal', '1969-03-24 16:46:43', '1930-04-30 20:44:01');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания записи',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления записи',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Willa', 'Brakus', 'cydney28@corkerylangosh.com', '988-189-0660', '2006-10-22 06:17:12', '1993-03-29 12:35:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Bert', 'Yundt', 'aubree70@yahoo.com', '427-874-5080', '1975-07-16 08:48:13', '1935-12-21 16:43:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Tomas', 'Turcotte', 'isidro.rolfson@russel.com', '1-284-814-1697x97821', '2013-03-08 23:11:41', '2003-04-12 01:13:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Tabitha', 'Goodwin', 'batz.clinton@yahoo.com', '607.362.6825x774', '2020-12-04 18:23:47', '1966-03-11 07:04:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Hillary', 'Padberg', 'omer74@gmail.com', '797-456-6367x80968', '1996-05-08 00:31:19', '1953-11-02 11:28:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Nick', 'Leuschke', 'lewis.stehr@gerlach.info', '(309)456-8367', '2000-05-02 21:04:10', '2009-08-10 04:23:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Antonia', 'Goldner', 'rowan.runte@gmail.com', '438-996-0721', '2011-03-24 07:04:13', '1936-04-23 11:56:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Gerhard', 'Runolfsdottir', 'ulindgren@yahoo.com', '(666)904-3210', '1985-04-16 13:55:17', '1951-10-19 16:19:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Dortha', 'Spinka', 'albin92@yahoo.com', '+84(8)0009419908', '1959-10-02 00:43:40', '1951-05-17 20:22:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Fay', 'Leffler', 'colleen13@gmail.com', '669.466.0761x01671', '2008-09-12 13:23:08', '1950-08-13 22:27:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Geovanny', 'Dibbert', 'tillman.darby@hotmail.com', '08588201225', '2002-09-23 11:37:12', '1964-02-27 15:33:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Chaz', 'Stracke', 'alana38@hotmail.com', '862-339-6242', '1984-03-09 15:48:23', '1976-08-07 09:17:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Modesta', 'Haley', 'lucas.stiedemann@okon.info', '+89(8)7425056586', '1921-11-10 04:53:48', '1932-05-05 07:57:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Rolando', 'Kassulke', 'fgusikowski@hotmail.com', '937.174.6363x8324', '1965-08-24 09:52:13', '2002-03-14 03:33:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Katheryn', 'Huels', 'wbernhard@emmerichgislason.biz', '286.618.6134', '1956-02-14 01:56:55', '1984-02-11 11:56:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Raheem', 'Koepp', 'emard.immanuel@hotmail.com', '(146)479-7155', '1923-02-04 14:55:12', '1969-06-21 12:01:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Sandy', 'Hermann', 'xlarkin@abernathylabadie.com', '(639)868-9951', '2018-03-05 14:34:28', '1949-10-24 15:27:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Jaydon', 'VonRueden', 'vcremin@gmail.com', '(347)506-4873', '2001-01-20 04:44:43', '1959-08-18 13:16:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Dolores', 'Botsford', 'heath.shanahan@oconnell.org', '912.979.3700', '1926-09-02 10:19:02', '1922-09-15 14:54:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Dena', 'Ratke', 'agutkowski@anderson.biz', '409.223.2758', '1990-06-04 04:59:30', '2000-12-27 16:19:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Kattie', 'Simonis', 'ystrosin@torphy.com', '(218)753-5461', '1926-11-27 09:07:15', '1975-07-27 21:25:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Mae', 'Schamberger', 'nedra.mclaughlin@yahoo.com', '213.154.3177x881', '1940-10-27 00:52:39', '1937-05-19 01:34:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Tanner', 'Hyatt', 'rath.toni@gmail.com', '+92(9)8268989278', '1945-02-11 08:54:46', '1936-12-19 06:17:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Nellie', 'Littel', 'deckow.alberto@yahoo.com', '07221475688', '1929-12-12 21:27:37', '1966-03-14 03:21:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Eden', 'Kirlin', 'xkling@homenick.org', '(708)212-0741x25626', '1998-05-15 18:07:50', '2018-12-22 11:19:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Kayli', 'Leannon', 'daisha57@gmail.com', '908-793-4734x357', '1978-06-15 15:06:30', '1996-12-02 14:49:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Hailie', 'Swaniawski', 'boyer.ezekiel@yahoo.com', '688.821.0288', '1991-11-20 17:27:09', '1934-11-05 20:24:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Wilmer', 'Conroy', 'turner.tremaine@weissnatblock.com', '1-453-238-4070x66451', '1922-12-12 07:12:01', '1946-04-29 07:03:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Velma', 'Murray', 'macejkovic.reyna@hotmail.com', '271-519-8272x43625', '1955-12-31 13:08:04', '2001-09-18 20:26:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Savion', 'Rutherford', 'aconnelly@hotmail.com', '(247)770-1802x637', '1944-04-05 22:24:24', '1926-08-10 13:43:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Lilyan', 'Robel', 'hrunolfsson@hilllmccullough.info', '024.312.5969', '1987-04-28 10:48:11', '1958-10-17 00:44:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Amelia', 'Hand', 'sincere.will@hotmail.com', '687-081-3403', '2018-12-01 04:35:12', '1993-04-15 15:38:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Sydney', 'Leannon', 'junius.tremblay@mayertoy.com', '+64(4)4058103760', '1992-02-27 09:39:19', '2012-11-04 13:41:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Lacy', 'Nolan', 'd\'amore.jaunita@boganrussel.com', '373.475.5897x115', '1960-08-04 19:08:51', '1953-06-18 01:01:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Brice', 'Ondricka', 'cmarvin@hotmail.com', '+67(5)1529200756', '1968-08-08 03:17:54', '1947-10-26 02:24:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Ariane', 'Leuschke', 'lacey91@gmail.com', '+77(2)1425614697', '1947-10-18 05:32:24', '1931-05-28 05:51:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Jarret', 'Pfeffer', 'lubowitz.howard@yahoo.com', '021-721-1910', '1972-09-23 10:45:42', '1921-12-11 00:45:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Lempi', 'Metz', 'price.darron@gmail.com', '01122989159', '1953-10-10 19:59:17', '1987-05-03 17:58:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Laron', 'Zemlak', 'dixie.green@stark.com', '876-531-7390', '1941-12-24 10:35:10', '1931-01-22 05:44:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Myrtle', 'Stanton', 'rosetta61@hilpert.com', '375-208-4911x809', '1924-03-19 13:37:55', '1979-03-17 07:22:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Corine', 'Hartmann', 'amy.swaniawski@hotmail.com', '1-407-734-8459x34835', '1954-04-01 04:14:14', '1985-08-24 02:50:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Cesar', 'Goldner', 'marjorie68@gmail.com', '1-474-273-9555', '1967-05-23 13:20:24', '1939-06-14 06:29:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Elenor', 'Mosciski', 'manuela.altenwerth@schultz.org', '988-311-3699x1895', '1992-04-16 00:53:11', '1928-11-14 18:40:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Santos', 'Schaden', 'erica28@yahoo.com', '1-533-187-8796', '1991-05-01 01:21:43', '1991-06-14 01:37:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Vita', 'Pfannerstill', 'khackett@hotmail.com', '1-351-667-0951', '1998-05-16 06:01:08', '1946-12-12 01:18:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Alda', 'Steuber', 'vshields@okon.org', '810-343-9953x959', '2017-07-21 04:35:49', '2006-09-06 18:23:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Filomena', 'Hoeger', 'lindgren.ashlee@hilpertcrona.org', '(765)863-2454x66358', '2001-07-25 23:03:37', '1936-10-18 00:17:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Cathrine', 'Sipes', 'buck.dare@gmail.com', '854-325-7622', '1933-05-11 16:39:23', '1924-07-19 17:06:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Maye', 'Pfeffer', 'ayden18@will.net', '(921)383-3943x4122', '1984-06-27 09:52:10', '2018-02-11 06:42:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Sid', 'Huels', 'zieme.shanel@beahan.com', '08929431901', '1950-09-17 09:24:49', '1939-06-09 21:29:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Elinor', 'Stoltenberg', 'jessy.runolfsson@yost.com', '881.530.2603x47755', '1963-04-30 04:10:15', '1925-04-26 18:57:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Emerson', 'Batz', 'xhudson@kertzmann.com', '07578212186', '2009-06-15 22:31:28', '1937-12-23 08:27:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Candido', 'Macejkovic', 'dallin.stanton@prohaskanolan.org', '403.021.7934x5544', '1941-08-06 00:12:58', '1978-09-24 13:42:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Lou', 'Hand', 'doyle.rosendo@hotmail.com', '546.405.8640x1885', '1994-11-08 15:12:37', '1935-05-27 08:20:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Myah', 'Wolff', 'valerie.wunsch@okuneva.com', '122.891.7012x908', '1925-07-18 15:50:07', '1955-01-31 17:07:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Yesenia', 'Klocko', 'gdibbert@hotmail.com', '328.009.7527', '2010-12-12 04:50:44', '1941-03-06 03:42:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Kristin', 'Sawayn', 'jratke@gmail.com', '504.475.1877', '2005-01-09 03:06:11', '1929-04-15 12:51:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Brittany', 'Schimmel', 'mario69@walshstokes.com', '194.280.0541', '1993-06-14 00:54:45', '1974-10-17 05:55:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Sherman', 'Turner', 'sean.wunsch@hettinger.info', '1-735-206-6355', '1984-03-19 16:28:58', '1961-11-13 12:24:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Everardo', 'Wuckert', 'jordon26@hotmail.com', '171.426.1005x71140', '2001-09-14 07:27:10', '2004-07-25 21:12:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Patrick', 'Schulist', 'wilderman.leonel@hotmail.com', '816.898.7216', '2018-10-09 00:34:53', '2019-02-26 12:06:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Royal', 'Mitchell', 'vilma.mills@yahoo.com', '(091)269-1739x6457', '2008-02-23 20:04:19', '2000-12-29 10:37:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Jayce', 'Greenholt', 'njacobson@yahoo.com', '00927786728', '1972-07-08 04:22:54', '1978-09-23 22:54:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Imani', 'Kilback', 'gottlieb.triston@hotmail.com', '058.089.3376x9198', '1965-02-25 06:33:11', '1971-04-22 03:50:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Samantha', 'Brekke', 'greenholt.stephania@hotmail.com', '786-427-2825x3334', '1971-09-10 20:46:56', '1989-01-24 00:14:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Giuseppe', 'Weissnat', 'bshanahan@gmail.com', '1-364-614-2271x725', '1948-08-27 13:33:54', '1989-12-05 22:19:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Blake', 'Lemke', 'wanda.metz@wolff.com', '+91(4)2245622787', '1999-09-23 01:45:36', '1991-02-20 15:25:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Edwin', 'Ritchie', 'ondricka.angus@hotmail.com', '(686)277-9638x2030', '1925-11-13 02:40:21', '1950-06-08 04:18:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Carolina', 'Rippin', 'guillermo.cremin@hotmail.com', '+63(6)0798887421', '1930-08-20 01:14:27', '1973-03-26 15:40:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Braxton', 'Batz', 'royal92@gmail.com', '(788)404-7629x899', '1982-01-30 01:07:38', '1921-05-30 23:28:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Ladarius', 'Little', 'hharris@gmail.com', '+05(2)1826074345', '1964-05-28 10:41:17', '1981-08-06 14:27:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Daren', 'Corkery', 'stoltenberg.payton@hickle.biz', '697-894-8415', '1934-11-30 10:24:45', '1987-08-01 11:15:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Francisco', 'Murray', 'tbraun@maggio.net', '704.819.3080x13937', '1955-10-13 06:14:47', '1937-06-30 22:36:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Caitlyn', 'Deckow', 'damaris.williamson@gmail.com', '1-918-673-6438', '1946-10-22 09:20:48', '1958-02-27 17:36:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Kathleen', 'Wisoky', 'jack24@yahoo.com', '+50(2)2464504299', '1990-09-11 11:36:40', '1978-07-03 03:20:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Rollin', 'Lowe', 'marilyne.conroy@bode.com', '02136128142', '1974-02-26 16:31:33', '2004-11-07 16:26:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Emile', 'Schmidt', 'aurelie76@lubowitz.com', '110.560.9121', '1995-12-02 09:01:57', '1961-06-02 12:52:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Linnea', 'Schowalter', 'ahmad.medhurst@gmail.com', '205.430.1665x755', '1934-08-30 19:09:05', '2003-04-13 02:01:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Ashlee', 'Will', 'chet.ryan@hotmail.com', '1-643-241-1619', '1958-09-19 16:57:54', '2017-05-30 21:32:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Ottilie', 'Bogan', 'elena.breitenberg@gmail.com', '(664)775-5405', '1968-07-23 09:31:36', '1966-09-02 19:26:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Trenton', 'Yost', 'dahlia.hayes@erdman.info', '627-471-4359x628', '1924-04-30 22:31:52', '1936-01-05 16:20:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Vernice', 'Lebsack', 'mullrich@williamson.org', '+83(3)2462209319', '1955-05-20 06:32:59', '1922-08-02 02:14:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Jeanette', 'Swift', 'kunde.gillian@daugherty.com', '+39(4)6528036222', '2017-11-03 12:11:43', '1943-06-18 18:48:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Alessia', 'Kunde', 'general.deckow@hermiston.com', '426.796.1338x5301', '1955-08-07 23:26:55', '2009-06-09 18:36:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Carey', 'Gerlach', 'darron.jakubowski@bosco.net', '1-083-301-9629x631', '1937-12-20 07:17:27', '1927-12-18 03:27:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Tyrique', 'Murazik', 'edurgan@gmail.com', '(471)257-9583x6488', '1980-02-01 01:40:06', '1982-01-15 10:47:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Rowena', 'Douglas', 'mauer@wilkinson.net', '377-636-8450x92715', '1964-03-23 03:22:28', '2019-10-26 17:10:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Berenice', 'Blick', 'austin.nader@luettgen.biz', '(043)585-9656', '1927-10-25 02:05:35', '1984-09-13 21:00:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Wilburn', 'Jerde', 'ehyatt@gmail.com', '910.797.6727x1124', '1993-04-23 02:25:53', '1971-12-19 04:10:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Eliseo', 'Hermiston', 'bode.allie@deckowmccullough.com', '(902)332-3528x53456', '1977-11-12 02:58:33', '2008-02-08 07:51:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Joyce', 'Howell', 'london.parisian@gmail.com', '717.786.9352x214', '2020-01-14 17:19:17', '2006-02-22 02:14:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Chase', 'Zieme', 'joanie.koelpin@yahoo.com', '615.685.3453x5561', '1942-11-26 14:06:40', '2006-09-07 02:09:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Willard', 'Altenwerth', 'haley.dana@nolanbergstrom.com', '515-894-2494', '1979-04-28 10:22:30', '1979-12-04 14:39:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Anika', 'Stroman', 'ssporer@fisheryost.info', '(323)579-1697x782', '2013-06-08 05:33:50', '1946-02-24 23:04:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Aida', 'Lakin', 'akoch@mcdermottbotsford.com', '858-568-4449x14253', '1926-09-01 01:06:58', '2003-04-18 03:12:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Enrico', 'Dare', 'schmidt.pattie@hoeger.org', '07196967149', '2019-03-06 07:00:10', '1940-02-16 02:49:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Trinity', 'Spencer', 'pgerlach@glover.com', '273.624.1832', '1952-01-04 04:34:53', '1994-01-03 19:37:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Reanna', 'Klein', 'emcdermott@weimann.net', '267-380-8382', '1987-06-05 07:32:16', '1952-12-12 03:49:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Beulah', 'Gleason', 'vfisher@hotmail.com', '(655)206-2140x4309', '2014-07-21 12:02:25', '1965-11-28 15:08:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Emelia', 'Grant', 'hodkiewicz.donavon@strackeprohaska.com', '1-297-882-0993x3323', '1975-08-31 11:07:57', '1975-10-05 03:44:12');



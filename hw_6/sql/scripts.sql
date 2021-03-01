use vk;

-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT fm.gender FROM (
	SELECT (SELECT p.gender FROM profiles p WHERE likes.user_id = p.user_id) AS gender FROM likes
) AS fm
GROUP BY fm.gender
ORDER BY count(fm.gender) DESC
LIMIT 1;


-- Подсчитать общее количество лайков десяти самым молодым пользователям 
-- (сколько лайков получили 10 самых молодых пользователей).

SELECT user_likes.user_id, user_likes.user_age, sum(user_likes.likes_count) AS likes_all
FROM (
	SELECT p.user_id, 
		(SELECT count(*) FROM likes lk WHERE lk.user_id = p.user_id) AS likes_count, 
		floor(datediff(now(), p.birthday)/365) AS user_age
	FROM profiles AS p
) AS user_likes
GROUP by user_likes.user_id
ORDER BY user_likes.user_age 
LIMIT 10;


-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

SELECT u.id, 
	(SELECT count(*) FROM likes AS l WHERE l.user_id = u.id) + (SELECT count(*) FROM posts AS p WHERE p.user_id = u.id) AS actions_count
FROM users u
ORDER BY actions_count
LIMIT 10;



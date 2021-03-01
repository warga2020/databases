use vk;

-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT p.gender
FROM likes l
LEFT JOIN profiles p ON p.user_id = l.user_id
GROUP BY p.gender
ORDER BY count(p.gender) DESC
LIMIT 1;


-- Подсчитать общее количество лайков десяти самым молодым пользователям 
-- (сколько лайков получили 10 самых молодых пользователей).

SELECT prf.user_id, count(lk.target_id) 
FROM likes lk
LEFT JOIN profiles prf ON prf.user_id  = lk.target_id 					  -- возраст
WHERE lk.target_type_id = (SELECT id FROM target_types WHERE name = 'users') -- лайки на пользователях
GROUP BY lk.target_id 
ORDER BY prf.birthday 
LIMIT 10; 


-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
SELECT u.id 
FROM users u
LEFT JOIN likes lk ON lk.user_id = u.id
LEFT JOIN posts pst ON pst.user_id  = u.id
GROUP BY u.id
ORDER BY count(lk.id) + count(pst.id) 
LIMIT 10;



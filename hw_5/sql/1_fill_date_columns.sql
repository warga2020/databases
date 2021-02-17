USE vk;
DESC users_tmp;
SELECT * FROM users_tmp ut;

UPDATE users_tmp  SET created_at = NOW();
-- если на udpated_at установлено ON UPDATE, то поле будет установлено автоматически при изменении записи
-- если такого атрибута не предусмотрено выполняем аналогичный предыдущему запрос
-- если надо чтобы после установки начал работать авдто-апдейт, выполняем донастройку колонки

-- ALTER TABLE users_tmp CHANGE updated_at updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;
UPDATE users_tmp  SET updated_at = NOW();
ALTER TABLE users_tmp CHANGE updated_at updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;



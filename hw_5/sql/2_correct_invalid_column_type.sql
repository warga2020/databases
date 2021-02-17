USE vk;

DESC users_tmp;
SELECT * FROM users_tmp;

-- переименование существующих колонок
ALTER TABLE users_tmp RENAME COLUMN created_at TO created_at_tmp;
ALTER TABLE users_tmp RENAME COLUMN updated_at TO updated_at_tmp;

-- добавление новых колонок с правильным типом данных
ALTER TABLE users_tmp ADD COLUMN created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Дата создания";
-- здесь не устанавливаем аттрибуты автоматического изменения, чтобы при копировании значений не ломались значения дат.
ALTER TABLE users_tmp ADD COLUMN updated_at DATETIME;

SELECT * FROM users_tmp;

-- копируем с конвертацией из колонок с типом VARCHAR в колонку с типом DATETIME
UPDATE users_tmp SET created_at = TIMESTAMP(str_to_date(created_at_tmp, '%d.%m.%Y %H:%i'));
UPDATE users_tmp SET updated_at = TIMESTAMP(str_to_date(updated_at_tmp, '%d.%m.%Y %H:%i'));

-- донастроиваем колонку ПОСЛЕ копирования данных  
ALTER TABLE users_tmp CHANGE COLUMN updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Дата обновления";

-- удаляем изначальные (переименованные) колонки
ALTER TABLE users_tmp DROP COLUMN created_at_tmp;
ALTER TABLE users_tmp DROP COLUMN updated_at_tmp;

DESC users_tmp;

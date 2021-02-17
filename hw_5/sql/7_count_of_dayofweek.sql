-- создание изаполнение таблицы в предыдущем скрипте -> 6_users_avg_age.sql

SELECT 
	count(
		dayofweek(
			STR_TO_DATE(
				CONCAT(
					YEAR(now()), 
					lpad(MONTH(birthday), 2, '0'), 
					lpad(DAY(birthday),2,'0')
				), 
				'%Y%m%d')
		)
	) AS cnt,
	dayofweek(
		STR_TO_DATE(
			CONCAT(
				YEAR(now()), 
				lpad(MONTH(birthday), 2, '0'), 
				lpad(DAY(birthday),2,'0')
			), 
			'%Y%m%d'
		)
	) AS dow
FROM usrs
GROUP BY dow
ORDER BY dow;

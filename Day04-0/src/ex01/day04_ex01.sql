SELECT name FROM v_persons_female
UNION ALL
SELECT name FROM v_persons_male
ORDER BY name;

/* 
используйте 2 представления базы данных из упражнения №00
и напишите SQL, чтобы получить имена мужчин и женщин в одном списке.
 Пожалуйста, установите порядок по имени человека. 
 */
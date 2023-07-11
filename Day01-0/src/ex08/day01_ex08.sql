/* Перепишите SQL-запрос из упражнения #07, используя конструкцию NATURAL JOIN. Результат должен быть таким же, как в упражнении
 */
SELECT order_date,
	CONCAT(person.name, ' (Age:', person.age, ')') AS person_information
FROM person
NATURAL JOIN
				(SELECT order_date,
						person_id AS id
					FROM person_order) AS person_order
ORDER BY 1,
	2;

/*  таблицы должны иметь совпадающие, по имени, столбцы */
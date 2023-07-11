CREATE INDEX idx_menu_pizzeria_id ON menu (pizzeria_id);

CREATE INDEX idx_person_order_person_id ON person_order (person_id);

CREATE INDEX idx_person_order_menu_id ON person_order (menu_id);

CREATE INDEX idx_person_visits_person_id ON person_visits (person_id);

CREATE INDEX idx_person_visits_pizzeria_id ON person_visits (pizzeria_id);


/* Пожалуйста, 
создайте простой индекс BTree для каждого внешнего ключа в нашей базе данных. 
Шаблон имени должен удовлетворять следующему правилу 
“idx_{имя_таблицы}_{имя_столбца}”.
Например, индекс name BTree для столбца pizzeria_id в menuтаблице равен idx_menu_pizzeria_id.


загрузите скрипт с моделью базы данных здесь и примените скрипт к своей базе данных
 (вы можете использовать командную строку с psql или просто запустить его через любую среду IDE,
  например DataGrip от JetBrains или pgAdmin от сообщества PostgreSQL).
  Наш способ получения знаний является постепенным и линейным, поэтому, пожалуйста, имейте в виду, что все изменения, 
  которые вы внесли в День03 во время упражнений 07-13, должны быть на месте 
  (это похоже на реальный мир, когда мы применили релиз и должны соответствовать данным для новых изменений). */
-- ДЗ

-- 9. Отсортируйте данные о билетах в зависимости от цены по возрастанию. 
-- Если некоторые билеты имеют одинаковую цену, отсортируйте вхождения по trip_id по убыванию. 
-- Если и цена, и trip_id одинаковые, отсортируйте вхождения по номеру билета по возрастанию.
-- В выборке должны присутствовать три атрибута — id, trip_id, price.


SELECT 
	id,
    trip_id,
    price
FROM airport.tickets
order by price, trip_id desc, id;



-- 10. Менеджеры авиакомпании потребовали выяснить количество различных моделей самолетов. 
-- Выведите все доступные модели, исключая дубликаты.
-- В выборке должен присутствовать один атрибут — model_name.


SELECT 
	distinct model_name
FROM airport.airliners;



-- 11. Напишите запрос, который выведет id клиентов, чье значение атрибута name начинается на Daria.
-- В выборке должен присутствовать один атрибут — id.


SELECT 
	id
FROM airport.clients
where name like 'Daria%';

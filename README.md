# Маракин Э.Ю
# Домашнее задание к занятию «Индексы»
# Задание 1
```
SELECT 
    (SUM(pg_indexes_size(relid))::NUMERIC / SUM(pg_total_relation_size(relid)) * 100) AS index_to_table_size_ratio
FROM 
    pg_catalog.pg_statio_user_tables;

```

# Задание 2
```
Синтаксис FROM: Использование устаревшего синтаксиса с запятыми для соединений усложняет чтение и поддержку кода. Рекомендуется использовать явный JOIN
Функция DATE() в WHERE-условии может препятствовать использованию индексов
Отсутствие ограничений по film: В запросе не указано условие для соединения таблицы film.

Оптимизированный запрос:
SELECT DISTINCT 
    CONCAT(c.last_name, ' ', c.first_name) AS customer_name, 
    SUM(p.amount) OVER (PARTITION BY c.customer_id, f.title) AS total_amount
FROM 
    payment p
JOIN rental r ON p.payment_date = r.rental_date
JOIN customer c ON r.customer_id = c.customer_id
JOIN inventory i ON i.inventory_id = r.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE 
    p.payment_date >= '2005-07-30' AND p.payment_date < '2005-07-31';

```


